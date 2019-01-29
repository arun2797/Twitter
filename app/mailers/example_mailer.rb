class ExampleMailer < ApplicationMailer
  
  default from: "arun570arun@gmail.com"

  def sample_email(sender,receiver,subject, body)

  	@sender = sender
  	@receiver = receiver
  	@subject = subject
  	@body = body
  	
    mail(from: @sender.email , to: @receiver.email, subject: @subject)
    
  end

end