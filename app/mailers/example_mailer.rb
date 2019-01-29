class ExampleMailer < ApplicationMailer
  
  default from: "arun570arun@gmail.com"

  def sample_email(sender,receiver,subject, body)

  	@sender = sender
  	@receiver = receiver
  	@subject = "TwitterClone: " + subject 
  	@body = body
  	
    mail(to: @receiver.email, subject: @subject)
    
  end

end