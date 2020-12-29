# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
	:address => "smtp.gmail.com",
	:port => 587,
	:authentication => :plain,
	:domain => ENV['GMAIL_USERNAME'],
	:user_name => ENV['GMAIL_USERNAME'],
    :password => ENV['GMAIL_PASSWORD'],
    :enable_starttls_auto => true
}