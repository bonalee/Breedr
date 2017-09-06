class MatchesController < ApplicationController
  def index
    @pet_matches = Match.all
    @pets = Pet.all
    render "index.html.erb"
  end

  def create
    pet_match = Match.new(
      pet_id: params[:pet_id],
      inverse_pet_id: params[:inverse_pet_id],
      status: params[:status]
      )
    pet_match.save
    redirect_to '/mypets'
  end

  def show
    @pet_matches = Match.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
