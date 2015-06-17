  
class ActionMailer < ActionMailer::Base
  def email_name
    mail :subject => "Mandrill rides the Rails!",
         :to      => "felipe@meetrico.com",
         :from    => "admin@lapapaya.org
  end
end