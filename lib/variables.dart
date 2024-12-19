class IntegerWrapper {
  int coins;
  IntegerWrapper(this.coins);
  int get value => coins;
  set value(int newValue) {
    coins = newValue;
  }
}
