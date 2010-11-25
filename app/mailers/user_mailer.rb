class UserMailer < ActionMailer::Base

  default :to => "brian@kendog.freeserve.co.uk"
  #default :to => "margaret@oprior47.fsnet.co.uk"

  def forward_email(from)
    @contact = from
    mail(:from => "#{from.name}<#{from.email}>", :subject=> "Contact Message" )  do |format|
      format.text
      format.html
    end





  end
end
