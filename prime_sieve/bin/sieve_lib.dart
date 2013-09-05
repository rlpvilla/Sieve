library sieve_lib;

import 'prime_list.dart';

Iterable twoFilter (Iterable iterable){
  return iterable.where((i) => (i & 1) == 1);
}

void backFilter (Iterable iterable){
  if (iterable.isEmpty) {
    return;
  }
  else {
    backFilter(filter(iterable));
  }
}

updatePrimeCount (int n){
  //prime_list.add(n);
  print(n);
}

Iterable filter (Iterable iterable){
  var n = iterable.first;
  updatePrimeCount (n);
  return iterable.where((i) => (i % n) != 0);
}

Function propagateFactorFunction (Iterable source){
  var n = source.first;
  updatePrimeCount(n);
  Iterable filter(Iterable iterable) {
    return iterable.where((i) => (i % n) != 0);
  }
  return filter;
}

Iterable sieve(int cap){
  var init = new Iterable.generate(cap+2, (i) => i+2);
  backFilter(twoFilter(init));
  
}