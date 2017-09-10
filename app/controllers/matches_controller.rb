class MatchesController < ApplicationController
  def index
    @pets = Pet.all

    @pets.each do |pet|
      @pet = pet.id
    end


    @outgoing_matches = []
    @incoming_matches = []
    @current_user_petids = []
    # @pet_info = Pet.find_by(id: params[:pet_id])

    current_user.pets.each do |current_user_pet|
      pet_outmatches = Match.where(pet_id: current_user_pet.id)
      pet_outmatches.each do |pet_outmatch|
        @outgoing_matches << pet_outmatch
      end

      pet_inmatches = Match.where(inverse_pet_id: current_user_pet.id)
      pet_inmatches.each do |pet_inmatch|
        @incoming_matches << pet_inmatch
      end

      @current_user_petids << current_user_pet.id
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

    render "index.html.erb"
  end


  def create
    pet_match = Match.new(
      pet_id: params[:pet_id],
      inverse_pet_id: params[:inverse_pet_id],
      matched_status: "Pending"
      )
    pet_match.save

    redirect_to '/mypets'
  end


  def update
    match_id = params[:id]
    @incoming_match = Match.find_by(id: match_id)
    @incoming_match.matched_status = params[:matched_status]
    @incoming_match.save

    redirect_to "/matches"
  end


  def show
    @pet_match = Match.find_by(id: params[:id])

    render 'show.html.erb'
  end
end