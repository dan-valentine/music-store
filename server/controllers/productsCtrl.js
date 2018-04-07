module.exports = {
    findOne: (req, res) =>{
        const {id} = req.params
        
        const db = req.app.get('db');

        db.products.getOne([id]).then(response =>{
            res.send(response[0]);
        })
    },
    getPage: (req, res)=> {
        const type = req.query.type || '%';
        const subType = req.query.subType || '%';
        const page = req.query.page || 1;
        const offset = (page-1)*10;

        const db = req.app.get('db');
        db.products.getPage([type, subType, offset]).then(response =>{
            res.send(response)
        })
    }
}