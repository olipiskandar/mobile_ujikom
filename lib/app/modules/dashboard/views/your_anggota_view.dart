// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

class YourAnggotaView extends GetView {
  const YourAnggotaView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YourAnggotaView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'YourAnggotaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
