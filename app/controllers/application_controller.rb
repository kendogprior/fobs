class ApplicationController < ActionController::Base
	
	include ControllerAuthentication 
  protect_from_forgery       
  helper :all  

layout "admin" 


#def flag404
# render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
#end
#
end
