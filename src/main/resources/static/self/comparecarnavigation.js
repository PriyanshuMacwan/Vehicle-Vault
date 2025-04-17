
/**
 This javascript file navigation
 * 
 */

 function limitSelection() {
     let selectedCars = document.querySelectorAll('input[name="compareCars"]:checked');
     if (selectedCars.length > 2) {
         alert("You can compare only two cars at a time.");
         selectedCars[selectedCars.length - 1].checked = false;
     }
 }

 function compareCars() {
     let selectedCars = document.querySelectorAll('input[name="compareCars"]:checked');
     if (selectedCars.length < 2) {
         alert("Please select exactly two cars for comparison.");
         return;
     }

     let carIds = Array.from(selectedCars).map(cb => cb.value);
    
         window.location.href = `comparecar?carId=${carIds.join(',')}`;
      // Delay of 1 second (1000 milliseconds)
 }
