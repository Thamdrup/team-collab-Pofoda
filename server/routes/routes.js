const mysql = require('../config/mysql');

module.exports = (app) => {

    app.get('/', async (req, res, next) => {
        
        res.render('home.ejs', {
            "title": "Fabion",
            pageLink: "home"
        });
    });

    app.get('/collection', async(req,res,next)=>{
        let db = await mysql.connect();
        let [categories] = await db.execute('SELECT * FROM categories');
        let [products] = await db.execute('SELECT * FROM products');

        db.end();

        res.render('collection.ejs',{
            "title": "Fabion",
            "categories": categories,
            "products": products,
            pageLink: "collection"
        })
    })

    app.get('/singleProduct', async(req,res,next)=>{

        res.render('singleProduct.ejs',{
            "title": "Fabion",
            pageLink: "singleProduct"
        })
    })

    //start of dropdown routes 
    app.get('/1', async(req,res,next)=>{

        res.render('collection.ejs',{
            "title": "Fabion",
           
        })
    })


    app.get('/2', async(req,res,next)=>{

        res.render('collection.ejs',{
            "title": "Fhopping",
          
        })
    })


    app.get('/3', async(req,res,next)=>{

        res.render('collection.ejs',{
            "title": "Fabion",
            
        })
    }) //end of dropdown routes


    app.get('/contact', async(req,res,next)=>{

        res.render('collection.ejs',{
            "title": "Fabion",
            pageLink: "contact"
        })
    })
};