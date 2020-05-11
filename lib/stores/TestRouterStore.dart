import 'package:mobx/mobx.dart';
part 'TestRouterStore.g.dart';


class TestRouterStore = _TestStore with _$TestRouterStore;

abstract class _TestStore with Store {
  @observable
  num count=0;

  num changeCount(){
    this.count++;
    print('改变后count>>>>>$count');
  }
}
