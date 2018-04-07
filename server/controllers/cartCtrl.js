module.exports = {
    getCart: (req, res)=>{
        res.send(req.session.cart);
    },
    addToCart: (req, res)=>{
        const item = req.body;
        const index = req.session.cart.findIndex(e => e.product_id == item.product_id);

        if(index === -1){
            req.session.cart = [...req.session.cart, item];
        }else{
            let tempCart = [...req.session.cart]
            tempCart[index].amount += item.amount;
            req.session.cart = tempCart;
        }

        res.send(req.session.cart)
    },
    changeAmount: (req, res) => {
        const {id} = req.params;
        const {amount} = req.body
        let tempCart = req.session.cart.slice();
        const index = tempCart.findIndex(e=> e.product_id == id);

        if(index !== -1){

            if(amount > 0){
                tempCart[index].amount = amount;
            }else{
                tempCart.splice(index, 1);
            }
            req.session.cart = tempCart;
        }

        res.send(req.session.cart)
    },
    delete: (req, res) =>{
        const {id} = req.params;
        let tempCart = req.session.cart.slice();
        const index = tempCart.findIndex(e=> e.product_id == id);

        if(index !== -1){
            tempCart.splice(index,1);
            req.session.cart = tempCart;
        }

        res.send(req.session.cart)
    }
}