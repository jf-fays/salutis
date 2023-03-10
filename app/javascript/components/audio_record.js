export const audioRecord = () => {
  let button = document.getElementById("click_to_convert");

  if (button) {
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
    });
  }
}
