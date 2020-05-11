// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

common _$commonFromJson(Map<String, dynamic> json) {
  return common(
    json['status'] as int,
    json['message'] as String,
    (json['data'] as List)
        ?.map(
            (e) => e == null ? null : Data.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['type'] as String,
    json['timestamp'] as String,
    json['success'] as bool,
  );
}

Map<String, dynamic> _$commonToJson(common instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'type': instance.type,
      'timestamp': instance.timestamp,
      'success': instance.success,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    json['symbol'] as String,
    json['baseCoin'] as String,
    json['quoteCoin'] as String,
    (json['openPrice'] as num)?.toDouble(),
    (json['upPriceRange'] as num)?.toDouble(),
    (json['downPriceRange'] as num)?.toDouble(),
    (json['feeRate'] as num)?.toDouble(),
    (json['takerFeeRate'] as num)?.toDouble(),
    (json['makerFeeRate'] as num)?.toDouble(),
    (json['priceRange'] as num)?.toDouble(),
    json['pricePrecision'] as int,
    json['volumePrecision'] as int,
    json['depthPrecisionList'] as String,
    (json['minPrice'] as num)?.toDouble(),
    json['minVolume'] as int,
    (json['minAmount'] as num)?.toDouble(),
    json['buyMaxVolume'] as int,
    json['sellMaxVolume'] as int,
    json['fresh'] as bool,
    json['hot'] as bool,
    json['free'] as bool,
    json['weight'] as int,
    json['symbolType'] as String,
    json['symbolTypeName'] as String,
    json['enabledMarket'] as bool,
    json['enabledLimit'] as bool,
    json['openDate'] as String,
    (json['depthList'] as List)
        ?.map((e) =>
            e == null ? null : DepthList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'baseCoin': instance.baseCoin,
      'quoteCoin': instance.quoteCoin,
      'openPrice': instance.openPrice,
      'upPriceRange': instance.upPriceRange,
      'downPriceRange': instance.downPriceRange,
      'feeRate': instance.feeRate,
      'takerFeeRate': instance.takerFeeRate,
      'makerFeeRate': instance.makerFeeRate,
      'priceRange': instance.priceRange,
      'pricePrecision': instance.pricePrecision,
      'volumePrecision': instance.volumePrecision,
      'depthPrecisionList': instance.depthPrecisionList,
      'minPrice': instance.minPrice,
      'minVolume': instance.minVolume,
      'minAmount': instance.minAmount,
      'buyMaxVolume': instance.buyMaxVolume,
      'sellMaxVolume': instance.sellMaxVolume,
      'fresh': instance.fresh,
      'hot': instance.hot,
      'free': instance.free,
      'weight': instance.weight,
      'symbolType': instance.symbolType,
      'symbolTypeName': instance.symbolTypeName,
      'enabledMarket': instance.enabledMarket,
      'enabledLimit': instance.enabledLimit,
      'openDate': instance.openDate,
      'depthList': instance.depthList,
    };

DepthList _$DepthListFromJson(Map<String, dynamic> json) {
  return DepthList(
    json['type'] as int,
    json['precision'] as int,
    json['name'] as String,
    (json['value'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$DepthListToJson(DepthList instance) => <String, dynamic>{
      'type': instance.type,
      'precision': instance.precision,
      'name': instance.name,
      'value': instance.value,
    };
