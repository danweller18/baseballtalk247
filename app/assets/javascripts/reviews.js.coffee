# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  bats = $('#review_bat_id').html()
  $('#review_manufacturer_id').change ->
    manufacturer = $('#review_manufacturer_id :selected').text()
    escaped_manufacturer = manufacturer.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(bats).filter("optgroup[label='#{escaped_manufacturer}']").html()
    if options
      $('#review_bat_id').html(options)
    else
      $('#review_bat_id').empty()
