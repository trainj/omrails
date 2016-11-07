class FeedController < ApplicationController
  def show
      @tweets = Tweet.where(user: current_user.all_following)
  end
end
