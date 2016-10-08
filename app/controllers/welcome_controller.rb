class WelcomeController < ApplicationController
  def index
    @events = Event.all
    # @events = Event.where('start_time > ?', Time.zone.now).order(:start_time)
  end
end
