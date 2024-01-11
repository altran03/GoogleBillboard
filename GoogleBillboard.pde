boolean primefound = false;
public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{ 
  int i = 1;
  String digits = e.substring(2,12);
  double dNum = Double.parseDouble(digits);
  //System.out.println(digits);
  //System.out.println(dNum);
  while (primefound == false){
  if (isPrime(dNum)){
      System.out.println(digits);
    } else {
      digits = e.substring(2 + i, 12 + i);
      dNum = Double.parseDouble(digits);
      i++;
    }
}
}

public boolean isPrime(double dNum)  {
  if (dNum < 2){
    return false;
  }
  for (int i = 2 ; i <= Math.sqrt(dNum); i ++){
    if (dNum%i == 0){
      return false;
    }
  }
  primefound = true;
  return true;
} 
