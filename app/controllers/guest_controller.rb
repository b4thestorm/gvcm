class GuestController < ApplicationController

  def create
    @guest = Guest.new(guest_params)
    if @guest.save
    flash[:notice] = "You've subscribed to the vibe!"
    GuestMailer.registration_confirmation(@guest).deliver
    redirect_to root_path
    else 
    flash[:notice] = "Oh no, try again"
    render :new
    end
  end

  private 
  
  def guest_params
  params.require(:guest).permit(:email)
  end 
end
