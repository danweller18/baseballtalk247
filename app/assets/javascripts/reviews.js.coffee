# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('#review_bat_id').hide()
  $('#nobats').hide()
  bats = $('#review_bat_id').html()
  $('#review_manufacturer_id').change ->
    manufacturer = $('#review_manufacturer_id :selected').text()
    escaped_manufacturer = manufacturer.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(bats).filter("optgroup[label='#{escaped_manufacturer}']").html()
    if options
      $('#review_bat_id').html(options)
      $('#review_bat_id').show()
      $('#nobats').hide()
    else
      $('#review_bat_id').empty()
      $('#review_bat_id').hide()
      $('#nobats').html("<h2>Sorry there are currently no bats for the selected brand.</h2><h3>Please <a href= \"http://baseballtalk247.com/contact\">request</a> a bat be added to the site.</h3>")
      $('#nobats').show()
