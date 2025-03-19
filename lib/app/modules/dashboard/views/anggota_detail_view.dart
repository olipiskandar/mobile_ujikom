import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AnggotaDetailView extends GetView {
  const AnggotaDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnggotaDetailView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AnggotaDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
