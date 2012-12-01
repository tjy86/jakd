class GameController < ApplicationController

  before_filter :ident
  def index

  end


  def bet
    session[:deck] = nil
    @cards = Card.all.shuffle.shuffle.shuffle.shuffle.shuffle
    session[:deck] = @cards
    bet = params[:bet].to_f
    @bal = @user.balance - bet
    @user.update_attribute(:balance, @bal)
    @p_hand = []
    @d_hand = []
    @p_hand << @cards.pop << @cards.pop
    @d_hand << @cards.pop << @cards.pop

    @p_value = @p_hand.map{|x| x.value}.inject(:+)
    @d_value = @d_hand.map{|x| x.value}.inject(:+)


    # binding.pry
    # code for blackjack
  end

  def hit

    @p_hand << @cards.pop

  end

  private

    def ident
      @user = User.find(@authenticated_user)
    end

end