class SessionsController < ApplicationController
   def new
   end

   def create
     user = User.find_by(email: params[:session][:email].downcase)
     if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to root_url

    # Sign the user in and redirect to the user's show page.
     else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
     end
    end
  
   def destroy
    logger.debug "11111111111"
    sign_out
    logger.debug "22222222"
    redirect_to root_url
    logger.debug "33333333"
   end
end
