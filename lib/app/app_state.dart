part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class AppChangeGeneralState extends AppState {}

class AppChangeModeState extends AppState {}
