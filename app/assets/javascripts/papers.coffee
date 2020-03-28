$ ->
  $('#remove_link').click = ()-> 
	  $(this).parent("input").attr('value', 1);
	  $(this).parent().parent().slideUp();
