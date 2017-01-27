$(document).ready(function(){
  $('.article-comments').hide();
  $('.btn-show-comments').click(function() {
    $('.article-comments').slideToggle();
  });
});

