class GameController < ApplicationController
  before_filter :ident
  def index

  end
  def bet
    bet = params[:bet].to_f
    @bal = @user.balance - bet
    @user.update_attribute(:balance, @bal)
    cards = Card.all.shuffle.shuffle.shuffle.shuffle.shuffle
    @p_hand = []
    @d_hand = []
    @p_hand << cards.pop << cards.pop
    @d_hand << cards.pop << cards.pop

    # @p_hand = p_hand.map{|x| x.value}.inject(:+)
    # @d_hand = d_hand.map{|x| x.value}.inject(:+)

  end
  private
  def ident
    @user = User.find(@authenticated_user)
  end
end