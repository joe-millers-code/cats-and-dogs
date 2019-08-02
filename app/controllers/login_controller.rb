class LoginController < ApplicationController


    def new
    end

    def create
        if @cat = Cat.find_by(username: params[:username])
            if @cat && @cat.authenticate(params[:password])
                
                session[:cat_id] = @cat.id
                redirect_to dogs_path
            else
                flash["message"] = "wrong user name or password"
                redirect_to login_path
            end
        elsif @dog = Dog.find_by(username: params[:username])
            if @dog && @dog.authenticate(params[:password])
                
                session[:dog_id] = @dog.id
                redirect_to cats_path
            else
                flash["message"] = "Growl! Incorrect username or password!"
                redirect_to login_path
            end


        else
            flash[:message] = "User does not exist"
            # <%= link_to "Go back to login page", login_path %>
            redirect_to login_path
        end


    end

    def destroy
        logout
        redirect_to home_path
    end

end
