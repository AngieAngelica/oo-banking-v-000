class Transfer
  
  attr_accessor :account1, :account2, :amount, :sender
  
  def initialize( account1, account2, amount)
    @account1 = account1
    @account2 = account2
    @amount = amount
    @sender = sender
  end
end
