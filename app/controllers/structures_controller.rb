class StructuresController < ApplicationController
  before_action :set_user
  before_action :set_structure, only: [:show, :edit, :update, :destroy]

  def index
    @structures = Structure.all
  end

  def show
    
  end

  def edit
    
  end

  def new
    @structure = Structure.new
  end

  def create
    @structure = Structure.new(structure_params)
    @structure.user = @user
    if @structure.save
      redirect_to structures_path
    else
      render :new
    end
  end

  def destroy
    @structure.delete
    redirect_to structures_path
  end

  private

  def structure_params
    params.require(:roject).permit(:code, :block_id )
  end

  def set_user
    if user_signed_in?
      @user = current_user
    end
  end

  def set_structure
    @structure = Structure.find(params[:id])
  end
end
