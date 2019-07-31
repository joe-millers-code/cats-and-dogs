class LoginController < ApplicationController
  

    def new

    end

    def create 
        if 
            @cat = Cat.find_by(username: params[:username])
            if @cat && @cat.authenticate(params[:password])
                flash["message"] = "Meow! Successfully logged in, #{@cat.name}! Check out these dogs!"
                session[:cat_id] = @cat.id 
                redirect_to dogs_path
            else 
                flash["message"] = "Hiss! Incorrect username or password!"
                redirect_to login_path
            end
        elsif 
            @dog = Dog.find_by(username: params[:username])
            if @dog && @dog.authenticate(params[:password])
                flash["message"] = "Woof! Successfully logged in, #{@dog.name}! Check out these cats!"
                session[:dog_id] = @dog.id 
                redirect_to cats_path
            else 
                flash["message"] = "Growl! Incorrect username or password!"
                redirect_to login_path
            end
        end

    end

    def destroy
        logout
        redirect_to home_path
    end

end
