$(document).ready(function(){
   $('.counter-item').counterUp({
    delay: 10,
    time: 1000
}); 
});

//For smooth scrolling
$(document).ready(function(){
  $('.nav-item').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html, body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});