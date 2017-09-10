class Api::V1::MessagesController < ApplicationController
  def index
    @messages = Message.includes(:pet).all.order(created_at: :desc)
    render "index.json.jbuilder"
  end

  def show
    pet_id = params[:id]
    @pet = Pet.find_by(id: params[:pet_id])

    @message = Message.new(
      body: params[:body],
      pet: @message.pet_id,
      inverse_pet: @message.inverse_pet_id
      )
    @message.save

    ActionCable.server.broadcast 'activity_channel', {
      id: @message.id,
      pet: @message.pet_id,
      inverse_pet: @message.inverse_pet_id,
      body: @message.body
    }

    render "show.json.jbuilder"
  end

  def create
    @message = Message.new(
      body: params[:body],
      pet: @message.pet_id,
      inverse_pet: @message.inverse_pet_id
      )
    @message.save

    redirect_to "/messages"
  end
end
