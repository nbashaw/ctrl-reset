$(function(){
  
  // talking menu functionality
  $("li#team_link").hover(
    function () {
      $('p#team').fadeIn('fast');
    }, 
    function () {
      $('p#team').hide();
    }
  );
  $("li#blog_link").hover(
    function () {
      $('p#blog').fadeIn('fast');
    }, 
    function () {
      $('p#blog').hide();
    }
  );
  $("li#tb_link").hover(
    function () {
      $('p#tb').fadeIn('fast');
    }, 
    function () {
      $('p#tb').hide();
    }
  );
  $("li#contact_link").hover(
    function () {
      $('p#contact').fadeIn('fast');
    }, 
    function () {
      $('p#contact').hide();
    }
  );
  
});