// import dart
import 'package:flutter/material.dart';
// menjalankan aplikasi
void main() {
  runApp(MyApp());
}
// deklarasi class MyApp
class MyApp extends StatelessWidget {
  @override
  // mendefinisikan build untuk widget
  Widget build(BuildContext context) {
    return MaterialApp(
      // mendefinisikan scaffold
      home: Scaffold(
        backgroundColor: Colors.grey[900],

        // mendefinisikan app bar
        appBar: AppBar(
          title: Text('Success App',
            style: TextStyle(color: Colors.white70),
          ),
          backgroundColor: Colors.grey[850],
          centerTitle: true,
        ),

        // mendefinisikan body
        body: SafeArea(
          // mendefinisikan child dari body dalam bentuk kolom
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mendefinisikan childern untuk kolom
            children: <Widget>[
              // container "I Am Success"
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  'I Am Success',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              // container foto Jesko
              SizedBox(height: 30,),
              Container(
                width: 350,
                height: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.7),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'Images/jesko.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // container deskripsi
              SizedBox(height: 50,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child:
                Text(
                  '!!! Pertanda Awal Kamu Sukses !!!\n'
                      'Punya Koegnigsegg Jesko yang terparkir di rumah\n'
                      'meskipun terparkir di dalam aplikasi komputer\n'
                      '\n'
                      'Tetap semangat sampai ada Koegnigsegg Jesko sungguhan terparkir di garasimu 🫵',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // container kelompok
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Developed by: Kelompok 5\n'
                      '1. Rachman Tri M.    23091397180\n'
                      '2. Julianto Jayadi   23091397200\n'
                      '3. Wildan Habibi R.  23091397212',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[300],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
