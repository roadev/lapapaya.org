# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Lapapayanetwork::Application.initialize!

ActionMailer::Base.smtp_settings = {
    :port =>           '587',
    :address =>        'smtp.mandrillapp.com',
    :user_name =>      ENV['app23950605@heroku.com'],
    :password =>       ENV['MhLw2wx-VMiLNqZO-0l3Iw'],
    :domain =>         'heroku.com',
    :authentication => :plain
}
ActionMailer::Base.delivery_method = :smtp