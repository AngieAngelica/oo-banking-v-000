class Transfer
  
  attr_accessor :account1, :account2, :amount
  
  def initialize( account1, account2, amount)
    @account1 = account1
    @account2 = account2
    @amount = amount
  end
end
