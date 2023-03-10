import 'package:firebase_database/firebase_database.dart';

class DatabaseService {
  final FirebaseDatabase database = FirebaseDatabase.instance;

  void writeUser({
    required String userId,
    required Map<String, dynamic> data,
  }) async {
    try {
      // print(userId);
      // print(data);
      DatabaseReference _databaseReference = database.ref("users/$userId");

      await _databaseReference.set(data);
    } catch (e) {
      // print(e);
      rethrow;
    }
  }

  Future<bool> writeItem({
    required String userId,
    required String category,
    required Map<String, dynamic> data,
  }) async {
    try {
      // print(userId);
      // print(data);
      // print(category);
      String itemName = data['name'];
      DatabaseReference _databaseReference =
          database.ref("users/$userId/inventory");
      final newItemRef = _databaseReference.child(category).push();
      bool result = await checkItemOnce(
          userId: userId, category: category, itemName: itemName);
      if (result == false) {
        await newItemRef.update(data);
        return Future.value(true);
      } else {
        return Future.value(false);
      }

      // await newItemRef.update(data);
      // await _databaseReference.update(data);
    } catch (e) {
      // print(e);
      rethrow;
    }
  }

  Future<String> read({required String userId}) async {
    try {
      DatabaseReference _databaseReference = database.ref("users/$userId");
      final snapshot = await _databaseReference.get();
      if (snapshot.exists) {
        Map<String, dynamic> _snapshotValue =
            Map<String, dynamic>.from(snapshot.value as Map);
        return _snapshotValue['name'] ?? '';
      } else {
        return '';
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Map?> itemsbyCategory({
    required String userId,
    required String category,
  }) async {
    try {
      DatabaseReference _databaseReference =
          database.ref("users/$userId/inventory");
      final listOfitem = _databaseReference.child(category);
      final snapshot = await listOfitem.get();
      if (snapshot.exists) {
        Map<String, dynamic> _snapshotValue =
            Map<String, dynamic>.from(snapshot.value as Map);
        // _snapshotValue.forEach((key, value) {
        //   print(key);
        //   value.forEach((key, value) {
        //     print(value);
        //   });
        // });
        // return _snapshotValue['name'] ?? '';
        return _snapshotValue;
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> checkItemOnce({
    required String userId,
    required String category,
    required String itemName,
  }) async {
    try {
      DatabaseReference _databaseReference =
          database.ref("users/$userId/inventory");
      final listOfitem = _databaseReference.child(category);
      // DataSnapshot data = await listOfitem.get();
      // print(data.value);
// Run the query and check if there are any results

      final snapshot = await listOfitem.get();
      if (snapshot.exists) {
        Map<String, dynamic> _snapshotValue =
            Map<String, dynamic>.from(snapshot.value as Map);
        bool itemFound = false;
        _snapshotValue.forEach((key, value) {
          value.forEach((key, value) {
            // print(value);
            if (value == itemName) {
              // print(value);
              itemFound = true;
            }
          });
        });
        // print(Future.value(itemFound));
        return Future.value(itemFound);
      } else {
        return Future.value(false);
      }
    } catch (e) {
      // print(e.toString());
      // return Future.value(true);
      rethrow;
    }
  }
}
