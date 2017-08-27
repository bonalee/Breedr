class PetsController < ApplicationController
  def index
    @pets = Pet.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create

  end

  def show

  end
end