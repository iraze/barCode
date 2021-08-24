let express = require('express');
const router = express.Router();
const Boleto= require('../model/Boleto');

//lISTA OS BOLETOS
router.get('/', function (req, res) {
	Boleto.getBoletos(function(boletos) {
		res.json(boletos)
	});
});


// GET em /barCode por codigo Boleto
router.get('/boleto/:barCode', function (req, res) {
	let barCode = req.params.barCode;
    if (isNaN(barCode)) {
        res.json('O codigo contém digitos não NÚMERICOS :(')
    }else{
	Boleto.getBoletoByCode(barCode, function(boletos) {
		res.json(boletos)
	});
  }
});




module.exports  = router;