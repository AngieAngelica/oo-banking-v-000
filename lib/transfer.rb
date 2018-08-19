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
    unless status == "complete" # to make sure the transaction executes only one time
    sender.balance -= amount
    receiver.balance += amount
    self.status = "complete"
    if sender.valid? == false
      "Transaction rejected. Please check your account balance."
    end 
  end
end
