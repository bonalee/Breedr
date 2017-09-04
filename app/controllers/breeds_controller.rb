class BreedsController < ApplicationController
  def main
    @pets = current_user.pets
    render 'main.html.erb'
  end

  def index
    # @breeds = Pet.where(breed_id: 2)
    @breeds = Breed.all
    render "index.html.erb"
  end

  def show
    breed_id = params[:id]
    @breed = Breed.find_by(id: breed_id)
    render "show.html.erb"
  end
end
