class TweetsController < ApplicationController
  # @route GET /tweets (tweets)
  # @route GET / (root)
  def index
    @tweet = Tweet.new
    @tweets = Tweet.order(created_at: :asc)
  end

  # @route POST /tweets (tweets)
  def create
    @tweet = Tweet.new(tweet_params)
    respond_to do |format|
      if @tweet.save
        format.turbo_stream
      else
        format.html do
          flash[:tweet_errors] = @tweet.errors.full_messages
          redirect_to root_path
        end
      end
    end
  end

  # @route DELETE /tweets/:id (tweet)
  def destroy; end

  private

  def tweet_params
    params.require(:tweet).permit(:body)
  end
end
