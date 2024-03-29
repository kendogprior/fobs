class GalleriesController < ApplicationController  
	 layout "admin"  
	 before_filter :login_required   
	before_filter :sweep, :only => [:create, :update, :destroy]        
  def index
    @galleries = Gallery.all
  end
  
  def show
    @gallery = Gallery.find(params[:id])
    @images =  @gallery.images
  end

  def new
    @gallery = Gallery.new 
    @images = Image.all
  end
  
  def create
    @gallery = Gallery.new(params[:gallery]) 
    @gallery.images = Image.find(params[:image_ids]) if params[:image_ids]
    if @gallery.save
      flash[:notice] = "Successfully created gallery."
      redirect_to @gallery
    else
      render :action => 'new'
    end
  end
  
  def edit
    @gallery = Gallery.find(params[:id]) 
    @images = Image.all
  end
  
  def update
    @gallery = Gallery.find(params[:id])   
      @gallery.images = Image.find(params[:image_ids]) if params[:image_ids]
    @images = Image.all
    if @gallery.update_attributes(params[:gallery])
      flash[:notice] = "Successfully updated gallery."
      redirect_to @gallery
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
    flash[:notice] = "Successfully destroyed gallery."
    redirect_to galleries_url 
   end
		private
			def sweep
				expire_fragment(:topmenu)    
		    expire_fragment(:sitemap)
			end
end
