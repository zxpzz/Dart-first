// 如果你开启了 空安全，变量在未声明为可空类型时不能为 null。
//你可以通过在类型后加上问号 (?) 将类型声明为可空。
//例如，int? 类型的变量可以是整型数字或 null。
//如果你 明确知道 一个表达式不会为空，但 Dart 不这么认为时，你可以在表达式后添加 ! 来断言表达式不为空（为空时将抛出异常）。
//例如：int x = nullableButNotNullInt!
void main(List<String> args) {
  int? s=null;
  print(s);
  // 如果你想要显式地声明允许任意类型，
  // 使用 Object?（如果你 开启了空安全）、 
  // Object 或者 特殊类型 dynamic 将检查延迟到运行时进行。
  Object? a=null;
  print(a);
  a=23;
  print(a);
  a='test';
  print(a);
  List<Object> ob=[2,"name",12];
  print(ob);
  // late 声明一个非空变量，但不在声明时初始化 /延迟初始化一个变量
  late Object la;
  la='22';
  print(la);
  // 如果你不想更改一个变量，可以使用关键字 final 或者 const 修饰变量，
  //这两个关键字可以替代 var 关键字或者加在一个具体的类型前。
  //一个 final 变量只可以被赋值一次；一个 const 变量是一个编译时常量 (const 变量同时也是 final 的)
  final Object f='22';
  var raw1=r'hello \n world';
  var raw2='hello \n world';
  print(raw1);//hello \n world
  print(raw2);//hello 
              //world


  // Dart 在 2.3 引入了 扩展操作符（...）和 空感知扩展操作符（...?），它们提供了一种将多个元素插入集合的简洁方法
  var list=[1,2,3];
  var list1=[6,...list];
  print(list);
  print(list1);
  var list2=null;
  var list3=[0,...?list2];
  print(list2);
  print(list3);

// Dart 还同时引入了 集合中的 if 和 集合中的 for 操作
  var list4=[0,1,2];
  var list5=[for(int i in list4) '我是${i}'];
  print(list5);
// 使用 [] 将一系列参数包裹起来，即可将其标记为位置参数
  String say(String from,String msg,[String? dev]){
    if(dev!=null){
      return dev;
    }
    return from+msg;
  }
  print(say('hello','nihao','dev'));
}