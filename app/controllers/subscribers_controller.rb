class SubscribersController < ApplicationController
  before_filter :authenticate_user! 
   
  def index
    if current_user.try(:admin?)
      @subscribers = Subscriber.all
    else
      redirect_to root_path
    end
  end

    
end


