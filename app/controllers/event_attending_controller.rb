class EventAttendingController < ApplicationController
  def new
    @event_attending = EventAttending.new
  end

  def create
    @event_attending = EventAttending.new
    @event_attending[:attendee_id] = current_user.id
    @event_attending[:attended_event_id] = params[:event_id]

    if @event_attending.save!
      redirect_to event_path(params[:event_id])
    else
      render :new, status: :unprocessable_entity
    end
  end
end
