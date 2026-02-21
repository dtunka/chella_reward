import 'package:flutter/material.dart';

class UserEntity {
  final String id;
  final String fullName;
  final String username;
  final String? referralCode;
  final String? referredBy;
  final double? amount;
  final double totalEarned;
  final double? totalReferred;
  
  UserEntity({
    // this.accessToken,
    required this.id,
    required this.fullName,
    required this.username,
    this.referralCode,
    this.referredBy,
    this.amount,
    required this.totalEarned,
    this.totalReferred,
    
  });
  //user welcomer business logic
  String welcomeUser() {
    return 'welcome back $username!';
  }
}
