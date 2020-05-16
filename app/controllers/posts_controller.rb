class PostsController < ActionController::Base
    def index
        @posts = Post.all
    end

    def show 
        load_post
    end
    
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.save
        redirect_to @post
    end

    def edit
        load_post
    end
    
    def update
        load_post
        @post.update(post_params)
        redirect_to @post
    end
    
    def delete
        load_post
        @post.destroy
        redirect_to :main
    end

    private
    
    def post_params
        params.require(:post).permit(:title, :text, :category_id)
    end
    
    def load_post
        @post = Post.find(params[:id])
    end

end
