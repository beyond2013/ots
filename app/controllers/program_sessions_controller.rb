class ProgramSessionsController < ApplicationController
  before_action :set_program_session, only: [:show, :edit, :update, :destroy]

  # GET /program_sessions
  # GET /program_sessions.json
  def index
    @program_sessions = ProgramSession.all
  end

  # GET /program_sessions/1
  # GET /program_sessions/1.json
  def show
  end

  # GET /program_sessions/new
  def new
    @program_session = ProgramSession.new
  end

  # GET /program_sessions/1/edit
  def edit
  end

  # POST /program_sessions
  # POST /program_sessions.json
  def create
    @program_session = ProgramSession.new(program_session_params)

    respond_to do |format|
      if @program_session.save
        format.html { redirect_to @program_session, notice: 'Program session was successfully created.' }
        format.json { render :show, status: :created, location: @program_session }
      else
        format.html { render :new }
        format.json { render json: @program_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_sessions/1
  # PATCH/PUT /program_sessions/1.json
  def update
    respond_to do |format|
      if @program_session.update(program_session_params)
        format.html { redirect_to @program_session, notice: 'Program session was successfully updated.' }
        format.json { render :show, status: :ok, location: @program_session }
      else
        format.html { render :edit }
        format.json { render json: @program_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_sessions/1
  # DELETE /program_sessions/1.json
  def destroy
    @program_session.destroy
    respond_to do |format|
      format.html { redirect_to program_sessions_url, notice: 'Program session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_session
      @program_session = ProgramSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_session_params
      params.require(:program_session).permit(:program_id, :session_id)
    end
end
