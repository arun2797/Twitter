# Preview all emails at http://localhost:3000/rails/mailers/example_mailer
class ExampleMailerPreview < ActionMailer::Preview

  def sample_mail_preview
    ExampleMailer.sample_email(User.first, User.first , "Hi" , "This is preview Sample")
  end

end
