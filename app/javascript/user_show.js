window.addEventListener('load',function(){
  const taskIndex = document.getElementById("task-index");
  const contentIndex = document.getElementById("content-index");
  const changeBtn = document.getElementById("change-btn");
  

  changeBtn.addEventListener('click',function(){
    if(contentIndex.style.display == "none"){
      contentIndex.style.display = "block";
    }else{
      contentIndex.style.display = "none";
    }

    if(taskIndex.style.display == "block"){
      taskIndex.style.display = "none";
    }else{
      taskIndex.style.display = "block";
    }

  });
});