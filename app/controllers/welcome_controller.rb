class WelcomeController < ApplicationController
  def index
    @total_rev = Payout.where(txn: "Commission").sum(:amount)
    @highest_bet = Bet.order("amount desc")
    @high_rev = Payout.where(txn: 'Commission').order('amount desc')
  end
end
