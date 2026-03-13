import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  final String nama;
  final int harga;

  const OrderPage({
    super.key,
    required this.nama,
    required this.harga,
  });

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final _pesananController = TextEditingController();
  int _total = 0;

  void _hitung() {
    int pesanan = int.parse(_pesananController.text);

    setState(() {
      _total = pesanan * widget.harga;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Order"),
        backgroundColor: Colors.blue[200],
        foregroundColor: Colors.white,),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/piring.jfif"),
              SizedBox(height: 30),
              Text(widget.nama, style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              Text("Harga: Rp ${widget.harga}"),
              SizedBox(height: 20),
          
              // inputkan jumlah pesanan
              TextField(
                controller: _pesananController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Masukkan Jumlah',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
          
              SizedBox(height: 20),
          
              // hitung total harga
              ElevatedButton(
                onPressed: _hitung,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[200],
                  foregroundColor: Colors.white
                ), 
                child: Text("Submit"),),
              SizedBox(height: 20),
              // menampilkan total harga
              Center(
                child: Text("Total Harga: Rp $_total", style: TextStyle(fontWeight: FontWeight.bold),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
