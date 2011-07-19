class ApplicationController < ActionController::Base
	
	include ControllerAuthentication 
  protect_from_forgery       
  helper :all  

layout "admin" 




end
