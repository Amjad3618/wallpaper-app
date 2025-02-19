import 'package:get/get.dart';
import 'package:portfolio/services/pixabay_api_service.dart';

class PixabayController extends GetxController {
  final PixabayApiService _apiService = Get.put(PixabayApiService());
  
  final RxList<dynamic> images = <dynamic>[].obs;
  final RxBool isLoading = true.obs;
  final RxString searchQuery = ''.obs;
  final RxString errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchImages(searchQuery.value);
  }

  Future<void> fetchImages(String query) async {
    try {
      isLoading.value = true;
      errorMessage.value = '';

      final data = await _apiService.fetchImages(query);
      
      if (data['totalHits'] > 0) {
        images.value = data['hits'];
      } else {
        images.clear();
        errorMessage.value = 'No images found for "$query"';
      }
    } catch (e) {
      images.clear();
      errorMessage.value = 'Error: ${e.toString()}';
      print('Error fetching images: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void updateSearchQuery(String query) {
    searchQuery.value = query;
    if (query.isNotEmpty) {
      fetchImages(query);
    }
  }
}