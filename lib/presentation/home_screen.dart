// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../theme/';
import '../widgets/';
import '../widgets/';
import '../widgets/';
import '../widgets/';
import '../presentation/home_screen/bloc/home_bloc.dart';
import '../presentation/home_screen/models/home_model.dart';
import '../presentation/home_screen/models/listdescription_item_model.dart';
import '../presentation/home_screen/models/listdigital_item_model.dart';
import '../presentation/home_screen/models/listfrontend_item_model.dart';
import '../presentation/home_screen/models/listgrid_one_item_model.dart';
import '../presentation/home_screen/models/listprice_item_model.dart';
import '../presentation/home_screen/widgets/listdescription_item_widget.dart';
import '../presentation/home_screen/widgets/listdigital_item_widget.dart';
import '../presentation/home_screen/widgets/listfrontend_item_widget.dart';
import '../presentation/home_screen/widgets/listgrid_one_item_widget.dart';
import '../presentation/home_screen/widgets/listprice_item_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorscheme.secondaryContainer,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              height: 2132.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBackground,
                    height: 332.h,
                    width: double.maxFinite,
                    alignment: Alignment.topCenter,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 1328.h,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              _buildMainContent(context),
                              _buildProfileSection(context),
                              CustomElevatedButton(
                                width: 288.h,
                                text: "lbl_muhamad_hafizi".tr,
                                margin: EdgeInsets.only(top: 230.h),
                                righticon: Container(),
                                margin: EdgeInsets.only(left: 10.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgEdit,
                                  height: 28.h,
                                  width: 28.h,
                                  fit: BoxFit.contain,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildAchievementsSection(context),
                            SizedBox(height: 20.h),
                            _buildCertificationsSection(context),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget Profil
  Widget _buildMainContent(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 24.h),
        decoration: BoxDecoration(
          color: appTheme.cyan00bc,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(
              leadingWidth: 20.h,
              leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgBack,
                margin: EdgeInsets.only(left: 16.h),
              ),
              actions: [
                AppbarTrailingImage(
                  imagePath: ImageConstant.imgMenu,
                  height: 18.h,
                  margin: EdgeInsets.only(right: 17.h),
                ),
              ],
            ),
            SizedBox(height: 18.h),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 26.h),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPhoto,
                    height: 158.h,
                    width: 152.h,
                    radius: BorderRadius.circular(74.h),
                  ),
                ],
              ),
            ),
            SizedBox(height: 658.h),
          ],
        ),
      ),
    );
  }

  /// Section Widget Profile
  Widget _buildProfileSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(bottom: 136.h),
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 42.h),
      decoration: BoxDecoration(),
      color: theme.colorScheme.secondaryContainer,
      borderRadius: BorderRadiusStyle.roundedBorder50,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8.h),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 6.h),
            decoration: BoxDecoration(),
            color: appTheme.blue300,
            borderRadius: BorderRadiusStyle.roundedBorder10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 4.h),
                SizedBox(
                  width: double.maxFinite,
                  child: buildContactInfoEmail(
                    context,
                    lockThree: ImageConstant.imgLock,
                    email: "lbl_085157181162".tr,
                  ),
                ),
                SizedBox(height: 18.h),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildContactInfoEmail(
                    context,
                    lockThree: ImageConstant.imgLockSecondaryContainer,
                    email: "msg_muhamad_hafizi372_gmail_com".tr,
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: double.maxFinite,
                  child: buildContactInfoEmail(
                    context,
                    lockThree: ImageConstant.imgLinkedin,
                    email: "msg_bogor_jawa_barat".tr,
                  ),
                ),
                SizedBox(height: 12.h),
                SizedBox(
                  width: double.maxFinite,
                  child: buildContactInfoEmail(
                    context,
                    lockThree: ImageConstant.imgMdiGithub,
                    email: "msg_github_com_hfziii".tr,
                  ),
                ),
                SizedBox(height: 14.h),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildContactInfoEmail(
                    context,
                    lockThree: ImageConstant.imgLink,
                    email: "msg_linkedin_con_in_muhamadhafizi".tr,
                  ),
                ),
                SizedBox(height: 18.h),
                SizedBox(
                  width: double.maxFinite,
                  child: buildContactInfoEmail(
                    context,
                    lockThree: ImageConstant.imgInfo,
                    email: "lbl_mhfzyyy".tr,
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            VerticalDivider(
                              width: 4.h,
                              thickness: 4.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text(
                                "lbl_education".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 6.h),
                        decoration: BoxDecoration(),
                        color: appTheme.blue300,
                        borderRadius: BorderRadiusStyle.roundedBorder18,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 4.h),
                            Padding(
                              padding: EdgeInsets.only(right: 52.h),
                              child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
                                selector: (state) => state.homeModelObj,
                                builder: (context, homeModelObj) {
                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox();
                                    },
                                    itemCount: homeModelObj?.listdescriptionItemList.length ?? 0,
                                    itemBuilder: (context, index) {
                                      ListdescriptionItemModel model =
                                          homeModelObj?.listdescriptionItemList[index] ?? ListdescriptionItemModel();
                                      return ListdescriptionItemWidget(model);
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            VerticalDivider(
                              width: 4.h,
                              thickness: 4.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text(
                                "lbl_skill".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.h),
                      SizedBox(
                        width: double.maxFinite,
                        child: Column(
                          children: [
                            BlocSelector<HomeBloc, HomeState, HomeModel?>(
                              selector: (state) => state.homeModelObj,
                              builder: (context, homeModelObj) {
                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox();
                                  },
                                  itemCount: homeModelObj?.listgridOneItemList.length ?? 0,
                                  itemBuilder: (context, index) {
                                    ListgridOneItemModel model =
                                        homeModelObj?.listgridOneItemList[index] ?? ListgridOneItemModel();
                                    return ListgridOneItemWidget(model);
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAchievementsSection(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, HomeModel?>(
      selector: (state) => state.homeModelObj,
      builder: (context, homeModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox();
          },
          itemCount: homeModelObj?.listpriceItemList.length ?? 0,
          itemBuilder: (context, index) {
            ListpriceItemModel model =
                homeModelObj?.listpriceItemList[index] ?? ListpriceItemModel();
            return ListpriceItemWidget(model);
          },
        );
      },
    );
  }

  Widget _buildCertificationsSection(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, HomeModel?>(
      selector: (state) => state.homeModelObj,
      builder: (context, homeModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox();
          },
          itemCount: homeModelObj?.listfrontendItemList.length ?? 0,
          itemBuilder: (context, index) {
            ListfrontendItemModel model =
                homeModelObj?.listfrontendItemList[index] ?? ListfrontendItemModel();
            return ListfrontendItemWidget(model);
          },
        );
      },
    );
  }

  Widget _buildContactInfoEmail(BuildContext context,
      {required String lockThree, required String email}) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: lockThree,
            height: 24.h,
            width: 24.h,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              email,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}

class HomeInitialPageState extends StatelessWidget {
  final HomeScreen homeScreen;
  const HomeInitialPageState({Key? key, required this.homeScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is HomeInitialState) {
          homeScreen.builder(context);
        }
      },
      child: homeScreen.builder(context),
    );
  }
}
