class SubscribersController < ApplicationController

  def index
    before_filter :authenticate_user! 
    if current_user.try(:admin?)
      @subscribers = Subscriber.all
    else
      redirect_to root_path
    end
  end

  def new
    @subscriber = Subscriber.new
  end
  
  def create
    @subscriber = Subscriber.new(params[:subscriber])
    if @subscriber.save
      flash[:success] = "Thank you!"
      redirect_to root_path
    else    
      render 'new'
    end
  end
    
end


