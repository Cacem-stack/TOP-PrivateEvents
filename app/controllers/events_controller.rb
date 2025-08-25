class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.created_events.build(
      name: params[:event][:name],
      date: params[:event][:date],
      creator_id: current_user.id
    )

    if @event.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy!

    redirect_to root_path
  end

  private

  def event_params
    params.expect(event: [:name, :date, :creator_id])
  end
end
