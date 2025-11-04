part of 'generate_school_code_repository.dart';

class GenerateSchoolCodeRepositoryImpl implements GenerateSchoolCodeRepository {
  GenerateSchoolCodeRepositoryImpl({required DioService dioService})
      : _client = GenerateSchoolCodeClient(dioService.dio);

  final GenerateSchoolCodeClient _client;

  @override
  TaskEither<String, SchoolCodeResponse> generateSchoolCode(
      GenerateSchoolCodeRequest request) {
    return TaskEither.tryCatch(
      () => _client.generateSchoolCode(request),
      (error, stackTrace) =>
          AppHttpClientException.parseException(error, s: stackTrace),
    );
  }
}

final generateSchoolCodeRepositoryProvider =
    Provider<GenerateSchoolCodeRepository>(
  (ref) => GenerateSchoolCodeRepositoryImpl(
    dioService: ref.watch(dioServiceProvider),
  ),
);