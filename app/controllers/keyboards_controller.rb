class KeyboardsController < ApplicationController
  before_action :set_keyboard, only: [:show, :edit, :update, :destroy]

  def index
    @keyboards = Keyboard.all
  end

  def show
  end

  def new
    @keyboard = Keyboard.new
  end

  def edit
  end

  def create
    @keyboard = Keyboard.new(keyboard_params)

    if @keyboard.save
      redirect_to @keyboard, notice: 'Keyboard was successfully created.'
    else
      render :new
    end
  end

  def update
    if @keyboard.update(keyboard_params)
      redirect_to @keyboard, notice: 'Keyboard was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @keyboard.destroy
    redirect_to keyboards_url, notice: 'Keyboard was successfully destroyed.'
  end


  private
    def set_keyboard
      @keyboard = Keyboard.find(params[:id])
    end

    def keyboard_params
      params.require(:keyboard).permit(:name, :description, :type, :image_url, :user_id, :community_uploaded)
    end
end
