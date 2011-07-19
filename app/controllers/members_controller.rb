class MembersController < ApplicationController

  layout "protosidebar"

  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    @pagetitle = "Join society"
    @member = Member.new(:country => 'GB')
     Carmen.default_country= 'GB'
    @countries = Carmen.countries

  end

  def create
    @member = Member.new(params[:member])
    @member.country=Carmen.country_name(params[:member][:country])
    @member.amountpaid = membership_fee(params[:membertype])
    if @member.save
      if logged_in?
        redirect_to @member, :notice => "Successfully created member."
      else
        redirect_to  :action => 'confirm_membership', :id => @member.id
      end
    else
      @countries = Carmen.countries
      render :action => 'new'
    end
  end

  def edit
     @pagetitle = "Edit details"
    @countries = Carmen.countries
    @member = Member.find(params[:id])
    @member.country = Carmen.country_code(@member.country)
  end

  def update
    @member = Member.find(params[:id])
    params[:member][:country] = Carmen.country_name(params[:member][:country])
    @member.amountpaid = membership_fee(params[:member][:membertype])
    if @member.update_attributes(params[:member])
       if logged_in?
        redirect_to @member, :notice  => "Successfully updated member."
       else
         redirect_to  :action => 'confirm_membership', :id => @member.id
       end
    else
      render :action => 'edit'
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to members_url, :notice => "Successfully destroyed member."
  end

  def confirm_membership
    @pagetitle = "Membership payment"
      @member = Member.find(params[:id])  
		    
  end


  private
   def membership_fee(memtype)
     fees = {:Individual => "5.00", :Family => "10.00", :Corporate => "50.00"}
      if memtype
        fee = fees[memtype.to_s.to_sym]
      else
        fee = ""
      end
     fee

   end
end
