class UserMailer < ActionMailer::Base

  default :to => "brian@kendog.freeserve.co.uk"
  #default :to => "loisprior@onwight.net"

  def forward_email(from, to)
    @contact = from 
    @to = to
    mail(:to => to, :from => "#{from.name}<#{from.email}>", :subject=> "Contact Message" )  do |format|
      format.text
      format.html
    end

  end
end
