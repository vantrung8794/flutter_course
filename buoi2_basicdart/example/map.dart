void main() {
  Map<String, int> dict = {
    'one': 1,
    'two': 2,
  };

  Map<String, int> dict2 = {
    'three': 3,
    'four': 4,
  };

  dict.addAll(dict2);
  dict['aaaa'] = 20;
  print(dict);
}
