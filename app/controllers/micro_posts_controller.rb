class MicroPostsController < ApplicationController
  before_action :find_user, only: [:new, :create]
  before_action :find_micro_post, only: [:show]

  def new
    @micro_post = @user.micro_posts.new
  end

  def create
    @micro_post = @user.micro_posts.new(micro_post_params)
    if @micro_post.save
      redirect_to user_micro_post_path(@user, @micro_post)
    else
      render :new
    end
  end

  def show
  end

  private

  def find_user
    @user = User.find_by(id: params[:user_id])
  end

  def find_micro_post
    @micro_post = MicroPost.find_by(id: params[:id])
  end

  def micro_post_params
    params.require(:micro_post).permit(:content)
  end
end