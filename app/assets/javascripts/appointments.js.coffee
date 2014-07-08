# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	doctor = $('#doctor_select').html()
	$('#doctor_department_id').change ->
		department = $('#doctor_department_id :selected').text()
		options = $(doctor).filter("optgroup[label='#{department}']").html()
		if options
			$('#doctor_select').html(options)
		else
			$('#doctor_select').empty()
		$('#appointment_appointment_date').datepicker
			beforeShowDay: $.datepicker.noWeekends
			dateFormat: 'yy-mm-dd'
			minDate: 0
