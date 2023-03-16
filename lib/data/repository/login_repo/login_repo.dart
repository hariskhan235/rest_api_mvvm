import 'package:rest_api/data/network/networ_api_service.dart';
import 'package:rest_api/res/appUrl/app_urls.dart';

class LoginRepository {
  final _apiService = NetworkApiService();

  Future<dynamic> postApi(var data) async {
    dynamic response = _apiService.postApi(data, AppUrls.loginApi);
    return response;
  }
}
