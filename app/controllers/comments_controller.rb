class CommentsController < ApplicationController
    before_action :find_comment, only: [:show, :edit, :update, :destroy]

    def index
        @comments = Comment.all
    end

    def show
        @dog = Dog.find(@comment.dog_id)
        @cat = Cat.find(@comment.cat_id)
    end

    def new
        @comment = Comment.new
        @dogs = Dog.all
        @cats = Cat.all
    end

    def edit
        @dog = @comment.dog
        @cat = @comment.cat
    end

    def create
        @dogs = Dog.all
        @cats = Cat.all

        @comment = Comment.new(comment_params)
        if @comment.valid?
            if @current_dog
                @comment.save
                redirect_to cat_path(@comment.cat_id)
            end
            if @current_cat
                @comment.save
                redirect_to dog_path(@comment.dog_id)
            end
        else
            flash[:errors] = @comment.errors.full_messages
            redirect_to new_comment_path
        end
    end

    def update
        if @comment.update(comment_params)
            redirect_to comment_path(@comment)
        else 
            flash[:errors] = @comment.errors.full_messages
            redirect_to edit_comment_path(@comment)
        end
    end

    def destroy
        @comment.destroy
        if @current_dog
            redirect_to cat_path(@comment.cat)
        elsif @current_cat
            redirect_to dog_path(@comment.dog)
        end
    end


    private

    def comment_params
        params.require(:comment).permit(:dog_id, :cat_id, :content, :sender, :receiver)
    end

    def find_comment
        @comment = Comment.find(params[:id])
    end
end
