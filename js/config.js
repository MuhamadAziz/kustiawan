
 $(document).ready(function(){
      $('.slider').slider({full_width: true});
    });
 $(document).ready(function(){
    $('.scrollspy').scrollSpy();
  });
 function modetoko() {
 	$('.slider').fadeOut('slow/400/fast');
 	$('.mode-toko').fadeOut('slow/400/fast');
 }
 $(document).ready(function(){
    $('.materialboxed').materialbox();
  });
  $(document).ready(function(){
      $('.parallax').parallax();
    });
  $('footer').footerReveal({
        shadow:true
    });
  /*$(function() {

  "use strict";

  var window_width = $(window).width();
  /*Preloader
  $(window).load(function() {
    setTimeout(function() {
      $('body').addClass('loaded');      
    }, 300);
  });  
  }); */
  /*end preloader*/
  /*Efek Navbar*/
  function scrolleffect() {
    var scroll;
    $(window).scroll(function(){
        scroll = $(window).scrollTop();
        if (scroll > 10) {
            $(".before-nav").css({"opacity":"0"});
            $(".navbar-fixed").css({"margin-top":"-2.6%"});
        }else{
            $(".before-nav").css({"opacity":"1"});
            $(".navbar-fixed").css({"margin-top":"0%"});
        }
    });
}
/*end efek*/