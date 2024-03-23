class HomeController < ApplicationController
  def index
    greet = Greeting.order('RANDOM()').first
    render json: { content: greet.greetings }
  end
end
