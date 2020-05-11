import 'package:json_annotation/json_annotation.dart';

part 'common.g.dart';


@JsonSerializable()
class common extends Object {

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'data')
  List<Data> data;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'timestamp')
  String timestamp;

  @JsonKey(name: 'success')
  bool success;

  common(this.status,this.message,this.data,this.type,this.timestamp,this.success,);

  factory common.fromJson(Map<String, dynamic> srcJson) => _$commonFromJson(srcJson);

  Map<String, dynamic> toJson() => _$commonToJson(this);

}


@JsonSerializable()
class Data extends Object {

  @JsonKey(name: 'symbol')
  String symbol;

  @JsonKey(name: 'baseCoin')
  String baseCoin;

  @JsonKey(name: 'quoteCoin')
  String quoteCoin;

  @JsonKey(name: 'openPrice')
  double openPrice;

  @JsonKey(name: 'upPriceRange')
  double upPriceRange;

  @JsonKey(name: 'downPriceRange')
  double downPriceRange;

  @JsonKey(name: 'feeRate')
  double feeRate;

  @JsonKey(name: 'takerFeeRate')
  double takerFeeRate;

  @JsonKey(name: 'makerFeeRate')
  double makerFeeRate;

  @JsonKey(name: 'priceRange')
  double priceRange;

  @JsonKey(name: 'pricePrecision')
  int pricePrecision;

  @JsonKey(name: 'volumePrecision')
  int volumePrecision;

  @JsonKey(name: 'depthPrecisionList')
  String depthPrecisionList;

  @JsonKey(name: 'minPrice')
  double minPrice;

  @JsonKey(name: 'minVolume')
  int minVolume;

  @JsonKey(name: 'minAmount')
  double minAmount;

  @JsonKey(name: 'buyMaxVolume')
  int buyMaxVolume;

  @JsonKey(name: 'sellMaxVolume')
  int sellMaxVolume;

  @JsonKey(name: 'fresh')
  bool fresh;

  @JsonKey(name: 'hot')
  bool hot;

  @JsonKey(name: 'free')
  bool free;

  @JsonKey(name: 'weight')
  int weight;

  @JsonKey(name: 'symbolType')
  String symbolType;

  @JsonKey(name: 'symbolTypeName')
  String symbolTypeName;

  @JsonKey(name: 'enabledMarket')
  bool enabledMarket;

  @JsonKey(name: 'enabledLimit')
  bool enabledLimit;

  @JsonKey(name: 'openDate')
  String openDate;

  @JsonKey(name: 'depthList')
  List<DepthList> depthList;

  Data(this.symbol,this.baseCoin,this.quoteCoin,this.openPrice,this.upPriceRange,this.downPriceRange,this.feeRate,this.takerFeeRate,this.makerFeeRate,this.priceRange,this.pricePrecision,this.volumePrecision,this.depthPrecisionList,this.minPrice,this.minVolume,this.minAmount,this.buyMaxVolume,this.sellMaxVolume,this.fresh,this.hot,this.free,this.weight,this.symbolType,this.symbolTypeName,this.enabledMarket,this.enabledLimit,this.openDate,this.depthList,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}


@JsonSerializable()
class DepthList extends Object {

  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'precision')
  int precision;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'value')
  double value;

  DepthList(this.type,this.precision,this.name,this.value,);

  factory DepthList.fromJson(Map<String, dynamic> srcJson) => _$DepthListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DepthListToJson(this);

}


