$(document).ready(function(){
  $('.dropdown-toggle').dropdown();
  $('.article-comments').hide();
  $('.btn-show-comments').click(function() {
    $('.article-comments').slideToggle();
  });
});




