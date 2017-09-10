class MessagesController < ApplicationController
  def index
    @messages = Message.includes(:pet).all.order(created_at: :desc)
    render "index.html.erb"
  end

  def create
    @message = Message.create(
      body: params[:body],
      pet_id: current_user.pet.id
      )
    redirect_to "/messages"
  end
end
