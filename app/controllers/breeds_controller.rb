class BreedsController < ApplicationController
  def index
    # @breeds = Pet.where(breed_id: 2)
    if current_user
      @breeds = Breed.all
      render "index.html.erb"
    else
      redirect_to '/login'
    end
  end

  def show
    breed_id = params[:id]
    @breed = Breed.find_by(id: breed_id)
    render "show.html.erb"
  end
end
