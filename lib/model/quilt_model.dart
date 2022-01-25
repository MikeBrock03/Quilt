class Quilt {
  Quilt({
    required this.id,
    required this.name,
    required this.balance,
    required this.members,
  });

  final int id;
  final String name;
  final int balance;
  final Map members;

  @override
  String toString() => '$name (id=$id)';
}
