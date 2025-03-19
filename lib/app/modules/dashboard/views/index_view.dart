// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

import 'package:ujikom/app/routes/app_pages.dart'; // Import ini penting!

class IndexView extends GetView {
  const IndexView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SISLAB',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 16, 171, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            childAspectRatio: 1.2,
          ),
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            final item = menuItems[index];
            return _buildCard(item['title'], item['icon'], item['color'], () {
              // Gunakan route name
              if (item['title'] == 'Anggota') {
                Get.toNamed(Routes.ANGGOTA);
              } else if (item['title'] == 'Barang') {
                Get.toNamed(Routes.BARANG);
              } else {
                Get.snackbar('Info', 'Fitur ${item['title']} belum tersedia.');
              }
            });
          },
        ),
      ),
    );
  }

  Widget _buildCard(String title, IconData icon, Color color, VoidCallback onTap) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        splashColor: Colors.white24,
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: color.withValues(alpha: 0.9),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 40, color: Colors.white),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> menuItems = [
  {'title': 'Anggota', 'icon': Icons.group, 'color': Colors.blueAccent},
  {'title': 'Barang', 'icon': Icons.inventory, 'color': Colors.greenAccent},
  {'title': 'Peminjaman', 'icon': Icons.assignment, 'color': Colors.orangeAccent},
  {'title': 'Pengembalian', 'icon': Icons.assignment_return, 'color': Colors.redAccent},
];
