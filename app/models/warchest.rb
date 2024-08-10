class Warchest < ApplicationRecord
  has_many :warchest_balances

  def balance_difference
    return 0 if warchest_balances.count < 2
    last_two_balances = warchest_balances.order(month: :desc).limit(2)
    last_two_balances.first.balance - last_two_balances.second.balance
  end
end
