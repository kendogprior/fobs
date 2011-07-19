class EmailcontactsController < ApplicationController
  # GET /emailcontacts
  # GET /emailcontacts.xml
  def index
    @emailcontacts = Emailcontact.all
     @pagetitle = "Contact us"
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @emailcontacts }
    end
  end

  # GET /emailcontacts/1
  # GET /emailcontacts/1.xml
  def show
    @emailcontact = Emailcontact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @emailcontact }
    end
  end

  # GET /emailcontacts/new
  # GET /emailcontacts/new.xml
  def new
    @emailcontact = Emailcontact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @emailcontact }
    end
  end

  # GET /emailcontacts/1/edit
  def edit
    @emailcontact = Emailcontact.find(params[:id])
  end

  # POST /emailcontacts
  # POST /emailcontacts.xml
  def create
    @emailcontact = Emailcontact.new(params[:emailcontact])

    respond_to do |format|
      if @emailcontact.save
        format.html { redirect_to(@emailcontact, :notice => 'Emailcontact was successfully created.') }
        format.xml  { render :xml => @emailcontact, :status => :created, :location => @emailcontact }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @emailcontact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /emailcontacts/1
  # PUT /emailcontacts/1.xml
  def update
    @emailcontact = Emailcontact.find(params[:id])

    respond_to do |format|
      if @emailcontact.update_attributes(params[:emailcontact])
        format.html { redirect_to(@emailcontact, :notice => 'Emailcontact was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @emailcontact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /emailcontacts/1
  # DELETE /emailcontacts/1.xml
  def destroy
    @emailcontact = Emailcontact.find(params[:id])
    @emailcontact.destroy

    respond_to do |format|
      format.html { redirect_to(emailcontacts_url) }
      format.xml  { head :ok }
    end
  end
end
