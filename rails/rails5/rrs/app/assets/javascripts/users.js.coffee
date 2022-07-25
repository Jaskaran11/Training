# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('#city_id').parent().hide()
  cities = $('#city_id').html()
  $('#country_id').change ->
    country = $('#country_id :selected').text()
    escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(cities).filter("optgroup[label='#{escaped_countries}']").html()
    if options
      $('#city_id').html(options)
      $('#city_id').parent().show()
      $('#city_id').trigger("chosen:updated");
    else
      $('#city_id').empty()
      $('#city_id').parent().hide()