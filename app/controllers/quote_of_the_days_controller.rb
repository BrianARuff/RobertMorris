class QuoteOfTheDaysController < ApplicationController
  before_action :set_quote_of_the_day, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /quote_of_the_days
  # GET /quote_of_the_days.json
  def index
    @quote_of_the_days = QuoteOfTheDay.all
  end

  # GET /quote_of_the_days/1
  # GET /quote_of_the_days/1.json
  def show
  end

  # GET /quote_of_the_days/new
  def new
    @quote_of_the_day = QuoteOfTheDay.new
  end

  # GET /quote_of_the_days/1/edit
  def edit
  end

  # POST /quote_of_the_days
  # POST /quote_of_the_days.json
  def create
    @quote_of_the_day = QuoteOfTheDay.new(quote_of_the_day_params)

    respond_to do |format|
      if @quote_of_the_day.save
        format.html { redirect_to @quote_of_the_day, notice: 'Quote of the day was successfully created.' }
        format.json { render :show, status: :created, location: @quote_of_the_day }
      else
        format.html { render :new }
        format.json { render json: @quote_of_the_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quote_of_the_days/1
  # PATCH/PUT /quote_of_the_days/1.json
  def update
    respond_to do |format|
      if @quote_of_the_day.update(quote_of_the_day_params)
        format.html { redirect_to @quote_of_the_day, notice: 'Quote of the day was successfully updated.' }
        format.json { render :show, status: :ok, location: @quote_of_the_day }
      else
        format.html { render :edit }
        format.json { render json: @quote_of_the_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quote_of_the_days/1
  # DELETE /quote_of_the_days/1.json
  def destroy
    @quote_of_the_day.destroy
    respond_to do |format|
      format.html { redirect_to quote_of_the_days_url, notice: 'Quote of the day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote_of_the_day
      @quote_of_the_day = QuoteOfTheDay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_of_the_day_params
      params.require(:quote_of_the_day).permit(:quote, :narration, :author, :message, :posted_by)
    end
end
