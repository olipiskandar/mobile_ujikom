import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../../data/anggota_response.dart';

class AnggotaController extends GetxController {
  var isLoading = true.obs;
  var anggotaList = <Data>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchAnggota();
  }

  void fetchAnggota() async {
    try {
      isLoading.value = true;
      var response = await http.get(Uri.parse('BaseUrl.anggota')); // <- jika di emulator
      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body);
        var anggotaResponse = AnggotaResponse.fromJson(jsonData);
        anggotaList.value = anggotaResponse.data ?? [];
      } else {
        anggotaList.clear();
      }
    } catch (e) {
      anggotaList.clear();
    } finally {
      isLoading.value = false;
    }
  }
}
