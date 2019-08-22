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
    app.get('/collection/:category_id', async(req,res,next)=>{
        let db = await mysql.connect();
        let [categories] = await db.execute('SELECT * FROM categories');
        let [products] = await db.execute('SELECT * FROM products');
        let [choose_category] = await db.execute('SELECT * FROM products INNER JOIN categories ON category_id = fk_category_id WHERE category_id = ?', [req.params.category_id]);
        db.end();

        res.render('collection.ejs',{
            "title": "Fabion",
            "categories": categories,
            "products": products,
            "choose_category": choose_category[0],
            pageLink: "collection",
            
        })
    })


    app.get('/about', async(req,res,next)=>{

        res.render('about.ejs',{
            "title": "Fabion",
            pageLink: "about"
        })
    })




    app.get('/singleProduct/:product_id', async(req,res,next)=>{
        let db = await mysql.connect();

        let [products_by_id] = await db.execute('SELECT * FROM products WHERE product_id = ?', [req.params.product_id]);
        console.log(products_by_id);
        
        db.end();
        res.render('singleProduct.ejs',{
            "title": "Fabion",
            "pageLink": "singleProduct",
            "product_by_id": products_by_id[1],
            
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

        res.render('contact.ejs',{
            "title": "Fabion",
            pageLink: "contact"
        })
    })
};