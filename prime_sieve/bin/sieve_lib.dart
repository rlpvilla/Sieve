library sieve_lib;

Iterable twoFilter (Iterable iterable){
  return iterable.where((i) => i & 1);
}

void emptyFilter (Iterable iterable){
  if (iterable.isEmpty) {
    return;
  }
  else {
    propagateFactorFunction(iterable);
  }
}

Function propagateFactorFunction (Iterable source){
  var n = source.first;
  Iterable filter(Iterable iterable) {
    return iterable.where((i) => i % n != 0);
  }
  return filter;
}

Iterable sieve(int cap){
  var init = new Iterable.generate(cap, (i) => i+1);
  twoFilter(init);
  
}