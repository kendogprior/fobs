class ViewerController < ApplicationController    
	layout "protosidebar"

  def show 
		@page = Page.where("name = ?", params[:pagename]).first   
		if @page.redirect
			redirect_to :action => @page.action_name
	  end
		
  end 

  def slideshow
  	
  end          
 	 
	def sitemap
 	 	 @tree = Page.order(:pageorder).find(:all, :include => [ :children ])
 	end     

    def gallery
			#session[:last_page] = request.env['HTTP_REFERER']
	    @gallery = Gallery.find_by_page_id(params[:gallery_id])
 
	  end       
	
	def contact_us
	end     
    


   
 

end
