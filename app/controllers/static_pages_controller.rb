class StaticPagesController < ApplicationController

    def home
        @dogs = Dog.all
        @cats = Cat.all
    end

    def register

    end

end
