import 'package:flutter/material.dart';
import '../../domain/user_entity.dart';

class AuthProvider with ChangeNotifier {
  // Initialize repo from the data layer
  final AuthRepository _repository;
  //to track loading in our app's state.
  UserEntity? _currentUser;
  bool _isLoading = false;
  bool _userRegistered = false;
  String? _error;
  AuthProvider(this._repository);
  //! THE FOLLOWING ARE GETTER METHODS TO GET
  // THIS VARIABLES IN OTHER CLASSES !
  bool get isLoading => _isLoading;
  bool get userRegistered => _userRegistered;
  String? get error => _error;
  UserEntity? get currentUser => _currentUser;
  Future<void> login(String username, String password) async {
    _isLoading = true;
    _currentUser = null;
    notifyListeners();
    try {
      final UserModel user = await _repository.login(username, password);
      _currentUser = UserEntity(
        id: user.id,
        username: user.username,
        fullName: user.fullName,
        referralCode: user.referralCode,
        referredBy: user.referredBy,
        amount: user.amount,
        totalEarned: user.totalEarned,
        totalReferred: user.totalReferred,
      );
      _error = null;
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
