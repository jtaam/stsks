import 'package:flutter/foundation.dart';

import '../settings/api_endpoints.dart';
import '../services/http_requests_service.dart';

class UserController with ChangeNotifier {
  HttpRequestsService httpRequestsService = HttpRequestsService();

  void index() async {
    print("fetchUsers");
    var endpoint = USERS;
    var result = await httpRequestsService
        .requestApi(object: {}, endpoint: endpoint, reqMethod: "GET");
    print("fetchUsers");
    print(result);
  }
}
