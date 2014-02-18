# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  # rename the original select and hide it
  $('#review_bat_id').attr('id', 'review_bat_id_original').hide();

  $('#manufacturer_manufacturer_id').on 'change', ->
    $('#review_bat_id').remove(); # remove any bat_id selects
    $('#review_bat_id_original')
      .clone() # clone the original
      .attr('id', 'review_bat_id') # change the ID to the proper id
      .insertAfter('#review_bat_id_original') # place it
      .show() # show it
      .find(':not(option[data-manufacturer="' + $(this).val() + '"])')
          .remove(); # find all options by other manufacturers and remove them

$(document).ready ready
$(document).on 'page:load', ready
