class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    sender.valid? && receiver.valid? # def valid? is using the methods of the BankAccount class
  end
  
  def execute_transaction
    sender.balance -= amount
    receiver.balance += amount
    self.status = "Complete"
end
