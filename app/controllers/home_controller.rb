class HomeController < ApplicationController
  def index
  end
  
  def profile_update
    @users = User.find(params[:id])
    @users.profile_img = params[:profile_img]
    @users.save
    
    redirect_to '/'
  end
  
end
