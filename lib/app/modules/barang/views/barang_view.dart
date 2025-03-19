import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/barang_controller.dart';

class BarangView extends GetView<BarangController> {
  const BarangView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BarangView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BarangView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
