class MessagesController < ApplicationController
  def index
    @messages = Message.includes(:pet).all.order(created_at: :desc)
    render "index.html.erb"
  end

  def create
    @message = Message.create(
      body: params[:body],
      )
    redirect_to "/messages"
  end

  def show
    @messages = Message.all
    render 'show.html.erb'
  end
end
