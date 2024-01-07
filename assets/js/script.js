function updateDateTime() {
  let currentDate = new Date();

  let day = currentDate.getDate();
  let month = currentDate.getMonth() + 1;
  let year = currentDate.getFullYear();

  let hours = currentDate.getHours();
  let minutes = currentDate.getMinutes();
  let seconds = currentDate.getSeconds();
  let ampm = hours >= 12 ? "PM" : "AM";

  day = day < 10 ? "0" + day : day;
  month = month < 10 ? "0" + month : month;
  hours = hours % 12;
  hours = hours ? hours : 12;
  minutes = minutes < 10 ? "0" + minutes : minutes;
  seconds = seconds < 10 ? "0" + seconds : seconds;

  let timeString = hours + ":" + minutes + ":" + seconds + " " + ampm;
  let dateString = day + "/" + month + "/" + year;

  document.getElementById("date").innerText = dateString;
  document.getElementById("time").innerText = timeString;
}

setInterval(updateDateTime, 1000);

updateDateTime();

// btn login
document.getElementById("loginBtn").addEventListener("click", function () {
  $("#mainMenu").modal("hide");
  $("#modalLogin").modal("show");
});

// btn close login
document.getElementById("closeLogin").addEventListener("click", function () {
  $("#mainLogin").modal("hide");
  $("#mainMenu").modal("show");
});

// btn register
document.getElementById("registerBtn").addEventListener("click", function () {
  $("#mainMenu").modal("hide");
  $("#modalRegister").modal("show");
});

// btn close register
document.getElementById("closeRegister").addEventListener("click", function () {
  $("#mainRegister").modal("hide");
  $("#mainMenu").modal("show");
});

// btn submenu
document.getElementById("submenuBtn").addEventListener("click", function () {
  $("#mainMenu").modal("hide");
  $("#subMenu").modal("show");
});

// btn close submenu
document.getElementById("closeSubmenu").addEventListener("click", function () {
  $("#subMenu").modal("hide");
  $("#mainMenu").modal("show");
});

// btn forgot password
document
  .getElementById("forgotPasswordBtn")
  .addEventListener("click", function () {
    $("#mainLogin").modal("hide");
    $("#forgotPass").modal("show");
  });

// btn close forgot password
document.getElementById("closeForgot").addEventListener("click", function () {
  $("#forgotPass").modal("hide");
  $("#mainLogin").modal("show");
});
