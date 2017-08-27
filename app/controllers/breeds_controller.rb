class BreedsController < ApplicationController
  def index
    # @breeds = Pet.where(breed_id: 2)
    @breeds = Pet.where(breed_id: breed_id)
    render "index.html.erb"
  end

  def show
    render ""
  end
end
