// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

// audio
let button = document.getElementById("click_to_convert");
let content = document.getElementById("message_content");

button.addEventListener('click', function() {
  const SpeechRecognition = window.speechRecognition || window.webkitSpeechRecognition;
  var speech = true;
  const recognition = new SpeechRecognition();
  recognition.interimResults = true;
  const contentValue = content.value;

  recognition.addEventListener('result', e=>{
    const transcript = Array.from(e.results)
    .map(result => result[0])
    .map(result => result.transcript)

    content.value = contentValue + " " + transcript;
  })

  if(speech == true){
    recognition.start();
  }

// search select2
$("select").select2({
  theme: "bootstrap-5",
  containerCssClass: "select2--large", // For Select2 v4.0
  selectionCssClass: "select2--large", // For Select2 v4.1
  dropdownCssClass: "select2--large",
});
