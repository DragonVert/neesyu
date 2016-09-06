class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy, :duplicate]

  # GET /events
  # GET /events.json
  def index
    if params[:user]
        @events = Event.where(user: params[:user]).order(debut: :asc)
    elsif params[:debut]
        @annee = params[:debut][0..3].to_i
        @mois = params[:debut][5..6].to_i
        @jour = params[:debut][8..9].to_i
        @debut = DateTime.new(@annee, @mois, @jour)
        @events = Event.all.order(debut: :asc)
        @events = @events.select{ |e| e.debut > @debut}
    else
        @today = DateTime.now.to_s
        @annee = @today[0..3].to_i
        @mois = @today[5..6].to_i
        @jour = @today[8..9].to_i
        @debut = DateTime.new(@annee, @mois, @jour)
        @events = Event.all.order(debut: :asc)
        @events = @events.select{ |e| e.debut > @debut}
    end
  end


  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    if !current_user
        flash[:alert] = "Vous devez vous connecter pour créer un événement"
        redirect_to new_user_session_path

    elsif (current_user.profil.nil?)
        flash[:alert] = "Vous devez vous créer un profil pour créer un événement"
        redirect_to new_profil_path
    else
        @event = Event.new
    end
  end

  # GET /events/1/edit
  def edit
  end

  # GET /events/1/duplicate
  def duplicate
    if !current_user
        flash[:alert] = "Pour dupliquer un événement vous devez vous connecter et avoir créé un profil"
        redirect_to new_user_session_path

    elsif (current_user.profil.nil?)
        flash[:alert] = "Vous devez créer un profil pour dupliquer un evenement"
        redirect_to new_profil_path
    else
        session[:duplicate] = true
        render :edit
    end
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @event.set_search
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: "L'événement a été créé." }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    if (session[:duplicate])
        session[:duplicate] = false
        @event = Event.new(event_params)
        @event.user = current_user
        @event.set_search

        respond_to do |format|
          if @event.save
            format.html { redirect_to @event, notice: "L'événement a été dupliqué" }
            format.json { render :show, status: :ok, location: @event }
          else
            format.html { render :edit }
            format.json { render json: @event.errors, status: :unprocessable_entity }
          end
        end

    elsif current_user == @event.user
        @event.set_search
        respond_to do |format|
          if @event.update(event_params)
            format.html { redirect_to @event, notice: "L'événement a été modifié." }
            format.json { render :show, status: :ok, location: @event }
          else
            format.html { render :edit }
            format.json { render json: @event.errors, status: :unprocessable_entity }
          end
        end
    else
        flash[:alert] = "Vous ne pouvez pas modifier l'événement"
        redirect_to root_path
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    if current_user == @event.user
        @event.destroy
        respond_to do |format|
          format.html { redirect_to events_url, notice: "L'événement a été détruit." }
          format.json { head :no_content }
        end
    else
        respond_to do |format|
          format.html { redirect_to events_url, notice: "vous ne pouvez pas supprimer cet evenement" }
          format.json { head :no_content }
        end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:titre, :description, :prix, :debut, :fin,
                        :lieu, :adresse, :cp, :ville, :pays, :reduit, :contact,
                        :transport, :photo, :site, :complement)
    end
end
