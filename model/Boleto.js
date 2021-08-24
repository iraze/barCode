var mysql = require('mysql');


class Boleto {
	// Função para conectar no banco de dados.
	static connect() {		
		var connection = mysql.createConnection({
            host: 'localhost',            
            user: 'iraze',
            password: '123',              
            database: 'Task'  		 
		});		
		connection.connect();
		return connection;
	}
	// Retorna a lista de carros
	static getBoletos(callback) {
		let connection = Boleto.connect()		
		let sql = "select * from boleto";
		let query = connection.query(sql, function (error, results, fields) {
			if (error) throw error;			
			callback(results)
		});
		console.log(query.sql)		
		connection.end();
	}
	// Retorna a consulta por Boleto
	static getBoletoByCode(barCode, callback) {

		let connection = Boleto.connect();        		
		let sql = "select barCode, amount, expirationDate from boleto where barCode = '" + barCode + "'";
		let query = connection.query(sql, function (error, results, fields) {
			if (error) throw error;			
			callback(results)
		});
		console.log(query.sql)		
		connection.end();
       
	}
	
	
};

module.exports = Boleto;