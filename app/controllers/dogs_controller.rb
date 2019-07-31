class DogsController < ApplicationController
    before_action :find_dog, only: [:show, :edit, :update, :destroy]


        def index
            @dogs = Dog.all
        end

        def show
            @comment = Comment.new
            @cats = Cat.all
            @dogs = Dog.all
        end

        def new
            @dog = Dog.new
        end

        def create
            @dog = Dog.create(dog_params)
            if @dog.valid?
              session[:dog_id] = @dog.id
              redirect_to dogs_path
            else
              flash[:errors] = @dog.errors.full_messages
              redirect_to new_dog_path
            end
        end

        def edit

        end

        def update
            if @dog.update(dog_params)
                redirect_to @dog
            else
                flash[:errors] = @dog.errors.full_messages
                redirect_to edit_dog_path
            end
        end

        def destroy

            @dog.destroy
            redirect_to dogs_path
          end


        private

        def find_dog
            @dog = Dog.find(params[:id])
        end

        def dog_params
            params.require(:dog).permit(:username, :password, :password_confirmation, :name, :age, :city, :breed, :bio, :temperament, :picture, :avatar)
        end
end
