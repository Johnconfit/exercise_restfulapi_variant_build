import 'package:dartz/dartz.dart';

import '../library/library.dart';

final characterRepoProvider = Provider<CharacterRepo>((ref) {
  final apiClient = ApiClient(ApiCall());
  return CharacterRepo(apiClient);
});

final characterViewModelProvider = StateNotifierProvider<CharacterViewModel,
    AsyncValue<Either<Failure, Character>>>((ref) {
  final characterRepo = ref.watch(characterRepoProvider);
  final configProvider = ref.watch(flavorVariantProvider);

  return CharacterViewModel(
      configFlavor: configProvider, dataRepo: characterRepo);
});
