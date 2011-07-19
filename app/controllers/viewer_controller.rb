class ViewerController < ApplicationController
  layout "protosidebar"

  def show
    if @page = Page.where("name = ?", params[:pagename]).first
      #@galleries = Gallery.pagenumber(@page.id)
      @galleries = @page.galleries
      @pagetitle = params[:pagename]
      if @page.redirect
        redirect_to :action => @page.action_name
      end
    #else
     # render :file => "#{RAILS_ROOT}/public/404.html", :layout => false, :status => 404
    end
  end

  def slideshow
    @pagetitle = "Slide show"
  end

  def sitemap
    @pagetitle = "Site map"
    @tree = Page.order(:pageorder).all(:include=>[:children])
  end

  def gallery

    session[:last_page] = request.env['HTTP_REFERER']
    @gallery = Gallery.find(params[:gallery_id])
    @pagetitle = @gallery.title
  end

  #def contact_us
  #  @pagetitle = "Contact Us"
  #end

  #def membership_form
  #   @pagetitle = "New members form"
  #end

  #def newmember
  #  @pagetitle = "Joining the  Society"
  #end


end
