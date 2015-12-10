class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:show, :new]

  # GET /reviews/1
  # GET /reviews/1.json
  def show
  end

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @barber = Barber.find params[:barber_id]
    @review = @barber.reviews.new(review_params)

    if @review.save
        redirect_to barber_url(@barber) , notice: 'Review was successfully created.'
    else
        redirect_to barber_url(@barber) , alert: 'Review was not created successfully.'
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    if @review.update(review_params)
         redirect_to barber_url(@review.barber), notice: 'Review was successfully updated.'
     else
         render :edit
     end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    redirect_to barber_url(@review.barber) , notice: 'Review was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:barber_id, :client_name, :str, :rating)
    end
end
