part of 'home_bloc.dart';

// ignore: must_be_immutable
class HomeState extends Equatable {
  HomeState({this.homeModelObj});

  HomeModel? homeModelObj;

  @override
  List<Object?> get props => [homeModelObj];
  HomeState copywith({HomeModel? homeModelObj}) {
    return HomeState(
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}
