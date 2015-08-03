class ModelMailer < ActionMailer::Base
  default from: "postmaster@lapapaya.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_record_notification.subject
  #
  def new_record_notification(record)
    @record = record

    mail to: "metalmaster9206@gmail.com", subject: "Success! You did it."
  end
end
