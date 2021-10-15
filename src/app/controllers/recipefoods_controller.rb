class RecipefoodsController < ApplicationController
  
  before_action :set_user, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  
  def index
    @recipefoods = @user.recipefoods.all
  end
  
  def new
    @recipe = @user.recipes.find(params[:recipe_id])
    @myfood = @user.myfoods.find(params[:myfood_id])
    @recipefood = @user.recipefoods.new
  end
  
  def create
    @recipe = @user.recipes.find(params[:recipe_id])
    @myfood = @user.myfoods.find(params[:myfood_id])
    @recipefood = @user.recipefoods.new(recipe_id: params[:recipe_id], myfood_id: params[:myfood_id])
    if @recipefood.save!
      flash[:success] = "#{@myfood.food_name}の登録に成功しました。"
      redirect_to user_recipefoods_path(@user, recipe_id: @recipe, timezone_id: params[:timezone_id], start_date: params[:start_date], start_time: params[:start_time])
    else
      flash[:danger] = "登録に失敗しました。"
      redirect_to new_user_myfood_path(@user, myfood_id: @myfood, recipe_id: @recipe, timezone_id: params[:timezone_id], start_date: params[:start_date], start_time: params[:start_time])
    end
  end
  
end
