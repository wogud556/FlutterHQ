void main() {
  String? nico = 'nico'; //? 키워드로 null 이 들어올 수 있음을 미리 알려줌 코틀린이랑 비슷하다.
  nico = null;
  if(nico != null) { // 이때 dart는 nico가 확실히 null 이라는 사실을 알게됨
    nico.isNotEmpty;
  }
}