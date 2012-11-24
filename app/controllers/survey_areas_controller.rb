class SurveyAreasController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  # GET /survey_areas
  # GET /survey_areas.json
  def index
    @survey_areas = SurveyArea.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @survey_areas }
    end
  end

  # GET /survey_areas/1
  # GET /survey_areas/1.json
  def show
    @survey_area = SurveyArea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @survey_area }
    end
  end

  # GET /survey_areas/new
  # GET /survey_areas/new.json
  def new
    @survey_area = SurveyArea.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @survey_area }
    end
  end

  # GET /survey_areas/1/edit
  def edit
    @survey_area = SurveyArea.find(params[:id])
  end

  # POST /survey_areas
  # POST /survey_areas.json
  def create
    @survey_area = SurveyArea.new(params[:survey_area])

    respond_to do |format|
      if @survey_area.save
        format.html { redirect_to @survey_area, notice: 'Survey area was successfully created.' }
        format.json { render json: @survey_area, status: :created, location: @survey_area }
      else
        format.html { render action: "new" }
        format.json { render json: @survey_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /survey_areas/1
  # PUT /survey_areas/1.json
  def update
    @survey_area = SurveyArea.find(params[:id])

    respond_to do |format|
      if @survey_area.update_attributes(params[:survey_area])
        format.html { redirect_to @survey_area, notice: 'Survey area was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @survey_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_areas/1
  # DELETE /survey_areas/1.json
  def destroy
    @survey_area = SurveyArea.find(params[:id])
    @survey_area.destroy

    respond_to do |format|
      format.html { redirect_to survey_areas_url }
      format.json { head :no_content }
    end
  end
end
