bool palindromo (String possivelmentePalindromo){
  String result = "";
  for (int i = possivelmentePalindromo.length - 1; i >= 0; i-- ){
    result += possivelmentePalindromo[i];
  }
  print(result);
  return result == possivelmentePalindromo;
}

void main (){
  print(palindromo("beatriz")); 
  print(palindromo("ovo"));
}
  