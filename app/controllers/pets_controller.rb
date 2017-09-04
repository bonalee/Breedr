class PetsController < ApplicationController
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
    Pet.create(
      name: params[:name],
      birthdate: params[:birthdate],
      gender: params[:gender],
      breed_id: params[:breed_id],
      image: params[:image]
      )
    redirect_to "/pets"
  end

  def show
    @pet = Pet.find_by(id: params[:id])
    render 'show.html.erb'
  end
end