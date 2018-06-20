function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var venueAddress = document.getElementById('venue_address');

    if (venueAddress) {
      var autocomplete = new google.maps.places.Autocomplete(venueAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(venueAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
