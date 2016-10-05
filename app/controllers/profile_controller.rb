class ProfileController < ApplicationController


  def index
  	@user = User.all
  end

  def create
	  @user = User.new
	end  	

end	
