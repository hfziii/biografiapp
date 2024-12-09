import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../theme/custom_button_style.dart';
import '../widgets/app_bar/appbar_leading_image.dart';
import '../widgets/app_bar/appbar_trailling_image.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../widgets/custom_elevated_button.dart';
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Bagian Background dan Foto Profil
              Stack(
                alignment: Alignment.center,
                children: [
                  // Background Image
                  CustomImageView(
                    imagePath: ImageConstant.imgBackground,
                    height: 332.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  // AppBar dengan imgBack dan imgMenu
                  Positioned(
                    top: 20.h,
                    left: 16.h,
                    child: GestureDetector(
                      onTap: () {
                        // Tambahkan aksi kembali jika diperlukan
                        Navigator.pop(context);
                      },
                      child: CustomImageView(
                        imagePath: ImageConstant.imgBack,
                        height: 24.h,
                        width: 24.h,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20.h,
                    right: 16.h,
                    child: GestureDetector(
                      onTap: () {
                        // Tambahkan aksi menu jika diperlukan
                      },
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMenu,
                        height: 24.h,
                        width: 24.h,
                      ),
                    ),
                  ),
                  // Foto Profil dan Nama
                  Column(
                    children: [
                      SizedBox(height: 50.h), // Jarak dari atas
                      // Foto Profil
                      CustomImageView(
                        imagePath: ImageConstant.imgPhoto,
                        height: 150.h,
                        width: 150.h,
                        radius: BorderRadius.circular(75.h),
                      ),
                      SizedBox(height: 16.h),
                      // Nama dan Tombol Edit
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.h),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.h),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "MUHAMAD HAFIZI",
                              style: TextStyle(
                                fontSize: 18.h,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1947AA),
                              ),
                            ),
                            SizedBox(width: 10.h),
                            CustomImageView(
                              imagePath: ImageConstant.imgEdit,
                              height: 24.h,
                              width: 24.h,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              // Konten Lainnya
              _buildProfileSection(context),
              _buildAchievementsSection(context),
              _buildCertificationSection(context),
            ],
          ),
        ),
      ),
    );
  }

  //Section Widget
  Widget _buildProfileSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(bottom: 136.h),
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 42.h,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        borderRadius: BorderRadiusStyle.roundedBorder50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8.h),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 6.h,
            ),
            decoration: BoxDecoration(
              color: appTheme.blue300,
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 4.h),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildContactInfoEmail(
                    context,
                    lockThree: ImageConstant.imgContact,
                    email: "lbl_tlp".tr,
                  ),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildContactInfoEmail(
                    context,
                    lockThree: ImageConstant.imgEmail,
                    email: "msg_gmail_com".tr,
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildContactInfoEmail(
                    context,
                    lockThree: ImageConstant.imgLoc,
                    email: "msg_bogor_jawa_barat".tr,
                  ),
                ),
                SizedBox(height: 12.h),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildContactInfoEmail(
                    context,
                    lockThree: ImageConstant.imgGithub,
                    email: "msg_github".tr,
                  ),
                ),
                SizedBox(height: 14.h),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildContactInfoEmail(
                    context,
                    lockThree: ImageConstant.imgLinkedin,
                    email: "msg_linkedin_com_in_muhamadhafizi".tr,
                  ),
                ),
                SizedBox(height: 18.h),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildContactInfoEmail(
                    context,
                    lockThree: ImageConstant.imgIg,
                    email: "lbl_mhfzyyy".tr,
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
                          "lbl_education".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.h,
                    vertical: 6.h,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.blue300,
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 4.h),
                      Padding(
                        padding: EdgeInsets.only(right: 20.h),
                        child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
                          selector: (state) => state.homeModelObj,
                          builder: (context, homeModelObj) {
                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: 14.h,
                                );
                              },
                              itemCount: homeModelObj
                                      ?.listdescriptionItemList.length ??
                                  0,
                              itemBuilder: (context, index) {
                                ListdescriptionItemModel model = homeModelObj
                                        ?.listdescriptionItemList[index] ??
                                    ListdescriptionItemModel();
                                return ListdescriptionItemWidget(
                                  model,
                                );
                              },
                            );
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.h),
          
          SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
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
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.zero,
                      color: appTheme.blue300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        decoration: BoxDecoration(
                          color: appTheme.blue300,
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Widget imgSkill
                            CustomImageView(
                              imagePath: ImageConstant.imgSkill,
                              height: 58.h,
                              width: 362.h,
                              alignment: Alignment.center,
                            ),
                            SizedBox(height: 16.h), // Jarak antara imgSkill dan Container berikutnya

                            // Container untuk listpriceItemList
                            Container(
                              margin: EdgeInsets.only(left: 35.h, right: 4.h),
                              width: double.maxFinite,
                              child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
                                selector: (state) => state.homeModelObj,
                                builder: (context, homeModelObj) {
                                  return SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Wrap(
                                      direction: Axis.horizontal,
                                      spacing: 19.h,
                                      children: List.generate(
                                        homeModelObj?.listpriceItemList.length ?? 0,
                                        (index) {
                                          ListpriceItemModel model =
                                              homeModelObj?.listpriceItemList[index] ??
                                                  ListpriceItemModel();
                                          return ListpriceItemWidget(model);
                                        },
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
                          "lbl_work_experience".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.h,
                    vertical: 6.h,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.blue300,
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 90.h),
                        child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
                          selector: (state) => state.homeModelObj,
                          builder: (context, homeModelObj) {
                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: 8.h,
                                );
                              },
                              itemCount:
                                  homeModelObj?.listfrontendItemList.length ??
                                      0,
                              itemBuilder: (context, index) {
                                ListfrontendItemModel model =
                                    homeModelObj?.listfrontendItemList[index] ??
                                        ListfrontendItemModel();
                                return ListfrontendItemWidget(
                                  model,
                                );
                              },
                            );
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          // SizedBox(height: 20.h),
          // SizedBox(
          //   height: 28.h,
          //   width: 224.h,
          // )
        ],
      ),
    );
  }

  //Section Widget Org  
  Widget _buildAchievementsSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_org".tr, 
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.h,
                    vertical: 6.h,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.blue300,
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 74.h),
                        child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
                          selector: (state) => state.homeModelObj,
                          builder: (context, homeModelObj) {
                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: 8.h,
                                );
                              },
                              itemCount:
                                  homeModelObj?.listgridOneItemList.length ?? 0,
                              itemBuilder: (context, index) {
                                ListgridOneItemModel model =
                                    homeModelObj?.listgridOneItemList[index] ??
                                        ListgridOneItemModel();
                                return ListgridOneItemWidget(
                                  model,
                                );
                              },
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  //Section Widget Certif
  Widget _buildCertificationSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 26.h),
      child: Column(
        children: [
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
                          "lbl_certification".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.h,
                    vertical: 6.h,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.blue300,
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 12.h),
                        child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
                          selector: (state) => state.homeModelObj,
                          builder: (context, homeModelObj) {
                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: 8.h,
                                );
                              },
                              itemCount:
                                  homeModelObj?.listdigitalItemList.length ?? 0,
                              itemBuilder: (context, index) {
                                ListdigitalItemModel model =
                                    homeModelObj?.listdigitalItemList[index] ??
                                        ListdigitalItemModel();
                                return ListdigitalItemWidget(
                                  model,
                                );
                              },
                            );
                          },
                        ),
                      )
                    ],
                  ),
                )
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
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "lbl_portfolio".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 32.h,
                    vertical: 10.h,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.blue300,
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_website_cipaku_smart".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 6.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgPorto1,
                        height: 184.h,
                        width: double.maxFinite,
                        radius: BorderRadius.circular(
                          10.h,
                        ),
                        margin: EdgeInsets.only(right: 6.h),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        "msg_website_halalin".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 2.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgPorto2,
                        height: 184.h,
                        width: double.maxFinite,
                        radius: BorderRadius.circular(
                          10.h,
                        ),
                        margin: EdgeInsets.only(right: 6.h),
                      ),
                      SizedBox(height: 6.h)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  //Common Widget
  Widget _buildContactInfoEmail(
    BuildContext context, {
    required String lockThree,
    required String email,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: lockThree,
          height: 30.h,
          width: 30.h,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 4.h,
            ),
            child: Text(
              email,
              style: theme.textTheme.bodySmall!.copyWith(
                color: theme.colorScheme.secondaryContainer,
              ),
            ),
          ),
        )
      ],
    );
  }
}
