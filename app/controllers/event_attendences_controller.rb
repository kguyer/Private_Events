class EventAttendencesController < ApplicationController
    before_action :authenticate_user!
  
    def create
      event_id = event_attendence_params[:attended_event_id]
  
      attendence = EventAttendence.find_by(event_attendence_params)
      if attendence
        redirect_to event_path(event_id) and return
      end
      redirect_to root_path unless event_attendence_params[:event_attendee_id].to_i == current_user.id
  
      @event_attendence = current_user.event_attendences.build(event_attendence_params)
      @event_attendence.save
  
      redirect_to event_path(event_id)
    end
  
    def destroy
      event_id = event_attendence_params[:attended_event_id]
      event_attendence = EventAttendence.find_by(event_attendence_params)
      redirect_to root_path and return unless event_attendence_params[:event_attendee_id].to_i == current_user.id
  
      event_attendence.destroy
      redirect_to event_path(event_id)
    end
  
    private
  
    def event_attendence_params
      params.require(:event_attendence).permit(:attended_event_id, :event_attendee_id)
    end
  end