class SidebarController < ApplicationController
 # before_filter :authenticate_user!
  layout "admin"
	 before_filter :login_required
   #before_filter :sweep, :only => [:create, :update, :destroy]

  def edit
      @page_sidebar = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    #expire_fragment(:topmenu)
    #expire_fragment(:sitemap)
    if @page.update_attribute(:sidebar, params[:page][:sidebar])
      flash[:notice] = "Successfully updated sidebar."
      redirect_to :controller => 'pages', :action => 'edit'
    else
      render :action => 'edit'
    end
  end

end