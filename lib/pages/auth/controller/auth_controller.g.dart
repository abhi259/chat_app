// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AuthControllerStateCWProxy {
  AuthControllerState isLoading(bool isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthControllerState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthControllerState(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthControllerState call({
    bool? isLoading,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAuthControllerState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAuthControllerState.copyWith.fieldName(...)`
class _$AuthControllerStateCWProxyImpl implements _$AuthControllerStateCWProxy {
  const _$AuthControllerStateCWProxyImpl(this._value);

  final AuthControllerState _value;

  @override
  AuthControllerState isLoading(bool isLoading) => this(isLoading: isLoading);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthControllerState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthControllerState(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthControllerState call({
    Object? isLoading = const $CopyWithPlaceholder(),
  }) {
    return AuthControllerState(
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
    );
  }
}

extension $AuthControllerStateCopyWith on AuthControllerState {
  /// Returns a callable class that can be used as follows: `instanceOfAuthControllerState.copyWith(...)` or like so:`instanceOfAuthControllerState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AuthControllerStateCWProxy get copyWith =>
      _$AuthControllerStateCWProxyImpl(this);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authControllerHash() => r'f615dc15ae3ead1d3aea676b2aa61513bdb3a932';

/// See also [AuthController].
@ProviderFor(AuthController)
final authControllerProvider =
    AutoDisposeNotifierProvider<AuthController, AuthControllerState>.internal(
  AuthController.new,
  name: r'authControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AuthController = AutoDisposeNotifier<AuthControllerState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
