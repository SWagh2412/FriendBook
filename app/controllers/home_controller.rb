class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = current_user.posts
    # @comments= current_user.posts.comments.where(comments.post_id==post.id)
  end
end
