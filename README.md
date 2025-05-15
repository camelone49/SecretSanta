# SecretSanta
This is a MATLAB program which allows you to assign Secret Santa people per mail without all being present.
Functionality: It sends a mail to everyone who is  put in the Mailing List with the name of the person of which you have to buy a present.

Please note that this program is from 2021, where I did not have too much MATLAB experience (as one can see from the uncommented and amateur code) =)

Steps:

  1. Extend the Matrix from wichteln.m with all your participants - it does not matter how many people participate
  2. Run "wichteln.m" - this is where all the assigning happens. "Zahlpruf.m" is a function which checks if there are any double assignments
  3. Open "sendmailto.m" and put in your email address (it is configured for gmail servers). You need to generate a password which MATLAB can use for your gmail account.
     For this refer to: https://de.mathworks.com/matlabcentral/answers/1672544-using-gmail-after-may-30-2022
   4. Run "sendmailto.m" There are two options: input 0: Only a testmail to everyone; input 1: Official mail to everyone.

The output should look like this:
![Image](https://github.com/user-attachments/assets/e987ade7-7758-4470-8cae-8bf963363494)


