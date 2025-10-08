import '../../dart_mappable.dart';

mixin MappableBase<T> {
  String toJson();

  Map<String, dynamic> toMap();

  T fromMap(Map<String, dynamic> map);

  T fromJson(String json);

  @override
  String toString();

  @override
  bool operator ==(Object other);

  @override
  int get hashCode;

  ClassCopyWith<T, T, T> get copyWith;
}
