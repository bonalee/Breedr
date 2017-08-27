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
  end

  def show

  end
end