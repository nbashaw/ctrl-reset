$(function(){
  
  $("li#blog_link").hover(
    function () {
      $('p#blog').fadeIn('fast');
    }, 
    function () {
      $('p#blog').fadeOut('fast');
    }
  );
  
  $("li#tb_link").hover(
    function () {
      $('p#tb').fadeIn('fast');
    }, 
    function () {
      $('p#tb').fadeOut('fast');
    }
  );
  
  $("li#contact_link").hover(
    function () {
      $('p#contact').fadeIn('fast');
    }, 
    function () {
      $('p#contact').fadeOut('fast');
    }
  );
  
});