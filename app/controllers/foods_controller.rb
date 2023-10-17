class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def new
    @user = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @user.save
      redirect_to @food, notice: 'Food was successfully created.'
    else
      render :new
    end
  end

  def update
    @food.update(food_params)
    redirect_to @food, notice: 'Food was successfully updated.'
  end

  def destroy
    @food.find(params[:id]).destroy
    redirect_to foods_url, notice: 'Food was successfully destroyed.'
  end

  private

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price, :quantity)
  end
end
