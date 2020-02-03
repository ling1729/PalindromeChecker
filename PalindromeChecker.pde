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
	return sWord.toLowerCase().replaceAll("[^A-Za-z0-9]","").equals(new StringBuilder(sWord.toLowerCase().replaceAll("[^A-Za-z0-9]","").substring(0, sWord.toLowerCase().replaceAll("[^A-Za-z0-9]","").length())).reverse().toString());
}
