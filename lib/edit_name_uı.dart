import 'package:flutter/material.dart';

class EditName extends StatefulWidget {
  const EditName({super.key});

  @override
  State<EditName> createState() => _EditNameState();
}

class _EditNameState extends State<EditName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios, size: 20,)),
                const Text("Profil Düzenleme", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: CircleAvatar(radius: 35, backgroundImage: NetworkImage('https://picsum.photos/250?image=1'), ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text("İsim", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder(), hintText: "İsim" ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text("Soyadı", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Soyad"),
              ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}