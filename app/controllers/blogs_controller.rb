class BlogsController < ApplicationController
    def new
        if params[:back]
            @blog = Blog.new(blog_params)
        else
            @blog = Blog.new
        end
    end

    def create
        if params[:back]
            render :new
        else
            Blog.create(blog_image: params[:blog][:blog_image], content: params[:blog][:content], 
            user_id: current_user.id)
            redirect_to blog_path
        end
    end

    def index
        @blogs = Blog.all
    end

    def update
        @blog = Blog.find(params[:id])
        if @blog.update(blog_params)
            redirect_to blogs_path, notice: "ブログを編集したで"
         else
            render :edit
        end
    end

    def edit
        @blog = Blog.find(params[:id])
    end

    def destroy
        @blog = Blog.find(params[:id])
        @blog.destroy
        redirect_to blogs_path, notice:"ブログをほかしたで"
    end

    def show
        @blog = Blog.find(params[:id]) 
        #@user = User.find(id:blog.user_id)
    end

    def confirm
        @blog = Blog.new(blog_params)
    end

    private
    def blog_params
      params.require(:blog).permit(:blog_image, :content, :image_cache, :user_id, :image)                         
    end
end
