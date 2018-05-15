class HomeController < ApplicationController
  def index
    render json: { data: 'hello' }
  end
end
