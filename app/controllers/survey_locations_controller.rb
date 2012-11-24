class SurveyLocationsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  # GET /survey_locations
  # GET /survey_locations.json
  def index
    @survey_locations = SurveyLocation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @survey_locations }
    end
  end

  # GET /survey_locations/1
  # GET /survey_locations/1.json
  def show
    @survey_location = SurveyLocation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @survey_location }
    end
  end

  # GET /survey_locations/new
  # GET /survey_locations/new.json
  def new
    @survey_location = SurveyLocation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @survey_location }
    end
  end

  # GET /survey_locations/1/edit
  def edit
    @survey_location = SurveyLocation.find(params[:id])
  end

  # POST /survey_locations
  # POST /survey_locations.json
  def create
    @survey_location = SurveyLocation.new(params[:survey_location])

    respond_to do |format|
      if @survey_location.save
        format.html { redirect_to @survey_location, notice: 'Survey location was successfully created.' }
        format.json { render json: @survey_location, status: :created, location: @survey_location }
      else
        format.html { render action: "new" }
        format.json { render json: @survey_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /survey_locations/1
  # PUT /survey_locations/1.json
  def update
    @survey_location = SurveyLocation.find(params[:id])

    respond_to do |format|
      if @survey_location.update_attributes(params[:survey_location])
        format.html { redirect_to @survey_location, notice: 'Survey location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @survey_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_locations/1
  # DELETE /survey_locations/1.json
  def destroy
    @survey_location = SurveyLocation.find(params[:id])
    @survey_location.destroy

    respond_to do |format|
      format.html { redirect_to survey_locations_url }
      format.json { head :no_content }
    end
  end
end
