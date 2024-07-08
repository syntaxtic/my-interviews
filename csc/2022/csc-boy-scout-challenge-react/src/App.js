import React from 'react';

import './App.css';

let products = [
  {
    id: 1,
    title: "Pocket Knife",
    price: 35,
    imageUrl: "https://i0.wp.com/scoutingmagazine.org/wp-content/uploads/2013/02/SwissArmyKnife.jpg?w=550&ssl=1"
  },
  {
    id: 2,
    title: "Trail Mix",
    price: 12,
    imageUrl: "https://m.media-amazon.com/images/I/91P47phWyUL._AC_SL1500_.jpg"
  },
  {
    id: 3,
    title: "Rain Gear",
    price: 59,
    imageUrl: "https://i2.wp.com/scoutingmagazine.org/wp-content/uploads/2013/02/MarmotPrecip.jpg?w=550&ssl=1"
  },
]

function LoadProducts() {
  return new Promise(resolve => {
    setTimeout(() => resolve(products), 500)
  });
}

class App extends React.Component {
  state = {
    items: {},
    // items: { id: numberOfProducts }
    products: undefined,
    l: true,
  }

  componentDidMount() {
    this.setState({l: true});

    let that = this;
    LoadProducts().then(function (products) {
      that.setState({l: false, products});
    });
  }

  render() {
    console.log('this.state', this.state);

    if (!this.state.l) {
      let itemKeysInCart = Object.keys(this.state.items);
      let totalItems = Object.values(this.state.items).reduce((a,b) => a+b, 0);

      return (
        <div className="main">
          <header className="main-header">
            <h1>Scout Essentials</h1>
          </header>
          <div>
            <h1>Product List</h1>
            <div className="product-list">
              {
                this.state.products.map((x) => {
                  return (
                    // Product Component
                    <div className="product">
                      <p>{x.title}</p>
                      <p>${x.price}</p>
                      <div>
                        <img className="product-image" src={x.imageUrl} alt={x.title}/>
                      </div>
                      <button
                        className="btn"
                        onClick={() => {
                          console.log('add', x);

                          let productsSoFar = this.state.items;
                          if(productsSoFar[x.id])
                            productsSoFar[x.id]++;
                          else
                            productsSoFar[x.id] = 1;

                          this.setState({items: productsSoFar}, () => {
                            console.log(this.state.items);
                          });
                        }}
                      >
                        Add to Cart
                      </button>
                    </div>
                  )
                })
              }
            </div>
          </div>
          <div className="cart">
            <h3>Your Cart</h3>
            <p>Items in cart: {totalItems}</p>
            {itemKeysInCart.map(p => {

              let productInCart = products.find(e => {
                return e.id == p;
              });

              return (
                <div>
                  {productInCart.title} x {this.state.items[p]}
                </div>
              );
            })}

            {/* <p>Total price: ${this.state.items.reduce((prevValue, currValue) => {
              return prevValue + currValue.price
            }, 0)}</p> */}
            <div className="buttons">
              <button
                className="btn"
                onClick={() => {
                  this.setState({items: []})
                }}>
                Clear
              </button>
              <button
                className="btn"
                onClick={() => alert('Not there yet')}
              >
                Checkout
              </button>
            </div>
          </div>
          <footer>
            <hr/>
            <p>
              <span>Scout Essentials by CSC Engineering, 2021. </span>
              <a href="https://jobs-cscgeneration.icims.com/jobs">Join Us!</a>
            </p>
          </footer>
        </div>
      );
    }

    return 'Loading...'
  }
}

export default App;
