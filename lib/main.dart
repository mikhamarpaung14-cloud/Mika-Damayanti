import 'package:flutter/material.dart';
import 'package:mikadamayanti/Chat_Item.dart';
import 'package:mikadamayanti/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final List<Map<String, String>> chats = const [
    {
      "nama": "Mika Damayanti",
      "pesan": "okee,Siap melunjur",
      "bulan": "Januari",
    },
    {"nama": "Mona Lisa", "pesan": "otw", "bulan": "Februari"},
    {"nama": "Rose ", "pesan": " Ada kerjaan ", "bulan": "Maret"},
    {"nama": "Agung", "pesan": " Kita jalan yokk", "bulan": "April"},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Chat Item")),
        body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
            final chat = chats[index];

            return ChatItem(
              Nama: chat["nama"]!,
              Pesan: chat["pesan"]!,
              Bulan: chat["bulan"]!,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(nama: chat["nama"]!),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
