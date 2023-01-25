class User {
  String id;
  final String name;
  final int phone_number;
  final String spec;

  User({
    this.id = '',
    required this.name,
    required this.phone_number,
    required this.spec,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'phone_number': phone_number,
    'spec': spec,
  };
}