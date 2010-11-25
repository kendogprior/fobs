class PagesController < ApplicationController
  before_filter :authenticate_user!
  layout "admin"
  def index
    #  @pages = Page.order(:pageorder).all

    #@tree = Page.order(:pageorder).find(:all, :include => [ :children ])
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    #@tree = Page.order(:pageorder).find(:all, :include => [ :children ])
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
end
