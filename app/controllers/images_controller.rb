class ImagesController < ApplicationController      
	
      layout "admin" 
  def index 
 
	   
	  	@gallery = Gallery.find(params[:gallery_id])
    @images = @gallery.images
	  @gallery_title = @gallery.title
  end
  
  def show         
	   	@gallery = Gallery.find(params[:gallery_id])
    @image = @gallery.images.find(params[:id])
		#@gallery_id = @image.gallery_id
  end
  
  def new 
	 	@gallery = Gallery.find(params[:gallery_id])
    @image = @gallery.images.new 
    @gallery
  end
  
  def create 
	 	@gallery = Gallery.find(params[:gallery_id])
    @image = @gallery.images.new(params[:image])
    if @image.save
      flash[:notice] = "Successfully created image."   
      
      redirect_to(gallery_images_url(@gallery.id, @image))
    else
      render :action => 'new'
    end
  end
  
  def edit
	 	@gallery = Gallery.find(params[:gallery_id])
    @image = Image.find(params[:id])
  end
  
  def update
	 	@gallery = Gallery.find(params[:gallery_id])
    @image = Image.find(params[:id])
    if @image.update_attributes(params[:image])
      flash[:notice] = "Successfully updated image."
      redirect_to(gallery_images_url(@gallery.id, @image))
    else
      render :action => 'edit'
    end
  end
  
  def destroy
	 	@gallery = Gallery.find(params[:gallery_id])
    @image = Image.find(params[:id])
    @image.destroy
    flash[:notice] = "Successfully destroyed image."
    redirect_to(gallery_images_url(@gallery.id))
  end     


end
