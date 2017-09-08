class MatchesController < ApplicationController
  def index
    @pets = Pet.all
    @pets.each do |pet|
      @pet = pet.id
    end

    @outgoing_matches = []
    @incoming_matches = []
    current_user.pets.each do |current_user_pet|
      pet_outmatch = Match.find_by(pet_id: current_user_pet.id)
      @pet_info = Pet.find_by(id: params[:pet_id])
      if pet_outmatch != nil
        @outgoing_matches << pet_outmatch
      end
    end
    current_user.pets.each do |current_user_pet|
      pet_inmatch = Match.find_by(inverse_pet_id: current_user_pet.id)
      if pet_inmatch != nil
        @incoming_matches << pet_inmatch
      end
    end

    @confirmed_matches = []
    @outgoing_matches.each do |outgoing_match|
      if outgoing_match.matched_status == "Confirmed"
        @confirmed_matches << outgoing_match
      end
    end
    @incoming_matches.each do |incoming_match|
      if incoming_match.matched_status == "Confirmed"
        @confirmed_matches << incoming_match
      end
    end

    @current_user_petids = []
    current_user.pets.each do |current_user_pet|
      @current_user_petids << current_user_pet.id
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
