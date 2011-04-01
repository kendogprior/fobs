class ContactsController < ApplicationController
  # GET /contacts
  # GET /contacts.xml   
    before_filter :login_required , :except => [:create, :new]            
  layout "protosidebar"

  def index
    @contacts = Contact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contacts }
    end
  end

  # GET /contacts/1
  # GET /contacts/1.xml
  def show
    @contact = Contact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contact }
    end
  end

  # GET /contacts/new
  # GET /contacts/new.xml
  def new
    @contact = Contact.new   
    @pagetitle = "Contact"  
    @ok = true
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /contacts/1/edit
  #def edit
  #  @contact = Contact.find(params[:id])
  #end

  # POST /contacts
  # POST /contacts.xml
  def create
    @contact = Contact.new(params[:contact])
     #@ok =  (params[:required] == params[:showword])     
    respond_to do |format|
      #if @ok && @contact.save   
      if @contact.save   
	        recipient = "brian.on.iow@gmail.com"  
		      UserMailer.forward_email(@contact,recipient).deliver
        format.html { redirect_to(root_path, :notice => 'Message sent') }        
      else
        format.html { render :action => "new" }
      end
    end
  end



  # DELETE /contacts/1
  # DELETE /contacts/1.xml
  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to(contacts_url) }
      format.xml  { head :ok }
    end
  end
end
