class PetsController < ApplicationController
  def index
    @pets = Pet.all
    render :index
  end

  def show
    @pet = Pet.find_by(id: params[:id])
    render :show
  end

  def new
    @pet = Pet.new
    render :new
  end

  def create
    @pet = Pet.new(
      name: params[:pet][:name],
      breed: params[:pet][:breed],
      image: params[:pet][:image],
    )

    if @pet.save
      redirect to @pet
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @pet = Pet.find_by(id: params[:id])
    render :edit
  end

  def update
    @pet = Pet.find_by(id: params[:id])
    @pet.update(
      name: params[:pet][:name],
      breed: params[:pet][:breed],
      image: params[:pet][:image],
    )
    redirect to "/pets"
  end

  def destroy
    @pet = Pet.find_by(id: params[:id])
    @pet.destroy
    redirect to "/pets", status: :see_other
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :breed, :image)
  end
end
