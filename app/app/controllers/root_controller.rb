class RootController < ApplicationController
  def index
    render json: { message: "Hello from Fargate!" }
  end
end
