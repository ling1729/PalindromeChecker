public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String sWord)
{
	return sWord.equals(new StringBuilder(sWord.substring(0, sWord.length())).reverse().toString());
}
public String reverse(String str)
{
	return new StringBuilder(str).reverse().toString();
}
