let button = document.getElementById("click_to_convert");
let content = document.getElementById("convert_text");

button.addEventListener('click', function() {
  var speech = true;
  window.SpeechRecognition = window.webkitSpeechRecogonition;
  const recognition = new SpeechRecognition();
  recognition.interimResults = true;

  recognition.addEventListener('result', e=>{
    const transcript = Array.from(e.resuts)
    .map(result =>result[0])
    .map(result => result.transcript)

    content.innerHTML = transcript;
  })

  if(speech == true){
    recogonition.start();
  }
});
