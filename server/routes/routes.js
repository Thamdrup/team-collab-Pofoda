const mysql = require('../config/mysql');

module.exports = (app) => {

    app.get('/', async (req, res, next) => {
        let db = await mysql.connect();
        

        db.end();
        res.render('home', {
            
        });
    });

};