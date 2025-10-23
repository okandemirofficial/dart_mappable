import '../../elements/class/target_class_mapper_element.dart';
import '../generator.dart';

mixin EnsureInitializedMixin on MapperGenerator<TargetClassMapperElement> {
  String generateEnsureInitialized() {
    return '''
      @override
      void ensureInitialized() {
        ${element.mapperName}.ensureInitialized();
      }
    ''';
  }
}
