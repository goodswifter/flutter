main(List<String> args) {
  
}

class Animal {
  int age;

  Animal(this.age);
}

class Dog extends Animal {
  String name;

  // 要实现父类的构造方法
  Dog(this.name, int age): super(age);
}