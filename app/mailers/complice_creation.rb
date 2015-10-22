class CompliceCreation < ActionMailer::Base
     default from: "admin@lapapaya.org"
     layout "mailer"
   def complice_email(user, complice)
    #@complice = complice
    @name_user=User.find(user).name
    @lastname_user=User.find(user).lastname
    @dream_number = Complice.find(complice).dream_id

    mail(to: "#{user.name} <#{user.email}>", subject: "¡Has apoyado un sueño!")
   end
 end
