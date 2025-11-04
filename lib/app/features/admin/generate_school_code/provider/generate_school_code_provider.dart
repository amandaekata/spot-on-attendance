import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spot_on/app/core/utils/loading_utils/i_loading_service.dart';
import 'package:spot_on/app/core/utils/loading_utils/loading_service_impl.dart';
import 'package:spot_on/app/features/admin/generate_school_code/model/generate_school_code_request/generate_school_code_request.dart';
import 'package:spot_on/app/features/admin/generate_school_code/provider/generate_school_code_state.dart';
import 'package:spot_on/app/features/admin/generate_school_code/repository/generate_school_code_repository.dart';

class GenerateSchoolCodeNotifier extends StateNotifier<GenerateSchoolCodeState> {
  GenerateSchoolCodeNotifier({
    required ILoadingService loadingService,
    required GenerateSchoolCodeRepository repository,
  })  : _loadingService = loadingService,
        _repository = repository,
        super(const GenerateSchoolCodeState());

  final ILoadingService _loadingService;
  final GenerateSchoolCodeRepository _repository;

  Future<bool> generateCode() async {
    bool success = false;
    try {
      _loadingService.showLoading();
      const request = GenerateSchoolCodeRequest(expiresInMinutes: 1);
      final response = await _repository.generateSchoolCode(request).run();

      response.fold(
        (l) {
          _loadingService.showError(l);
          log(l);
        },
        (r) {
          log(r.schoolCode.toString());
          state = state.copyWith(schoolCode: r.schoolCode);
          _loadingService.dismiss();
          success = true;
        },
      );
    } catch (e) {
      log(e.toString());
      _loadingService.showError(e.toString());
      success = false;
    }
    return success;
  }
}

final generateSchoolCodeProvider =
    StateNotifierProvider<GenerateSchoolCodeNotifier, GenerateSchoolCodeState>(
  (ref) => GenerateSchoolCodeNotifier(
    loadingService: ref.watch(loadingServiceProvider),
    repository: ref.watch(generateSchoolCodeRepositoryProvider),
  ),
);