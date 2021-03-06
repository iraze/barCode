let express = require('express');
let app = express();
let bodyParser = require('body-parser');

// Configura para ler dados do POST por form-urlencoded e application/json
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

// Rotas
app.use('/', require('./routes/boletos'));

// Inicia o servidor
let server = app.listen(8080, function () {
    let host = server.address().address
    let port = server.address().port
    console.log("Servidor iniciado em http://%s:%s", host, port)
});