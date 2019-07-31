class ApplicationController < ActionController::Base
    before_action :setup_auth_variables


    def setup_auth_variables
    if session[:dog_id]
        @dog_id = session[:dog_id]
        @logged_in = !!@dog_id
        if @logged_in
            @current_dog = Dog.find(@dog_id)
        end
    elsif session[:cat_id]
        @cat_id = session[:cat_id]
        @logged_in = !!@cat_id
        if @logged_in
            @current_cat = Cat.find(@cat_id)
        end
    end
    end

    def authorized
        if !@logged_in
            return redirect_to home_path
        end
    end

    def logout
        session[:cat_id] = nil
        session[:dog_id] = nil
    end

    def cats_not_allowed_in_cats
      if @current_cat
        redirect_to dogs_path
      end
    end

    def dogs_not_allowed_in_dogs
      if @current_dog
        redirect_to cats_path
      end
    end

    def cant_see_cats_profile
      unless @current_dog || @current_cat == @cat
        redirect_to @current_cat
      end
    end

    def cant_see_dogs_profile
      unless @current_cat || @current_dog == @dog
        redirect_to @current_dog
      end
    end

end
