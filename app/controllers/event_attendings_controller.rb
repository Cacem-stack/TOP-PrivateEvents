class EventAttendingsController < ApplicationController
  def new
    @event_attending = EventAttending.new
    @event = Event.find(params[:event_id]) if params[:event_id]
  end

  def create
    #user = User.find(params[:attendee_id]) if params[:attendee_id]
    #user ||= current_user
    event_id = params[:event_attending][:event_id]
    user_id = params[:event_attending][:attendee_id]
    @event_attending = EventAttending.new
    @event_attending[:attendee_id] = user_id
    @event_attending[:attended_event_id] = event_id

    if @event_attending.save!
      redirect_to event_path(event_id)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
