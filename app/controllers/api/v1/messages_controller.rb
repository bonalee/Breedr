class Api::V1::MessagesController < ApplicationController
  def index
    @messages = Message.includes(:pet).all.order(created_at: :asc)
    if params[:match_id]
      @messages = @messages.where(match_id: params[:match_id])
    end
    render "index.json.jbuilder"
  end

  def create
    @message = Message.new(
      body: params[:body],
      pet_id: params[:pet_id],
      inverse_pet_id: params[:inverse_pet_id],
      match_id: params[:match_id]
      )
    @message.save

    render "show.json.jbuilder"
  end
  
  def show
    @message = Message.where(match_id: params[:match_id])

    @message = Message.new(
      body: params[:body],
      pet_id: params[:pet_id],
      inverse_pet_id: params[:inverse_pet_id],
      match_id: params[:match_id]
      )
    @message.save

    ActionCable.server.broadcast 'activity_channel', {
      id: @message.id,
      pet_id: @message.pet_id,
      inverse_pet_id: @message.inverse_pet_id,
      match_id: @message.match_id,
      body: @message.body
    }

    render "show.json.jbuilder"
  end
end