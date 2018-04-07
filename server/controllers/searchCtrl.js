module.exports = {
    search: (req, res)=> {
        const name = req.query.name || '';
        const min = req.query.min || '0';
        const max = req.query.max || '8000';
        const orderBy = req.query.orderBy || 'name';
        const order = req.query.order || 'Ascending';
        const page = req.query.page || 1;
        const offset = (page-1)*10;

        const db = req.app.get('db');
        db.search[orderBy+order]([name, min, max, offset]).then(response =>{
            res.send(response)
        })
    }
}