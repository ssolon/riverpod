// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(fetchConfiguration)
const fetchConfigurationProvider = FetchConfigurationProvider._();

final class FetchConfigurationProvider extends $FunctionalProvider<
        AsyncValue<Configuration>, Configuration, FutureOr<Configuration>>
    with $FutureModifier<Configuration>, $FutureProvider<Configuration> {
  const FetchConfigurationProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'fetchConfigurationProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$fetchConfigurationHash();

  @$internal
  @override
  $FutureProviderElement<Configuration> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Configuration> create(Ref ref) {
    return fetchConfiguration(ref);
  }
}

String _$fetchConfigurationHash() =>
    r'f18dd06ced5e58734c6fd925e5614c34e94d1b9e';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
