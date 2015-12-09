class BarbersController < ApplicationController
  before_action :set_barber, only: [:show, :edit, :update, :destroy]

  # GET /barbers
  # GET /barbers.json
  def index
    @barbers = Barber.all
  end

  # GET /barbers/1
  # GET /barbers/1.json
  def show
      # create an empty Review so we can allow the user to
      # fill it in on the show view
      @review = @barber.reviews.new
  end

  # GET /barbers/new
  def new
    @barber = Barber.new
  end

  # GET /barbers/1/edit
  def edit
  end

  # POST /barbers
  # POST /barbers.json
  def create
    @barber = Barber.new(barber_params)

    @barber.generate_filename
    @barber.user = current_user

    @uploaded_io = params[:barber][:uploaded_file]

    File.open(Rails.root.join('public', 'images', @barber.image_filename), 'wb') do |file|
        file.write(@uploaded_io.read)
    end

    if @barber.save
      redirect_to @barber, notice: 'Barber was successfully created.'
    else
      render :new
    end

  end

  # PATCH/PUT /barbers/1
  # PATCH/PUT /barbers/1.json
  def update
    respond_to do |format|
      if @barber.update(barber_params)
        format.html { redirect_to @barber, notice: 'Barber was successfully updated.' }
        format.json { render :show, status: :ok, location: @barber }
      else
        format.html { render :edit }
        format.json { render json: @barber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barbers/1
  # DELETE /barbers/1.json
  def destroy
    @barber.destroy
    respond_to do |format|
      format.html { redirect_to barbers_url, notice: 'Barber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barber
      @barber = Barber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barber_params
      params.require(:barber).permit(:user_id, :image_filename, :bio, :first_name, :last_name)
    end
end
