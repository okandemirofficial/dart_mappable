import '../../elements/class/target_class_mapper_element.dart';
import '../generator.dart';

mixin FromMapMixin on MapperGenerator<TargetClassMapperElement> {
  String generateFromMapMixin() {
    return '''
      @override
      ${element.className} fromMap(Map<String, dynamic> map) {
        return ${element.mapperName}.fromMap(map);
      }
    ''';
  }

  String generateFromJsonMixin() {
    return '''
      @override
      ${element.className} fromJson(String json) {
        return ${element.mapperName}.fromJson(json);
      }
    ''';
  }
}
