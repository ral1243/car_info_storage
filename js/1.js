function filterDrop() {
  document.getElementById("myDrop").classList.toggle("show");
  document.getElementById("myAdd").classList.remove("addshow");
}
function addButton() {
  document.getElementById("myAdd").classList.toggle("addshow");
  document.getElementById("myDrop").classList.remove("show");
}
function filterSave(){
  document.getElementById("myDrop").classList.toggle("show"); 
}
function saveCar(){
  
  document.getElementById("myAdd").classList.toggle("addshow");
  const car = {
  reg: document.getElementById("regNumberadd").value,
  mark: document.getElementById("markadd").value,
  model: document.getElementById("modeladd").value,
  weight: document.getElementById("weightadd").value
}

let params = {
  "method": "POST",
  "headers": {
     "Content-Type": "application/json; charset=utf-8"
  },
  "body": JSON.stringify(car)
}
fetch("php/addCar.php", params)
console.log(params);
}

function pswSee(){
  document.getElementById("passwordInput").setAttribute("type", "text")
}
function pswHide(){
  document.getElementById("passwordInput").setAttribute("type", "password")
}
fetch ("php/pullCar.php")
.then(x => x.text())
.then(y => {
document.getElementById("stuffBox").innerHTML = y
})