class EventAttendingController < ApplicationController
  def new
    @event_attending = EventAttending.new
  end

  def create
    @event_attending = EventAttending.new
  end
end
