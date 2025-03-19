// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controllers/anggota_controller.dart';

class AnggotaView extends GetView<AnggotaController> {
  const AnggotaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Anggota'),
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        if (controller.anggotaList.isEmpty) {
          return const Center(child: Text('Tidak ada data anggota.'));
        }
        return ListView.builder(
          itemCount: controller.anggotaList.length,
          itemBuilder: (context, index) {
            final anggota = controller.anggotaList[index];
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              elevation: 3,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  child: Text(
                    '${index + 1}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                title: Text(
                  anggota.namaPeminjam ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min, // biar nggak overflow
                    children: [
                      Text('Email: ${anggota.email ?? ''}'),
                      Text('No Telepon: ${anggota.noTelepon ?? ''}'),
                      Text('Instansi: ${anggota.instansiLembaga ?? ''}'),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
