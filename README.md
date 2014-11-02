# Realtime demo

* realtime demo: chat + drawing
    * api server: rails
    * websocket server: faye on thin
    * client side: ember

### run
1. `rackup faye.ru -s thin -E production`
2. `rails -s`
3. open `http://localhost:3000`
