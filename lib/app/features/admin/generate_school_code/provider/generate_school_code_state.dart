import 'package:equatable/equatable.dart';
import 'package:spot_on/app/features/admin/generate_school_code/model/generate_school_code_response/school_code_response.dart';

class GenerateSchoolCodeState extends Equatable {
  final SchoolCode? schoolCode;

  const GenerateSchoolCodeState({this.schoolCode});

  GenerateSchoolCodeState copyWith({
    SchoolCode? schoolCode,
  }) {
    return GenerateSchoolCodeState(
      schoolCode: schoolCode ?? this.schoolCode,
    );
  }

  @override
  List<Object?> get props => [schoolCode];
}