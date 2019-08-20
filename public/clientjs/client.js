document.addEventListener('DOMContentLoaded', (event)=>{

   console.log('hi') 

   let navbarFixed = document.querySelector('#navbar');
   console.log(navbarFixed);
   window.addEventListener('scroll', function(e){
    const lastPosition = window.scrollY
    if (lastPosition > 50 ) {
      navbar.classList.add('change')
    } else if (navbar.classList.contains('change')) {
      navbar.classList.remove('change')
    } else {
      navbar.classList.remove('change')
    }
   })




})

