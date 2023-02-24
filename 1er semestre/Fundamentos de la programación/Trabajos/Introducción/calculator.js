
var input1 = document.createElement("input");
input1.type = "text";
input1.id = "input1";
document.body.appendChild(input1);
var input2 = document.createElement("input")
input2.type = "text";
input2.id = "input1";
document.body.appendChild(input2);
var button = document.createElement("button")
button.innerHTML = "=";
document.body.appendChild(button);
var result = document.createElement("div");
result.id = "result";
document.body.appendChild(result);
button.onclick = function() {
    var input1Value = document.getElementById("input1").value;
    var input2Value = document.getElementById("input2").value;
    var sum = parseInt(input1Value) + parseInt(input2Value);
    document.getElementById("result").innerHTML = sum;
};