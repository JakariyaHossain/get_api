import 'package:flutter/cupertino.dart';
import 'package:my_pars/models/product.dart';
import 'package:my_pars/services/api_service.dart';

class UserProvider extends ChangeNotifier {
  final _service = ApiSErvices();
  bool isLoading = false;
  List<User> _users = [];
  List<User> get users => _users;
  Future<void> getFetchData() async {
    isLoading = true;
    notifyListeners();
    final service = await _service.fetchData();
    _users = service;
    isLoading = false;
    notifyListeners();
  }
}
