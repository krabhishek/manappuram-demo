import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DevTrainingProjectFirebaseUser {
  DevTrainingProjectFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DevTrainingProjectFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DevTrainingProjectFirebaseUser> devTrainingProjectFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DevTrainingProjectFirebaseUser>(
            (user) => currentUser = DevTrainingProjectFirebaseUser(user));
