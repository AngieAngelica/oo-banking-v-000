class Transfer
  
  attr_accessor :account1, :account2, :amount, :sender
  
  def initialize( sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
  end
end
