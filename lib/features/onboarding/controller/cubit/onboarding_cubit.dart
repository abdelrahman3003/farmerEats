import 'package:bloc/bloc.dart';
import 'package:farmereats/gen/assets.gen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState.initial());
  int index = 0;
  List<String> backgroundImages = [
    Assets.images.qualityBackground.path,
    Assets.images.qualityBackground.path,
    Assets.images.qualityBackground.path,
  ];
  next() {
    index++;
    emit(OnboardingState.nextSuccess(index));
  }
}
