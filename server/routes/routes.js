const mysql = require('../config/mysql');

module.exports = (app) => {

    app.get('/', async (req, res, next) => {
        let db = await mysql.connect();
        let [categories] = await db.execute('SELECT * FROM categories'); // Nav
        let [posts] = await db.execute(`
SELECT * FROM opslag
ORDER by post_date desc
`); // Nyeste dato øverst

        db.end();
        res.render('home', {
            "categories": categories,
            "posts": posts,
        });
    });

};