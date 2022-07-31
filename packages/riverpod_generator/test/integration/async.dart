import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'async.g.dart';

@provider
Future<void> _publicProvider(ProviderRef<String> ref) async {
  ref.state = 'Hello world';
}

@provider
Future<void> __privateProvider(ProviderRef<String> ref) async {
  ref.state = 'Hello world';
}

@provider
class _PublicClassProvider extends _$PublicClassProvider {
  @override
  Future<void> build(Ref<String> ref) async {
    state = 'Hello world';
  }
}

@provider
class __PrivateClassProvider extends _$PrivateClassProvider {
  @override
  Future<void> build(Ref<String> ref) async {
    state = 'Hello world';
  }
}
