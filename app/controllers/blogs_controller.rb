class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy, :toggle_status]
  layout "blog"
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

  def index
    @blogs = Blog.all
    @page_title = "My Portfolio Blog"
  end

  def show
    # @blog = Blog.find(params[:id])
    @page_title = @blog.title
    @seo_keywords = @blog.body
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

  def toggle_status
    if @blog.draft?
      @blog.published!
    elsif @blog.published?
      @blog.draft!
    end
    redirect_to blogs_url, notice: "Post status updated!"
  end


private

  def set_blog
    @blog = Blog.friendly.find(params[:id])
  end


  def blog_params
    params.require(:blog).permit(:title, :body)
  end

end
