# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	# help users get store address with client side address autocompletion
  input = $("#store_address")[0]
  autocomplete = new google.maps.places.Autocomplete(input)

 #  map = new google.maps.Map($("#google-map-canvas")[0])

 #  google.maps.event.addListener(autocomplete, 'place_changed', ->
 #  	location = $("#store_address").val()
 #  	if location.length > 3
 #  		geocoder = new google.maps.Geocoder()
 #  		geocoder.geocode({'address': location}, addAddressToMap)
 #  	)

	# addAddressToMap = (results, status) ->
	# 	lnglat = results[0].geometry.location
	# 	$("#store_lnglat").val(lnglat)












