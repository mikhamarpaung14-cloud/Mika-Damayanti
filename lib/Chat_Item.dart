import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final String Nama;
  final String Pesan;
  final String Bulan;
  final VoidCallback onTap;

  const ChatItem({
    Key? key, 
    required this.Nama,
    required this.Pesan,
    required this.Bulan,
    required this.onTap,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child:Container(
      margin: const EdgeInsets.all(18),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
      ),
        border: Border.all(color: Colors.red, width: 2),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 28,
            backgroundColor: Colors.redAccent,
            child: Icon(Icons.person, size: 35),
          ),
         const SizedBox(width: 12),

         Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Nama,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.check, size: 18),
                        const SizedBox(width: 4),
                        Text(Pesan),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                Bulan,
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}