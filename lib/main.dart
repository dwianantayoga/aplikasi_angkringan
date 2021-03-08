import 'package:flutter/material.dart';

import 'detail_produk.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Daftar Menu Angkringan")),
          body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                          name: "NASI BAKAR",
                          description: "Nasi Bakar Isi Ikan Teri",
                          price: 5000,
                          image: "nasi_bakar.jpeg",
                          star: 3,
                        )),
              );
            },
            child: ProductBox(
              nama: "NASI BAKAR",
              deskripsi: "Nasi Bakar Isi Ikan Teri",
              harga: 5000,
              image: "nasi_bakar.jpeg",
              star: 3,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          name: "SATE USUS",
                          description: "Sate Usus Pedas Manis",
                          price: 2000,
                          image: "sate_usus.jpeg",
                          star: 5,
                        )),
              );
            },
            child: ProductBox(
              nama: "SATE USUS",
              deskripsi: "Sate Usus Pedas Manis",
              harga: 2000,
              image: "sate_usus.jpeg",
              star: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          name: "SOSIS BAKAR",
                          description: "Sosis Bakar Pedas Manis",
                          price: 3000,
                          image: "sosis_bakar.jpeg",
                          star: 5,
                        )),
              );
            },
            child: ProductBox(
              nama: "SOSIS BAKAR",
              deskripsi: "Sosis Bakar Pedas Manis",
              harga: 3000,
              image: "sosis_bakar.jpeg",
              star: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          name: "TEMPE BACEM",
                          description: "Tempe Bacem Bakar Pedas Manis",
                          price: 5000,
                          image: "tempe_bacem.jpeg",
                          star: 5,
                        )),
              );
            },
            child: ProductBox(
              nama: "TEMPE BACEM",
              deskripsi: "Tempe Bacem Bakar Pedas Manis",
              harga: 5000,
              image: "tempe_bacem.jpeg",
              star: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          name: "WEDANG JAHE",
                          description: "Wedang Anget Joss",
                          price: 5000,
                          image: "wedang_jahe.jpeg",
                          star: 5,
                        )),
              );
            },
            child: ProductBox(
              nama: "WEDANG JAHE",
              deskripsi: "Wedang Anget Josss",
              harga: 5000,
              image: "wedang_jahe.jpeg",
              star: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          name: "TELUR PUYUH",
                          description: "Telur Puyuh Pedas Manis",
                          price: 5000,
                          image: "telur_puyuh.jpeg",
                          star: 4,
                        )),
              );
            },
            child: ProductBox(
              nama: "TELUR PUYUH",
              deskripsi: "Telur Puyuh Pedas Manis",
              harga: 5000,
              image: "telur_puyuh.jpeg",
              star: 4,
            ),
          )
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.nama, this.deskripsi, this.harga, this.image, this.star})
      : super(key: key);
  final String nama;
  final String deskripsi;
  final int harga;
  final String image;
  final int star;
  final children = <Widget>[];

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.yellow,
      ));
    }

    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            "assets/appimages/" + image,
            width: 150,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: <Widget>[
                  Text(
                    this.nama, //untuk nama
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(this.deskripsi), //deskripsi produk
                  Text(
                    "Harga :" + this.harga.toString(), // harga produk
                    style: TextStyle(color: Colors.orange),
                  ),
                  Row(
                    children: <Widget>[
                      Row(
                        children: children,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
