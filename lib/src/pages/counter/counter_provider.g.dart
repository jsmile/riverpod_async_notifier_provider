// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterAutoFamiAsynNotiHash() =>
    r'5c6f98c89a09bbafd266587c399b412e301251e8';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$CounterAutoFamiAsynNoti
    extends BuildlessAutoDisposeAsyncNotifier<int> {
  late final int initialValue;

  FutureOr<int> build(
    int initialValue,
  );
}

/// See also [CounterAutoFamiAsynNoti].
@ProviderFor(CounterAutoFamiAsynNoti)
const counterAutoFamiAsynNotiProvider = CounterAutoFamiAsynNotiFamily();

/// See also [CounterAutoFamiAsynNoti].
class CounterAutoFamiAsynNotiFamily extends Family<AsyncValue<int>> {
  /// See also [CounterAutoFamiAsynNoti].
  const CounterAutoFamiAsynNotiFamily();

  /// See also [CounterAutoFamiAsynNoti].
  CounterAutoFamiAsynNotiProvider call(
    int initialValue,
  ) {
    return CounterAutoFamiAsynNotiProvider(
      initialValue,
    );
  }

  @override
  CounterAutoFamiAsynNotiProvider getProviderOverride(
    covariant CounterAutoFamiAsynNotiProvider provider,
  ) {
    return call(
      provider.initialValue,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'counterAutoFamiAsynNotiProvider';
}

/// See also [CounterAutoFamiAsynNoti].
class CounterAutoFamiAsynNotiProvider
    extends AutoDisposeAsyncNotifierProviderImpl<CounterAutoFamiAsynNoti, int> {
  /// See also [CounterAutoFamiAsynNoti].
  CounterAutoFamiAsynNotiProvider(
    int initialValue,
  ) : this._internal(
          () => CounterAutoFamiAsynNoti()..initialValue = initialValue,
          from: counterAutoFamiAsynNotiProvider,
          name: r'counterAutoFamiAsynNotiProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$counterAutoFamiAsynNotiHash,
          dependencies: CounterAutoFamiAsynNotiFamily._dependencies,
          allTransitiveDependencies:
              CounterAutoFamiAsynNotiFamily._allTransitiveDependencies,
          initialValue: initialValue,
        );

  CounterAutoFamiAsynNotiProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialValue,
  }) : super.internal();

  final int initialValue;

  @override
  FutureOr<int> runNotifierBuild(
    covariant CounterAutoFamiAsynNoti notifier,
  ) {
    return notifier.build(
      initialValue,
    );
  }

  @override
  Override overrideWith(CounterAutoFamiAsynNoti Function() create) {
    return ProviderOverride(
      origin: this,
      override: CounterAutoFamiAsynNotiProvider._internal(
        () => create()..initialValue = initialValue,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initialValue: initialValue,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<CounterAutoFamiAsynNoti, int>
      createElement() {
    return _CounterAutoFamiAsynNotiProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CounterAutoFamiAsynNotiProvider &&
        other.initialValue == initialValue;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialValue.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CounterAutoFamiAsynNotiRef on AutoDisposeAsyncNotifierProviderRef<int> {
  /// The parameter `initialValue` of this provider.
  int get initialValue;
}

class _CounterAutoFamiAsynNotiProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CounterAutoFamiAsynNoti,
        int> with CounterAutoFamiAsynNotiRef {
  _CounterAutoFamiAsynNotiProviderElement(super.provider);

  @override
  int get initialValue =>
      (origin as CounterAutoFamiAsynNotiProvider).initialValue;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
