import 'package:flutter/material.dart';
import '../presentacion/lista_productos.dart';
import 'lista_productos.dart' show ListaProductos;

class Carrito extends StatefulWidget {
  final List<ListaProductos> _cart;
  const Carrito(this._cart, {super.key});

  @override
  _CarritoState createState() => _CarritoState(this._cart);
}

class _CarritoState extends State<Carrito> {
  _CarritoState(this._cart);

  List<ListaProductos> _cart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text(
          'detalles del producto',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
            setState(() {
              _cart.length;
            });
          },
          color: Colors.pink,
        ),
      ),
      body: GestureDetector(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _cart.length,
              itemBuilder: (context, index) {
                _cart[index].valortotal =
                    _cart[index].cont * _cart[index].precio;
                return Card(
                  elevation: 5,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image(
                              image: AssetImage(
                                _cart[index].imageURL.toString(),
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      right: 8,
                                    ),
                                    child: Center(
                                      child: Text(
                                        _cart[index].nombre.toString(),
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Text(_cart[index].precio.toString()),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (_cart[index].id == 1) ...[
                            _cart[index].cont != 0
                                ? IconButton(
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.deepOrangeAccent,
                                    ),
                                    onPressed: () =>
                                        setState(() => _cart[index].cont--),
                                  )
                                : Container(),
                            Text(_cart[index].cont.toString()),
                            IconButton(
                                icon: const Icon(Icons.add,
                                    color: Colors.deepOrangeAccent),
                                onPressed: () =>
                                    setState(() => _cart[index].cont++)),
                            Column(
                              children: [
                                Text(' \$${_cart[index].valortotal}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                      fontSize: 12,
                                    )),
                              ],
                            ),
                          ] else if (_cart[index].id == 2) ...[
                            _cart[index].cont != 0
                                ? IconButton(
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.deepOrangeAccent,
                                    ),
                                    onPressed: () =>
                                        setState(() => _cart[index].cont--),
                                  )
                                : Container(),
                            Text(_cart[index].cont.toString()),
                            IconButton(
                                icon: const Icon(Icons.add,
                                    color: Colors.deepOrangeAccent),
                                onPressed: () =>
                                    setState(() => _cart[index].cont++)),
                            Column(
                              children: [
                                Text(' \$${_cart[index].valortotal}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                      fontSize: 12,
                                    )),
                              ],
                            ),
                          ] else if (_cart[index].id == 3) ...[
                            _cart[index].cont != 0
                                ? IconButton(
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.deepOrangeAccent,
                                    ),
                                    onPressed: () =>
                                        setState(() => _cart[index].cont--),
                                  )
                                : Container(),
                            Text(_cart[index].cont.toString()),
                            IconButton(
                                icon: const Icon(Icons.add,
                                    color: Colors.deepOrangeAccent),
                                onPressed: () =>
                                    setState(() => _cart[index].cont++)),
                            Column(
                              children: [
                                Text(' \$${_cart[index].valortotal}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                      fontSize: 12,
                                    )),
                              ],
                            ),
                          ] else if (_cart[index].id == 4) ...[
                            _cart[index].cont != 0
                                ? IconButton(
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.deepOrangeAccent,
                                    ),
                                    onPressed: () =>
                                        setState(() => _cart[index].cont--),
                                  )
                                : Container(),
                            Text(_cart[index].cont.toString()),
                            IconButton(
                                icon: const Icon(Icons.add,
                                    color: Colors.deepOrangeAccent),
                                onPressed: () =>
                                    setState(() => _cart[index].cont++)),
                            Column(
                              children: [
                                Text(' \$${_cart[index].valortotal}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                      fontSize: 12,
                                    )),
                              ],
                            ),
                          ] else if (_cart[index].id == 5) ...[
                            _cart[index].cont != 0
                                ? IconButton(
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.deepOrangeAccent,
                                    ),
                                    onPressed: () =>
                                        setState(() => _cart[index].cont--),
                                  )
                                : Container(),
                            Text(_cart[index].cont.toString()),
                            IconButton(
                                icon: const Icon(Icons.add,
                                    color: Colors.deepOrangeAccent),
                                onPressed: () =>
                                    setState(() => _cart[index].cont++)),
                            Column(
                              children: [
                                Text(' \$${_cart[index].valortotal}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.red,
                                    )),
                              ],
                            ),
                          ]
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
            Text('total:  \$${totalproduct(_cart)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 25,
                )),
            Text('paga de iva :  \$${pagoiva(_cart)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 25,
                )),
          ],
        ),
      )),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.circle_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.crop_square_sharp),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  String totalproduct(List<ListaProductos> _cart) {
    double valortotal = 0;
    for (int i = 0; i < _cart.length; i++) {
      valortotal = valortotal + _cart[i].precio * _cart[i].cont;
    }
    return valortotal.toString();
  }

  String pagoiva(List<ListaProductos> _cart) {
    double valortotal = 0;
    double iva = 0.19;
    double ivatot = 0;
    for (int i = 0; i < _cart.length; i++) {
      valortotal = valortotal + _cart[i].precio * _cart[i].cont;
    }
    ivatot = valortotal * iva;
    return ivatot.toString();
  }
}
