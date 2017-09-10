class PetsController < ApplicationController
  def user_index
    if current_user
      @pets = current_user.pets
      render 'main.html.erb'
    else
      redirect_to '/login'
    end
  end
  
  def index
    @pets = Pet.all
    @pet_id = params[:pet_id]

    render "index.html.erb"
  end

  def new
    @breeds = Breed.all
    render "new.html.erb"
  end

  def create
    @user_id = current_user.id
    @breeds = Breed.all

    pet = Pet.create(
      name: params[:name],
      user_id: params[:user_id],
      birthdate: params[:birthdate],
      gender: params[:gender],
      breed_id: params[:breed_id]
      )
    redirect_to "/pets/#{params[:user_id]}"
  end

  def show
    @pet = Pet.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def delete
    @pet = Pet.find_by(id: params[:id])
    @pet.destroy
    redirect_to "/mypets"
    flash[:success] = "Pet deleted!"
  end
end

