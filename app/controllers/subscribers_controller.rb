class SubscribersController < ApplicationController
  def index
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      redirect_to subscribers_path, notice: "Save successfully"
    else
      redirect_to subscribers_path, notice: "Failed to save"
    end
  end
  def show
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:name, :email, :source)
  end
end
