class Api::V1::GreetingsController < ApplicationController
  def index
    @random_greeting = Greeting.order('RANDOM()').first
    render json: { greeting: @random_greeting&.greeting }
  end
end
