class TweetsController < ApplicationController

  before_action :move_to_index, except: :index

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
    pramas.premit( :image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
