class ParticipationsController < ApplicationController
    def create
        event = Event.find(params[:event_id])
        event.participations.create! user: current_user
        redirect_to events_path
    end
    def destroy
        participation = Participation.find(params[:id])
        participation.destroy
        redirect_to (:back)
    end
end
