  class CatsController < ApplicationController

    before_action :find_cat, only: [:show, :edit, :update, :destroy]
    before_action :authorized, only: [:index, :show, :edit, :update, :destroy]
    before_action :cats_not_allowed_in_cats, only: [:index]
    before_action :cant_see_cats_profile, only: [:show]

  def index
    @cats = Cat.all
  end

  def show
    @comment = Comment.new
    @cats = Cat.all
    @dogs = Dog.all
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.create(cat_params)
    if @cat.valid?
      session[:cat_id] = @cat.id
      flash[:message] = "Finish creating your profile!"
      redirect_to edit_cat_path(@cat)
    else
      flash[:errors] = @cat.errors.full_messages
      redirect_to new_cat_path
    end
  end

  def edit
  end

  def update
    @cat.update(cat_params)
    redirect_to @cat
  end

  def destroy
    logout
    @cat.destroy
    redirect_to home_path
  end

  private

  def cat_params
    params.require(:cat).permit(:password, :username, :password_confirmation, :name, :age, :city, :breed, :bio, :temperament, :picture, :avatar)
  end

  def find_cat
    @cat = Cat.find(params[:id])
  end

end
