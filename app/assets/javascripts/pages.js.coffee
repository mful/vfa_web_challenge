homeBoxExpanded = false

$(document).ready ->
  $('.tab-title').mousedown ->
    $thiscontent = $('#page-content_' + $(this).attr('id').split('_')[1])

    unless $(this).hasClass('active-tab')
      $('.tab-title').removeClass('active-tab')
      $('.tab-title').removeClass('default-title')
      $(this).addClass('active-tab')
      $('.page-content').removeClass('active-content')
      $('.page-content').removeClass('default-content')
      $('.page-content').css('display', 'none')
      $thiscontent.fadeIn(300)
      $thiscontent.addClass('active-content')


  $('.expando-box').mousedown ->
    if $(this).hasClass('active-expando')
      $(this).children('.below-fold').slideUp 300, ->
        $(this).parent('.expando-box').removeClass('active-expando')
    else
      $(this).children('.below-fold').slideDown 300, ->
        $(this).parent('.expando-box').addClass('active-expando')