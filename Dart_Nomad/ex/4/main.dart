void main() {
  String? nico = 'nico'; //? 키워드로 null 이 들어올 수 있음을 미리 알려줌 코틀린이랑 비슷하다.
  nico = null;
  if(nico != null) {
    nico.isNotEmpty;
  }
}