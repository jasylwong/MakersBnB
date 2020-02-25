$( document ).ready(function() {
//   // var spaces;

//   // $.get('/spaces', function(data) {
//   //   spaces = JSON.parse(data)
//   //   getSpaces(spaces)
//   // })

//   // function getSpaces(spaces) {
//   //   for (var key in spaces) {
//   //     const listingLink = document.createElement('BUTTON');
//   //     listingLink.innerHTML = key
//   //     listingLink.id = 'listing-links'
//   //     listingLink.value = listings[key]
//   //     $('#show-spaces').append(listingLink)
//   //   }
//   // }

  $("#test-button").click(function() {
    console.log("hello")
    $('#test').text(5);
  });
});