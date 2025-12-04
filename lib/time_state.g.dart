// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(timeRunner)
const timeRunnerProvider = TimeRunnerProvider._();

final class TimeRunnerProvider
    extends $FunctionalProvider<TimeHolder, TimeHolder, TimeHolder>
    with $Provider<TimeHolder> {
  const TimeRunnerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'timeRunnerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$timeRunnerHash();

  @$internal
  @override
  $ProviderElement<TimeHolder> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TimeHolder create(Ref ref) {
    return timeRunner(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TimeHolder value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TimeHolder>(value),
    );
  }
}

String _$timeRunnerHash() => r'00e23935adc9bf2df4d391368a28197240f602a3';
