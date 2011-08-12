class ErrorMailer < ActionMailer::Base

  def exception_email ex
    @ex = ex
    mail( :to => NotifyOnError.email_to, :from => NotifyOnError.email_from, :subject => 'An Exception Occurred'  )
  end
end
