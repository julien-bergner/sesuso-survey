class SurveyValueSetsController < ApplicationController
  # GET /survey_value_sets
  # GET /survey_value_sets.json
  def index
    @survey_value_sets = SurveyValueSet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @survey_value_sets }
    end
  end

  # GET /survey_value_sets/1
  # GET /survey_value_sets/1.json
  def show
    @survey_value_set = SurveyValueSet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @survey_value_set }
    end
  end

  # GET /survey_value_sets/new
  # GET /survey_value_sets/new.json
  def new
    @survey_value_set = SurveyValueSet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @survey_value_set }
    end
  end

  # GET /survey_value_sets/1/edit
  def edit
    @survey_value_set = SurveyValueSet.find(params[:id])

  end

  # POST /survey_value_sets
  # POST /survey_value_sets.json
  def create
    @survey_value_set = SurveyValueSet.new(params[:survey_value_set])

    respond_to do |format|
      if @survey_value_set.save
        format.html { redirect_to @survey_value_set, notice: 'Survey value set was successfully created.' }
        format.json { render json: @survey_value_set, status: :created, location: @survey_value_set }
      else
        format.html { render action: "new" }
        format.json { render json: @survey_value_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /survey_value_sets/1
  # PUT /survey_value_sets/1.json
  def update
    @survey_value_set = SurveyValueSet.find(params[:id])

    respond_to do |format|
      if @survey_value_set.update_attributes(params[:survey_value_set])
        format.html { redirect_to @survey_value_set, notice: 'Survey value set was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @survey_value_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_value_sets/1
  # DELETE /survey_value_sets/1.json
  def destroy
    @survey_value_set = SurveyValueSet.find(params[:id])
    @survey_value_set.destroy

    respond_to do |format|
      format.html { redirect_to survey_value_sets_url }
      format.json { head :no_content }
    end
  end
end
