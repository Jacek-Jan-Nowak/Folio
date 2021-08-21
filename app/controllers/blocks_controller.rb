class BlocksController < ApplicationController
  before_action :set_user
  before_action :set_block, only: [:show, :edit, :update, :destroy]

  def index
    @blocks = Block.all
  end

  def show
    
  end

  def edit
    
  end

  def new
    @block = Block.new
  end

  def create
    @block = Block.new(block_params)
    @block.user = @user
    if @block.save
      redirect_to blocks_path
    else
      render :new
    end
  end

  def destroy
    @block.delete
    redirect_to blocks_path
  end

  private

  def block_params
    params.require(:roject).permit(:text_field, :project_id )
  end

  def set_user
    if user_signed_in?
      @user = current_user
    end
  end

  def set_block
    @block = Block.find(params[:id])
  end
end
