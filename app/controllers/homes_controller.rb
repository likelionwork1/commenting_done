class HomesController < ApplicationController
  def index
    @users = Post.all
  end

  def new
    @user = Post.new
  end

  def create
    @user = Post.new
    # @user.name = params[:name]
    @user.name = params[:post][:name]
    # @user.email = params[:email]
    @user.email = params[:post][:email]
    # @user.password = params[:password]
    @user.password = params[:post][:password]
    @user.save
    
    redirect_to '/'
  end

  def show
    @user = Post.find(params[:id])
    @comment = Comment.new
  end

  def edit
    @user = Post.find(params[:id])
  end

  def update
    @user = Post.find(params[:id])
    # @user.name = params[:name]
    @user.name = params[:post][:name]
    # @user.email = params[:email]
    @user.email = params[:post][:email]
    # @user.password = params[:password]
    @user.password = params[:post][:password]
    @user.save
    
    redirect_to '/'
  end

  def destroy
    Post.find(params[:id]).destroy
    
    redirect_to '/'
  end
end
