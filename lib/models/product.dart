import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final int userId;
  final String title;
  // final bool complete;

  const User({
    required this.id,
    required this.userId,
    required this.title,
    // required this.complete,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as int,
        userId: json['userId'] as int,
        title: json['title'] as String,
        // complete: json['complete'] as bool,
      );

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        id,
        userId,
        title,
        // complete,
      ];
}
