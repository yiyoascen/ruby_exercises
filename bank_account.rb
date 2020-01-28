# frozen_string_literal: true

class BankAccount
  def initialize(account_owner)
    @owner = account_owner
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end

class InteresBearingAccount < BankAccount
  def initialize(owner, rate)
    super(owner)
    @rate = rate
  end

  def deposit_interest
    @balance += @rate * @balance
  end
end
