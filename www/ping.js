//    var button = document.getElementById("button");
//   var state = document.getElementById("state");


//   button.onclick = 


let response = async (xhr) => { }

}

const ping = (server) => {
      state.textContent = "...";
      var xhr = new XMLHttpRequest();
//       var address = document.getElementById("address");
      
      xhr.open("GET", "http://" + server + ":9090/ping", true);
      xhr.onreadystatechange = async () => {
        console.log(xhr.textContent)
        console.log('state changed')
        
      }
      xhr.send();
      return false;
};

const async_ping = async (server) => {
      state.textContent = "...";
      var xhr = new XMLHttpRequest();
//       var address = document.getElementById("address");
      
      xhr.open("GET", "http://" + server + ":9090/ping", true);
      xhr.onreadystatechange = async () => {
        console.log(xhr.textContent)
        console.log('state changed')
        
      }
      xhr.send();
      return false;
  };

ping('188.134.65.67')
