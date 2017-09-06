class MatchesController < ApplicationController
  def index
    @my_pets = []
    @outgoing_matches = []

    current_user.pets.each do |current_user_pet|
      @my_pets << current_user_pet
      pet_match = Match.find_by(pet_id: current_user_pet.id)
      @outgoing_matches << pet_match
    end
    render "index.html.erb"
  end

  def create
    pet_match = Match.new(
      pet_id: params[:pet_id],
      inverse_pet_id: params[:inverse_pet_id]
      )
    pet_match.save
    redirect_to '/mypets'
  end

  def show
    @pet_matches = Match.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
