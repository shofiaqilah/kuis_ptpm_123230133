import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
        backgroundColor: Colors.blue[200],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/customerService.png", height: 150,),
              Text("Ini adalah halaman About", style: TextStyle(color: Colors.blue[600], fontSize: 20, fontWeight: FontWeight.bold) ),
              SizedBox(height: 20),

              Text("Pertanyaan Umum FAQ", style: TextStyle(fontWeight: FontWeight(500))),
              Text("Temukan jawaban atas berbagai pertanyaan yang sering ditanyakan oleh pengguna mengenai penggunaan aplikasi ini. Dari proses pendaftaran, cara membeli barang, hingga pengaturan akun, semua jawaban ada di sini untuk mempermudah pengalaman Anda.",),
              SizedBox(height: 20),

              Text("Panduan Penggunaan", style: TextStyle(fontWeight: FontWeight(500))),
              Text("Pelajari langkah demi langkah cara menggunakan fitur-fitur aplikasi kami. Panduan ini akan membantu Anda memahami bagaimana memaksimalkan penggunaan aplikasi, mulai dari mencari produk hingga menyelesaikan transaksi dengan mudah."),
              SizedBox(height: 20),

              Text("Kontak Dukungan", style: TextStyle(fontWeight: FontWeight(500))),
              Text("Jika Anda membutuhkan bantuan lebih lanjut, tim dukungan kami siap membantu. Anda dapat menghubungi kami melalui email, telepon, atau live chat. Kami berkomitmen untuk memberikan solusi terbaik bagi setiap masalah atau pertanyaan yang Anda miliki.")
          
            ],
          ),
        ),
      ),
    );
  }
}