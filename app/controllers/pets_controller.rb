class PetsController < ApplicationController
  def main
    @pets = current_user.pets
    render 'main.html.erb'
  end
  
  def index
    @pets = Pet.all
    images = Image.all
    render "index.html.erb"
  end

  def new
    @breeds = Breed.all
    render "new.html.erb"
  end

  def create
    pet = Pet.new(
      name: params[:name],
      birthdate: params[:birthdate],
      gender: params[:gender],
      breed_id: params[:breed_id],
      image: params[:image]
      )
    pet.save
    redirect_to "/pets/#{params[:user_id]}"
  end

  def show
    @pet = Pet.find_by(id: params[:id])
    render 'show.html.erb'
  end
end