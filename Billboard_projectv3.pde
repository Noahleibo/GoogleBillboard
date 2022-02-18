public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
//public final static String e = "2.718345575";
int front;
int back;
public void setup() { 
  //front of parsedouble
  int front = 2;
  //back of parsedouble
  int back = 12;

  //for loop to switch out the interger to check if the number is prime
  for (int i = 2; i < e.length()-10; i++) { 
    String stp = e.substring(front, back);
    //puzzel 1
    //Parse double making dNum equal to part of variable e
    double dNum = Double.parseDouble(stp);
    
    if (isPrime(dNum)) {
      System.out.println("first prime is: "+stp);
      //break;
    }
    //pz 2
    int counter = 0;
    for (int j = 0; j < stp.length()-1; j++)
    {
      String piece = stp.substring(j, j+1);
      counter += Integer.parseInt(piece);
    }
    if( counter == 49){
      
    System.out.println("10-digit number is: "+stp);
    System.out.println("sum is :"+counter);
    }
    front++;
    back++;
  }   
  //your code here 
  //We would have to call 10 digets of E and make it a variable 
  //This variable then be checked in isPrime if it is a prime than we will return isPrime true if it isn't a
  // variable than we would return valse
}   
public boolean isPrime(double dNum)  
{   
  if (dNum<2)
  {
    return false;
  }
  for (int i = 2; i<=Math.sqrt(dNum); i++) {
    if (dNum % i == 0)
    {
      return false;
    }
  }
  return true;
}
