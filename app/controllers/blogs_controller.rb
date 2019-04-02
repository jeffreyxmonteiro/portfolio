class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]


  def index
    @blogs = Blog.all
  end

  def show
    # @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
    redirect_to blog_path(@blog)
  end

  def edit
    # @blog = Blog.find(params[:id])
  end

  def update
    # @blog = Blog.find(params[:id])
    @blog.update(blog_params)
    redirect_to blog_path(@blog)
  end

  def destroy
    # @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path
  end


private

  def set_blog
    @blog = Blog.find(params[:id])
  end


  def blog_params
    params.require(:blog).permit(:title, :body)
  end

end
