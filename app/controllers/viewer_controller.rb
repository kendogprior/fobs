class ViewerController < ApplicationController    
	layout "protosidebar"

  def show 
		@page = Page.where("name = ?", params[:pagename]).first
		 @pagetitle = params[:pagename]    
		if @page.redirect
			redirect_to :action => @page.action_name
	  end
		
  end 

  def slideshow
  	  @pagetitle = "Slide show"
  end          
 	 
	def sitemap  
		 @pagetitle = "SIte map"
 	 	 @tree = Page.order(:pageorder).find(:all, :include => [ :children ])
 	end     

    def gallery
			#session[:last_page] = request.env['HTTP_REFERER'] 
			
	    @gallery = Gallery.find_by_page_id(params[:gallery_id])
        @pagetitle = @gallery.title
	  end       
	
	def contact_us 
		 
	end     
    


   
 

end
