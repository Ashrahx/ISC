let nums = new Array(10);

function Capture(){
    for(let i = 0; i < nums.length; i++){
       nums[i] = Number(prompt("Write the number " +(i+1)));
  }
}

function Show(){
    let vector = "";
    for(let i = 0; i < nums.length; i++){
    vector += " " + nums[i];
    }
    alert(vector)
}

Capture();
Show();