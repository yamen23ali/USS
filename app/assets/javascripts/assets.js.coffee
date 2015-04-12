# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


populateSubCategories = (data) ->
  $('#asset_sub_category_id').empty()
  $('#asset_sub_category_id').append $('<option>').text "Please select..."
  $('#asset_sub_category_id').append $('<option>').attr('value' , sub_category["id"] ).text sub_category["name"] for sub_category in data

jQuery ($) ->

  $('#asset_category_id').on "change" , -> 
     $.ajax "/categories/#{$(this).val()}/sub_categories/",
        type: 'GET',
        success: (data) ->
            populateSubCategories data

