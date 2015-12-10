class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:show, :new, :create]

  # GET /appointments
  # GET /appointments.json
  def index
    @appointments = Appointment.all
    @barber = Barber.find params[:barber_id]
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
  end

  # GET /appointments/new
  def new
      @barber = Barber.find params[:barber_id]
      @appointment = @barber.appointments.new
      #@appointment.barber_id = @barber.barber_id
      #@appointment = Appointment.new
      #datetime.New
      #@available_times = []
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments
  # POST /appointments.json
  def create
      @barber = Barber.find params[:barber_id]
      @appointment = @barber.appointments.new(appointment_params)

      if @appointment.save
          redirect_to appointment_path(@appointment), notice: 'Appointment was successfully created.'
      else
          render :new
      end

  end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update

       if @appointment.update(appointment_params)
           redirect_to barber_appointments_url(@appointment.barber), notice: 'Appointment was successfully updated.'
       else
           render :edit
       end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
      @appointment.destroy
      redirect_to barber_appointments_url(@appointment.barber) , notice: 'Appointment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).permit(:appt_start, :barber_id, :client_name, :client_phone)
    end
end
