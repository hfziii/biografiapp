import 'package:equatable/equatable.dart';

/// This class is used in the listdigital_item_widget screen.
// ignore_for_file: must_be_immutable
class ListdigitalItemModel extends Equatable {
  ListdigitalItemModel({this.digital, this.id}) {
    digital = digital ??
        "Digital Marketing\nJabar Digital Academy\nMarch 2024";
    id = id ?? "";
  }

  String? digital;
  String? id;

  ListdigitalItemModel copyWith({
    String? digital,
    String? id,
  }) {
    return ListdigitalItemModel(
      digital: digital ?? this.digital,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [digital, id];
}
