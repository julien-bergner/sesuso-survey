class SurveyDataSetsController < ApplicationController
  # GET /survey_data_sets
  # GET /survey_data_sets.json
  def index
    @survey_data_sets = SurveyDataSet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @survey_data_sets }
    end
  end

  # GET /survey_data_sets/1
  # GET /survey_data_sets/1.json
  def show
    @survey_data_set = SurveyDataSet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @survey_data_set }
    end
  end

  # GET /survey_data_sets/new
  # GET /survey_data_sets/new.json
  def new
    @survey_data_set = SurveyDataSet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @survey_data_set }
    end
  end

  # GET /survey_data_sets/1/edit
  def edit
    @survey_data_set = SurveyDataSet.find(params[:id])
  end

  # POST /survey_data_sets
  # POST /survey_data_sets.json
  def create
    @survey_data_set = SurveyDataSet.new(params[:survey_data_set])

    respond_to do |format|
      if @survey_data_set.save
        format.html { redirect_to @survey_data_set, notice: 'Survey data set was successfully created.' }
        format.json { render json: @survey_data_set, status: :created, location: @survey_data_set }
      else
        format.html { render action: "new" }
        format.json { render json: @survey_data_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /survey_data_sets/1
  # PUT /survey_data_sets/1.json
  def update
    @survey_data_set = SurveyDataSet.find(params[:id])

    respond_to do |format|
      if @survey_data_set.update_attributes(params[:survey_data_set])
        format.html { redirect_to @survey_data_set, notice: 'Survey data set was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @survey_data_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_data_sets/1
  # DELETE /survey_data_sets/1.json
  def destroy
    @survey_data_set = SurveyDataSet.find(params[:id])
    @survey_data_set.destroy

    respond_to do |format|
      format.html { redirect_to survey_data_sets_url }
      format.json { head :no_content }
    end
  end
end
