class SuivisController < ApplicationController
    def create
        profil = Profil.find(params[:profil])
        if profil.pro && (profil.user != current_user)
            profil.suivis.create! user: current_user
        end
        redirect_to (:back)
    end
    def destroy
        suivi = Suivi.find(params[:id])
        suivi.destroy
        redirect_to (:back)
    end

end
