$(document).ready(function (){
  console.log('document ready');
  $('.js-toggle-form').click(function(){
    $('.new-bill-form').toggleClass('hidden');
  });
});
