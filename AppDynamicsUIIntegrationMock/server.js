var express = require('express')
var app = express()
const path = require('path');

app.get('/', function (req, res) {
  // send results or render custom UI
  res.sendFile(path.join(__dirname+'/index.html'));
})
// http://localhost:3000
app.listen(3000, () => console.log('Example app listening on port 3000!'))