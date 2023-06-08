class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)

        if @post.save
            flash[:alert] = "Post successfully created!"
            redirect_to root_path
        else
            flash.now[:error] = "There was an error with your submission"
            render :new, status: :unprocessable_entity
        end
    end

    private

    def post_params
        params.require(:post).permit(:title, :body)
    end
end
