class ContactsController < ApplicationController
  layout "protosidebar"

  def new
    @contact = Contact.new
    @pagetitle = "Contact"
    @ok = true
    respond_to do |format|
      format.html # new.html.erb
    end
  end


  def create
    @contact = Contact.new(params[:contact])
    @pagetitle = "Contact"
    respond_to do |format|
      if @contact.save
        #recipient = "brian.on.iow@gmail.com"
        recipient = Emailcontact.first.emailaddress
        UserMailer.forward_email(@contact, recipient).deliver
        format.html { redirect_to(root_path, :notice => 'Message sent') }
      else
        format.html { render :action => "new" }
      end
    end
  end




end
