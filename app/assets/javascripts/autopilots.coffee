delay_close_notice = setTimeout( -> 
  $('.alert-success').fadeTo(500,0).slideUp(500, -> 
    $(this).remove
  )
, 4000)