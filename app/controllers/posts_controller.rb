class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    def new 
    end
    def create
        render plain: params[:post].inspect
    end
    def show
        @post = Post.find(params[:id]) 
       end
       def create
        #render plain: params[:post].inspect
        @post=Post.new(post_params) 
  
        @post.save 
        redirect_to @post 
    
       end
       private
       def post_params
        params.require(:post).permit(:name, :email, :comment)
       end
end
