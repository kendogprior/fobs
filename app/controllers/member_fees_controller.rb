class MemberFeesController < ApplicationController
    before_filter :login_required
  layout "admin"

  def index
    @member_fees = MemberFee.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @member_fees }
    end
  end

  # GET /member_fees/1
  # GET /member_fees/1.xml
  def show
    @member_fee = MemberFee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @member_fee }
    end
  end

  # GET /member_fees/new
  # GET /member_fees/new.xml
  def new
    @member_fee = MemberFee.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @member_fee }
    end
  end

  # GET /member_fees/1/edit
  def edit
    @member_fee = MemberFee.find(params[:id])
  end

  # POST /member_fees
  # POST /member_fees.xml
  def create
    @member_fee = MemberFee.new(params[:member_fee])

    respond_to do |format|
      if @member_fee.save
        format.html { redirect_to(@member_fee, :notice => 'Member fee was successfully created.') }
        format.xml  { render :xml => @member_fee, :status => :created, :location => @member_fee }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @member_fee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /member_fees/1
  # PUT /member_fees/1.xml
  def update
    @member_fee = MemberFee.find(params[:id])

    respond_to do |format|
      if @member_fee.update_attributes(params[:member_fee])
        format.html { redirect_to(@member_fee, :notice => 'Member fee was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @member_fee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /member_fees/1
  # DELETE /member_fees/1.xml
  def destroy
    @member_fee = MemberFee.find(params[:id])
    @member_fee.destroy

    respond_to do |format|
      format.html { redirect_to(member_fees_url) }
      format.xml  { head :ok }
    end
  end
end
