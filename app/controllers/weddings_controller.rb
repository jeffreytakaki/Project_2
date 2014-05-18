class WeddingsController < ApplicationController
  def index
    @weddings = Wedding.all
  end

  def show
    @wedding = Wedding.find(params[:name])
  end

  def new
    @wedding = Wedding.new
  end

  def create
    Wedding.create(params.require(:wedding).permit(:name, :email, :phoneNum, :partyNum))
    redirect_to wedding_path
  end

  def edit
    @wedding = Wedding.find(params[:name])
  end

  def update
     Wedding.update(params.require(:wedding).permit(:name, :email, :phoneNum, :partyNum))
    redirect_to weddings_path
  end

  def weddingmessage
    @wedding = Wedding.find(params[:id])
  end

  def destroy
  end
end
