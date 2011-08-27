class ApplicationController < ActionController::Base
	
	include ControllerAuthentication 
  protect_from_forgery       
  helper :all  
  helper :layout
layout "admin" 




end
