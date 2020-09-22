window.addEventListener('load',function(){
  const Action = document.getElementById("action");
  const Value = document.getElementById("value");
  const valueResponse = document.getElementById("value-response");
  const responseImage = document.getElementById("response-image");
  const Yes = document.getElementById("yes");
  const No = document.getElementById("no");
  const answerConfirm = document.getElementById("answer-confirm");
  const Cheering = document.getElementById("cheering");
  const yesConfirm = document.getElementById("yes-confirm");
  const noConfirm = document.getElementById("no-confirm");
  const scoldImage1 = document.getElementById("scold-image1");
  const scoldImage2 = document.getElementById("scold-image2");
  const scoldImage3 = document.getElementById("scold-image3");
  const specialScoldImage = document.getElementById("special-scold-image");


  Value.addEventListener('click',function(){
    valueResponse.style.display = "block";
    Action.style.display = "none";
  });

  Yes.addEventListener('click',function(){
    const n = Math.floor(Math.random() * 101);
      if(n <= 80){
      responseImage.style.display = "block";
      }else{
      answerConfirm.style.display = "block";
      }
    valueResponse.style.display = "none";
  });

  No.addEventListener('click',function(){
    Cheering.style.display = "block";
    valueResponse.style.display = "none";
  });

  yesConfirm.addEventListener('click',function(){
    const n = Math.floor(Math.random() * 101);
    console.log(n);
    if(n <= 95 ){
      responseImage.style.display = "block";
    }else{
      specialScoldImage.style.display = "block";
    }
    answerConfirm.style.display = "none";
  });

  noConfirm.addEventListener('click',function(){
    const n = Math.floor(Math.random() * 101);
    if(n <= 35){
    scoldImage1.style.display = "block";
    }else if(n <= 70){
    scoldImage2.style.display = "block";
    }else{
    scoldImage3.style.display = "block";
    }
    answerConfirm.style.display = "none";
  });

});