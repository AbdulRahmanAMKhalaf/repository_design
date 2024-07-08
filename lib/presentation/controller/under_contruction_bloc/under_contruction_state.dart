part of 'under_contruction_bloc.dart';

@immutable
sealed class UnderContructionState {}

final class UnderContructionInitialState extends UnderContructionState {}
final class ChangeSelectingTypeLoadingState extends UnderContructionState {}
final class ChangeSelectingTypeSuccessfulState extends UnderContructionState {}
final class ChangeSelectingTypeErrorState extends UnderContructionState {}