class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all.order("id DESC").page(params[:page]).per(5)
  end

  def new

  end

  def create
    Tweet.create(tweet_params)
  end

  private
  def tweet_params
    pramas.premit(:name, :image, :text)
  end
end
