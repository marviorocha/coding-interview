class TweetsController < ApplicationController
  def index
    cursor = params[:cursor]
    limit = params[:limit] || 10
    user_id = params[:user_id]

    tweets = Tweet.order(created_at: :desc)
    tweets = tweets.by_user(user_id) if user_id.present?
    tweets = tweets.where('created_at < ?', Time.at(cursor.to_i)) if cursor.present?

    render json: {
      tweets: tweets.limit(limit),
      next_cursor: tweets.last&.created_at.to_i
    }
  end
end
