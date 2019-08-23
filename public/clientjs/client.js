document.addEventListener('DOMContentLoaded', (event) => {

  //  console.log('hi') 

  let navbarFixed = document.querySelector('#navbar');
  console.log(navbarFixed);
  window.addEventListener('scroll', function (e) {
    const lastPosition = window.scrollY
    if (lastPosition > 50) {
      navbar.classList.add('change')
    } else if (navbar.classList.contains('change')) {
      navbar.classList.remove('change')
    } else {
      navbar.classList.remove('change')
    }
  })



  ////// MY CONTACT FORM VALIDATION/////////

  function validateForms(e) {
    //  console.log('hi')

    e.preventDefault();
    let FullName = document.getElementById('FullName');
    let Email = document.getElementById('Email');
    let PhoneNumber = document.getElementById('PhoneNumber');
    let Address = document.getElementById('Address');
    let MessageBox = document.getElementById('MessageBox');

    //we call our function to remove the error message in every input fields
    removeMessages();
    //by default we should make a variable
    let valid = true;

    if (FullName.value.length == 0) {

      FullName.classList.add('wrong-input');
      FullName.nextElementSibling.innerHTML = 'please enter your name';
      valid = false;
    }

    if (Email.value == "") {

      Email.classList.add('wrong-input');
      Email.nextElementSibling.innerHTML = 'please enter your vaild email';
      valid = false;
    }


    if (PhoneNumber.value.length < 10) {
      PhoneNumber.classList.add('wrong-input');
      PhoneNumber.nextElementSibling.innerHTML = 'please enter your phone number';
      valid = false;
    }

    if (Address.value.length == "") {
      Address.classList.add('wrong-input');
      Address.nextElementSibling.innerHTML = 'please enter your address';
      valid = false;
    }
    if (MessageBox.value.length == "") {
      MessageBox.classList.add('wrong-input');
      MessageBox.nextElementSibling.innerHTML = 'please enter your messages';
      valid = false;
    }
    return valid;

  }

  function removeMessages() {
    let errorInput = document.querySelectorAll('.wrong-input');
    [].forEach.call(errorInput, function (el) {
      el.classList.remove("wrong-input");
    })

    let errorParagraph = document.querySelectorAll('.errorMessage');
    [].forEach.call(errorParagraph, function (el) {
      el.innerHTML = "";
    })
  }

  window.onload = function () {
    document.getElementById("contactForm").onsubmit = validateForms;

  }


  //SCROLL TO THE TOP OF THE PAGE BUTTON
  let scrollToTop = document.querySelector(".btnScrollTop");
  scrollToTop.addEventListener('click', function () {
    window.scrollTo({
      top: 0,
      left: 0,
      behavior: "smooth"

    })
  })

})

