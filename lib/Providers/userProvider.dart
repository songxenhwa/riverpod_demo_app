import '../Models/userModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserNotifier extends Notifier<AppUser?> {
  @override
  AppUser? build() {
    return null;
  }

  void setUser(AppUser user) {
    state = user;
  }

  void clearUser() {
    state = null;
  }

  void updateUser({String? id, String? username, String? gender, int? age, DateTime? dob}) {
    final currentUser = state;
    if (currentUser == null) return;

    state = currentUser.copyWith(id: id, username: username, gender: gender, age: age, dob: dob);
  }

  final userProvider = NotifierProvider<UserNotifier, AppUser?>(UserNotifier.new);
}

/// to call it
// final user = ref.watch(userProvider);

/// to set it
// ref.read(userProvider.notifier).setUser(
// AppUser(
// id: '001',
// username: 'TREW',
// gender: 'Male',
// age: 26,
// dob: DateTime(1998, 5, 20),
// ),
// );

///to update it
// ref.read(userProvider.notifier).updateUser(
//                 age: user.age + 1,
//               );
