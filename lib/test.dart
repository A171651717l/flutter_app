void main() {
  var b = null;
  int c = 8;
  double d = 9;

//  b??=23;
  d /= 3;
  print(d);
  print(b ?? 9);
  var h = c++;
  print(c);
  print(h);
  List arr = ['4', '7'];
  arr.add('9');
  arr.addAll(['8', '0']); //拼接数组
  print(arr.length);
  print(arr.isEmpty);
  print(arr.isNotEmpty);
  print(arr.reversed.toList());
  print([...arr]);
  arr.fillRange(0, 2, 'aa');
  arr.insert(2, 'cc');
  arr.insertAll(3, ['HH', 'OO']);
//  arr.remove('7');
//  arr.removeAt(0);
  print(arr);
  var amap = {
    'name': 'test',
    'age': 18
  };
  print(amap.values.toList());
  print(amap.isNotEmpty);
  print(amap.isEmpty);
  amap.addAll({
    'flag': '敲代码',
    'height': 500
  });
  amap.remove('flag');
  print(amap);
  print(amap.containsKey('flag'));
  List test=[8,9,7];
  print(amap.containsValue(500));
  var newLIST = test.map((v) {
    return v * 2;
  }).toList();
  print('new>>>>$newLIST');
 var newT= test.where((v){
    return v>8;
  }).toList();
 print('newt>>>$newT');

 var jj=new Set();
 jj.addAll([5,6,7,6,5]);
 print('set》》》》${jj}');
 print('set》》》》${[...jj]}');
}
