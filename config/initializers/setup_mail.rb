ActionMailer::Base.smtp_settings = {
  :address  => "smtp.gmail.com",
  :port  => 587, 
  :domain => 'gmail.com',
  :user_name  => "brian.on.iow@gmail.com",
  :password  => "kendog1941",
  :authentication  => :plain
}