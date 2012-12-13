# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/



selected_survey_data_sets_list = []

writeSelectedSurveyDataSetsList = () ->
  selected_survey_data_sets_list_tag = $("#selected_survey_data_sets_list")
  selected_survey_data_sets_list_tag.attr('value', selected_survey_data_sets_list.toString())

updateButton = () ->
  if(selected_survey_data_sets_list.length == 0)
    $("#download-button").attr('disabled', 'true')
  else
    $("#download-button").removeAttr('disabled')

show_alert_text = (text) ->
  alert(text.toString())

show_alert = () ->
  alert(selected_survey_data_sets_list.toString())

jQuery ->
  $(".check-box").click ->
    id = eval($(this).attr "id" );

    wasChecked = if ($(this).attr 'checked') == "checked" then false else true

    if wasChecked
      index = selected_survey_data_sets_list.indexOf(id.toString())
      selected_survey_data_sets_list.splice(index, 1)
    else
      selected_survey_data_sets_list.push(id)

    writeSelectedSurveyDataSetsList()
    updateButton()
