import 'package:auth_manager_flutter/core/auth_manager.dart';
import 'package:auth_manager_flutter/core/cache_manager.dart';
import 'package:auth_manager_flutter/home/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with CacheManager {
  String token = '';

  late UserModel? userModel;

  Future<void> getTokenCAche() async {
    token = await getToken() ?? '';
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    userModel = context.read<AuthenticationManager>().model;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${userModel?.name}')),
      body: CircleAvatar(
        backgroundImage: NetworkImage(userModel?.imageUrl ?? ''),
      ),
    );
  }
}
