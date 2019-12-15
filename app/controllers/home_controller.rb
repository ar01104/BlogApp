class HomeController < ApplicationController
  def homepage
    @profiles = Profile.user_profile(current_user)
    @posts = Post.user_posts(current_user)
  end

  def contact
  end

  def request_contact
    email = params[:email]
    name = params[:name]
    subject = params[:subject]
    enquieries = params[:enquieries]

  if email.blank?
    flash[:alert] = "You must supply an email address!!"
  else
    ContactMailer.contact_email(email, name , subject, enquieries).deliver_now
    flash[:notice] = "Thank you. We will get back to you shortly"
  end

  redirect_to contact_path
  end
end
