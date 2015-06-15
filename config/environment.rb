# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Lapapayanetwork::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           =>  80,
  :authentication => :plain,
  :user_name      => ENV['app23950605@heroku.com'],
  :password       => ENV['udft7znt2980'],
  :domain         => 'heroku.com',
  :enable_starttls_auto => true
}