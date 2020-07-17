const countdown = document.querySelector('.countdown');

// Set Launch Date
const launchDate = new Date('August 14, 2020 13:00:00').getTime();

//Update Every second
const interval = setInterval(() => {
    // Get todays date and time (ms)
    const now = new Date().getTime();

    //Distance from now to the launch date
    const distance = launchDate - now;

    //Time calculations
    const days = Math.floor(distance / (1000 * 60 * 60 * 24));
    const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    const mins = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    const seconds = Math.floor((distance % (1000 * 60)) / 1000);

    // Display result
    countdown.innerHTML = `
        <div>${days}<span>Days</span></div>
        <div>${hours}<span>Hours</span></div>
        <div>${mins}<span>Mins</span></div>
        <div>${seconds}<span>Sec</span></div>
    `; 

    //If launch date passed
    if (distance < 0) {
        //stop countdown
        clearInterval(interval);
        //Style and output text
        countdown.style.color ='#17a2b8';
        countdown.innerHTML = 'Launched!';
    }
}, 1000);


    $('#notify').click(function(e) {
       var email =$("#email");
      //prevent default form submission
     
        
     //ajax form submission
        $.ajax({
            type: 'POST',
            url: 'index.php',
            data: {'email':email.val()},
            success: (message) => {
             // add an action to be carried out when submission is successful
              $("#feedback").text(message)
            },
            // add an action to be carried out when submission is successful
            error: (error) => {
              alert(`${error}`)
            }
        })
    }); 






$(document).ready(function(){
    $('.myImage').on('click', function(){
        $('.my_image').toggleClass('wide')
    });
});

$(document).ready(function(){
    $('.my_image').on('click', function(){
        $('.my_image').removeClass('wide')
    });
});

