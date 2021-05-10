import 'package:auth_manager_flutter/home/model/user_model.dart';
import 'package:flutter/material.dart';

import 'package:auth_manager_flutter/core/cache_manager.dart';

import 'cache_manager.dart';

class AuthenticationManager extends CacheManager {
  BuildContext context;
  AuthenticationManager({
    required this.context,
  }) {
    fetchUserLogin();
  }

  bool isLogin = false;
  UserModel? model;

  void removeAllData() {}
  Future<void> fetchUserLogin() async {
    final token = await getToken();
    if (token != null) {
      isLogin = true;
    }
  }
}
