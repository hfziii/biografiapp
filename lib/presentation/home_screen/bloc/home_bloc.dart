import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:biografi/core/app_export.dart';
import '../models/home_model.dart';
import '../models/listdescription_item_model.dart';
import '../models/listdigital_item_model.dart';
import '../models/listfrontend_item_model.dart';
import '../models/listgrid_one_item_model.dart';
import '../models/listprice_item_model.dart';
part 'home_event.dart';
part 'home_state.dart';


class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(Homestate initialstate) : super(initialstate) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copywith(
        homeModelobj: state.homeModelobj?.copywith(
          listdescriptionItemList: fillListdescriptionItemList(),
          listpriceItemList: fillListpriceItemList(),
          listfrontendItemList: fillListfrontendItemList(),
          listgridoneItemList: fillListgridoneItemList(),
          listdigitalItemList: fillListdigitalItemList(),
        ),
      ),
    );
  }

  List<ListdescriptionItemModel> fillListdescriptionItemList() {
    return [
      ListdescriptionItemModel(
          description:
              "Computer Science - Pakuan University\nYear of 2022 - Present"),
      ListdescriptionItemModel(
          description:
              "Mathematics & Natural Science \nSMAN 1 Cibungbulang\nYear of 2022 - Present")
    ];
  }

  List<ListpriceItemModel> fillListpriceItemList() {
    return [
      ListpriceItemModel(price: "PHP"),
      ListpriceItemModel(price: "Javascript"),
      ListpriceItemModel(price: "HTML"),
      ListpriceItemModel(price: "CSS"),
      ListpriceItemModel(price: "GIT"),
      ListpriceItemModel(price: "Adobe\nIlustrator"),
      ListpriceItemModel(price: "Figma"),
      ListpriceItemModel(price: "Adobe\nPhotoshop")
    ];
  }

  List<ListfrontendItemModel> fillListfrontendItemList() {
    return [
      ListfrontendItemModel(
          frontend: "Frontend Developer (Part Time)\nExenesia\nYear of 2823"),
      ListfrontendItemModel(
          frontend:
              "Marketing Staff\nPT Surya Stretegi Investama\nYear of 2021 - 2022")
    ];
  }

  List<ListgridoneItemModel> filllistgridoneItemList() {
    return [
      ListgridoneItemModel(
          description:
              "Head of Web Division\r\nPPK Ormawa Unpak\r\nJune - October 2024"),
      ListgridoneItemModel(
          description:
              "Head of Publication Division\r\nCampus Expo \rPersada In Diversity\r\nFebruary 2823"),
      ListgridoneItemModel(
          description: "Event Division\r\nRaimuna Nasional XII\r\nAugust 2023")
    ];
  }

  List<ListdigitalItemModel> filllistdigitalItemList() {
    return [
      ListdigitalItemModel(
          digital: "Digital Marketing\nJabar Digital Academy\nMarch 2824"),
      ListdigitalItemModel(
          digital:
              "Junior Web Developer\nIndonesian Professional Certification (BNSP)\nOctober 2022"),
      ListdigitalItemModel(
          digital:
              "Middle Computer Operator Indonesian Professional Certification (BNSP)\nAugust 2022")
    ];
  }
}