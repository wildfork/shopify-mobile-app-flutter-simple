import 'package:flutter_simple_shopify/models/src/checkout/line_item/line_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../json_helper.dart';

part 'line_items.freezed.dart';
part 'line_items.g.dart';

@freezed
class LineItems with _$LineItems {
  factory LineItems(
      {@JsonKey(fromJson: JsonHelper.lineItemsFromEdges)
          required List<LineItem> lineItemList}) = _LineItems;

  factory LineItems.fromJson(Map<String, dynamic> json) =>
      _$LineItemsFromJson(json);
}