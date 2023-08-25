import 'package:dartz/dartz.dart';

import '../../library/library.dart';

class CharacterViewModel
    extends StateNotifier<AsyncValue<Either<Failure, Character>>> {
  final CharacterRepo dataRepo;
  final ConfigFlavor configFlavor;

  CharacterViewModel({required this.dataRepo, required this.configFlavor})
      : super(const AsyncValue.loading()) {
    fetchData();
  }

  Future<void> fetchData() async {
    final result = await dataRepo.fetchData(configFlavor.urlApi);
    state = AsyncValue.data(result);
  }
}
