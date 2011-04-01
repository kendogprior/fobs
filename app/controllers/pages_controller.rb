class PagesController < ApplicationController
  before_filter :login_required 

   before_filter :sweep, :only => [:create, :update, :destroy]    
  layout "admin"
  def index
    
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
   
    @page = Page.new
  end

  def create
    @page = Page.new(params[:page])
    if @page.save
      flash[:notice] = "Successfully created page."
      redirect_to @page
    else
      render :action => 'new'
    end
  end

  def edit
    #@tree = Page.order(:pageorder).find(:all, :include => [ :children ])
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
      flash[:notice] = "Successfully updated page."
      redirect_to @page
    else
      render :action => 'edit'
    end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    flash[:notice] = "Successfully destroyed page."
    redirect_to pages_url
  end     

	private
		def sweep
			expire_fragment(:topmenu)    
	    expire_fragment(:sitemap)
		end
end
