# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Lapapayanetwork::Application.initialize!

ActionMailer::Base.smtp_settings = {
    :port =>           '587',
    :address =>        'smtp.mandrillapp.com',
    :user_name =>      "app23950605@heroku.com",
    :password =>       "MhLw2wx-VMiLNqZO-0l3Iw",
    :domain =>         'lapapaya.org',
    :authentication => :plain
}
ActionMailer::Base.delivery_method = :smtp
