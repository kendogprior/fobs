class AdminController < ApplicationController  
	 layout "admin" 
	 before_filter :authenticate_user!  
  def index
  end

 


def contact_index
  @contacts = Contact.all

  respond_to do |format|
    format.html # index.html.erb
    format.xml  { render :xml => @contacts }
  end
end

# GET /contacts/1
# GET /contacts/1.xml
def contact_show
  @contact = Contact.find(params[:id])

  respond_to do |format|
    format.html # show.html.erb
    format.xml  { render :xml => @contact }
  end
end  

def contact_destroy
  @contact = Contact.find(params[:id])
  @contact.destroy

  respond_to do |format|
    format.html { redirect_to(contact_index_url) }
    format.xml  { head :ok }
  end
end

end
