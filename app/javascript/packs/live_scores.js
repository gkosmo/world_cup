
function startMe(){
  console.log(Date.now());
  fetch('http://worldcup.sfg.io/matches/current').then(function(response) {
    return response.json();
  })
  .then(function(myJson) {
   let doc_c =  document.getElementById('current-match');
   doc_c.innerHTML = '';
   let mainDoc = document.createElement("div");
   let p = myJson[0];
   let line = document.createElement('strong');
   line.innerText = "Home Team: " + p["home_team"]["goals"] + " - Away Team: " + p["away_team"]["goals"];
   mainDoc.appendChild(line);

   p = myJson[0]['home_team_events'][0];

   line = document.createElement('div');
   line.innerText = "Home Team Events: ";
   mainDoc.appendChild(line)
   for (var key in p) {
    let line = document.createElement('div');
    if (p.hasOwnProperty(key)) {
      console.log( key + " -> " + p[key]);
      line.innerText = key + " -> " + p[key];
      mainDoc.appendChild(line);
    }
  }

  p = myJson[0]['away_team_events'][0];
  line = document.createElement('div');
  line.innerText = "Away Team Events: ";
  mainDoc.appendChild(line)
  for (var key in p) {
    let line = document.createElement('div');
    if (p.hasOwnProperty(key)) {
      console.log( key + " -> " + p[key]);
      line.innerText = key + " -> " + p[key];
      mainDoc.appendChild(line);
    }
  }
  doc_c.appendChild(mainDoc)
});
};
export { startMe };
