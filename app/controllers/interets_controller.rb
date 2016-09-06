class InteretsController < ApplicationController
    def create
        event = Event.find(params[:event_id])
        event.interets.create! user: current_user
        redirect_to (:back)
    end
    def destroy
        interet = Interet.find(params[:id])
        interet.destroy
        redirect_to (:back)
    end

end
