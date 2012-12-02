class CardController < ApplicationController

  before_filter :ident


  def index

  end


  def bet
    $cards = Card.all.shuffle.shuffle.shuffle.shuffle.shuffle
    bet = params[:bet].to_f
    @bal = @user.balance - bet
    @user.update_attribute(:balance, @bal)
    $p_hand = []
    $d_hand = []

    $p_hand << $cards.pop << $cards.pop
    $d_hand << $cards.pop << $cards.pop

    $p_value = sum_cards($p_hand)
    $d_value = sum_cards($d_hand)

    check($p_value)
  end

  def hit
    $p_hand << $cards.pop
    $p_value = sum_cards($p_hand)
    check($p_value)
  end

  //start
  def dealer_hit

  end
  def stay
    check($p_value)
    while $d_value < 17
      $d_hand << $cards.pop
      redirect_to dealer_hit
    end

    //end
    if $p_value > $d_value
      redirect_to win_path
    else
      redirect_to bust_path
    end
  end
  def win
  end
  def bust
  end

  private

    def ident
      @user = User.find(@authenticated_user)
    end
    def sum_cards(y)
      y.map{|x| x.value}.inject(:+)
    end

    def check(x)
      if x == 21
        redirect_to win_path
      elsif x > 21
        ace = $p_hand.map{|y| y.value}
        if ace.include?(11)
          $p_hand.each do |y|
            if x.face == 'A'
              x.value = 1
              $p_value = sum_cards($p_hand)
            end
          end
        else
          redirect_to bust_path
        end
      end
    end
end