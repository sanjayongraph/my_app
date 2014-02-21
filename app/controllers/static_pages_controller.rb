class StaticPagesController < ApplicationController
  
  def home
    @micropost = current_user.microposts.build if signed_in?

    logger.debug "111110"
    logger.debug @micropost
  end

  def help
  end

end
