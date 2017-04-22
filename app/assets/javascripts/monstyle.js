$(document).ready(function(){
  $('.dropdown-toggle').dropdown();
  $('.article-comments').hide();
  $('.btn-show-comments').click(function() {
    $('.article-comments').slideToggle();
  });
  $('.card-article').hover(function(){
    $('.share-links').fadeOut(100);
    $('.share-links').fadeIn(100);
  })
});




