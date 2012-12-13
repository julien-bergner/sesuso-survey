class BackEndController < ApplicationController
  before_filter :authenticate_user!

  def prepare_affidavit

    if current_user.allPersonalDataProvided?
      if current_user.has_role? :admin
        @survey_data_sets = SurveyDataSet.all
      else
        @survey_data_sets = current_user.survey_data_sets
      end

      @survey_data_sets.select! { |a| not a.survey_value_set.value1.nil? and not a.survey_value_set.value1 == "" and
          not a.survey_value_set.time.nil? and not a.survey_value_set.time == "" }
      @survey_data_sets.sort!{ |a, b| a.start <=> b.start }
    else
      redirect_to :root, :flash => { :error => t("back_end.error") } and return
    end

    respond_to do |format|
      format.html

    end
  end

  def receive_selected_survey_data_sets

    redirect_to send_affidavit_pdf_to_browser_user_path(current_user.id, :selected_survey_data_sets_list => params[:selected_survey_data_sets_list])

  end

end
