import 'package:flutter/material.dart';
import 'package:kuis_ptpm_123230133/pages/about_page.dart';
import 'package:kuis_ptpm_123230133/pages/login_page.dart';
import 'package:kuis_ptpm_123230133/pages/order_page.dart';

class HomePage extends StatefulWidget {
  final String usn;
  const HomePage({super.key, required this.usn});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.blue[200],
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                (route) => false,
              );
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          Text("Selamat Datang, ${widget.usn}!", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutPage()),
              );
            },
            child: Text("Klik untuk ke halaman About!", style: TextStyle(color: Colors.blue),),
          ),
          SizedBox(
            child: Text("Daftar Menu", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 20),
          Expanded(child: ListView(
            children: [
              menuCard(nama: "Nasi Goreng", harga: 15000),
              menuCard(nama: "Mie Ayam", harga: 2000),
              menuCard(nama: "Sate Ayam", harga: 20000),
              menuCard(nama: "Bakso", harga: 10000),
              menuCard(nama: "Soto Ayam", harga: 13000),
              menuCard(nama: "Gado-Gado", harga: 14000)
            ],
          ))
        ],
      ),
    );
  }

  Widget menuCard({required String nama, required int harga}) {
    return Card(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/piring.jfif"),
            Column(children: [
              Text(nama, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),), 
              SizedBox(height: 10),
              Text("Rp $harga")]),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            OrderPage(nama: nama, harga: harga),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[300],
                    foregroundColor: Colors.white
                  ),
                  child: Text("Pesan"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
