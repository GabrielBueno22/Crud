abstract class PermisionControl {
  Future<void> changePermisionLevel(int id, PermissonLevel newLevel);
}

enum PermissonLevel { admin, edit, visualizeAll }
