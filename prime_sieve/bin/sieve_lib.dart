library sieve_lib;

import 'prime_list.dart';

filter (List numlist, int prime, int cap){
  for (int i = prime*2; i < cap; i += prime){
    numlist[i] = 0;
  }
  return;
}

List sieve(int cap){
  var init = new List.filled(cap+1, 1);
  init[0] = 0;
  init[1] = 0;
  for (var j = 2; j <= cap; j++){
    if (init[j] == 1){
      filter(init, j, cap+1);
    }
  }
  return(init);
}

List evaluateSieve (List sievelist){
  var result = new List();
  for (int i = 2; i < sievelist.length-1; i++){
    if (sievelist[i] == 1){
      result.add(i);
    }
  }
  return(result);
}