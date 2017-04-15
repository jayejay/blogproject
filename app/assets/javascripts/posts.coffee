###
jQuery ->
  if $('#infinite-scrolling').size() > 0
    $(window).on 'scroll', ->
      more_posts_url = $('#infinite-scrolling .next a').attr('href')
      if more_posts_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
        $('.pagination').html('<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..."/>')
        $.getScript(more_posts_url)
    return
  return###

#$(document).on "turbolinks:load", ->
#
#  if $('#with-button').length > 0
#    $('.pagination').hide()
#    loading_posts = false
#
#    $('#load_more_posts').show().click ->
#      unless loading_posts
#        loading_posts = true
#        more_posts_url = $('.pagination .next a').attr('href')
#        $this = $(this)
#        $this.html('<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..." />').addClass('disabled')
#        $.getScript more_posts_url, ->
#          $this.text('More posts').removeClass('disabled') if $this
#          loading_posts = false
#  return