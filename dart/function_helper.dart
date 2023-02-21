/*** 1. Regex Validation Email ***/
String email = 'johndoe@mail.com';
bool isValidEmail =  RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);

/*** 2. Hide Partial Email Address ***/
 String email1 = "johndoe@mail.com";  
 int leftChar = 1; // num of left character to show
 int rightChar = 2; // num of right character to show
 int hideChar = email.split("@")[0].length - rightChar; 
 String result = email.replaceRange(leftChar, hideChar, '*' * (hideChar-leftChar));
 // Result : j****oe@mail.com

 /*** 3. Word First Capital ***/
 String word = 'John Doe';
 String result1 = word[0].toUpperCase()+word.substring(1).toLowerCase();
 // Result : John doe

/*** 4. Proper ***/
 String word2 = 'john doe';
 String result2 = word2.split(" ").map((str) => str[0].toUpperCase()+str.substring(1).toLowerCase()).join(" ");
 // Result : John Doe

/*** 5. Get Inital Word ***/
 String word3 = 'john doe';
 String result3 = word3.trim().split(' ').map((l) => l[0].toUpperCase()).join();
 // Result : JD

/*** 6. Get inital word only 2 digit ***/
 String word4 = 'Michael John Doe';
 String result4 = word4.trim().split(' ').map((l) => l[0].toUpperCase()).take(2).join();
 // Result : MJ