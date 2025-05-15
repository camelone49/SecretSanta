function [x] = sendmailto(Bewohner)
setpref('Internet','SMTP_Server','smtp.gmail.com');
setpref('Internet','E_mail','smart.hisham@gmail.com'); % Need to give the email ID

props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
props.setProperty('mail.smtp.starttls.enable','true');
props.setProperty('mail.smtp.port', '587');  % Set the correct port for STARTTLS

setpref('Internet','SMTP_Username','smart.hisham@gmail.com');
setpref('Internet','SMTP_Password','npyj iaeg pkuk turh');

setpref('Internet','SMTP_Username','smart.hisham@gmail.com'); % Need to give the email ID
setpref('Internet','SMTP_Password','npyj iaeg pkuk turh'); % Need to give the password

Bewohnerindex = Bewohner(:,1);
mailadressen = Bewohner(:,4);
mailadressenrichtig = convertStringsToChars(mailadressen);
Bewohnernamen = Bewohner(:,3);
%Bewohnerzimmer = Bewohner(:,2);
zufallsvektorstring = Bewohner(:,5);
zufallsvektor = str2double(zufallsvektorstring);

testodernicht = input('1: richtige mail senden, alles andere: testmail an alle');

if testodernicht == 1

    for e = 1:length(Bewohnerindex)

        name = Bewohnernamen(zufallsvektor(e));
        %zimmer = Bewohnerzimmer(zuweisung);

        string1 = "You have to get ";
        string2 = name;
        string3 = " a present. Please note that the outcome is only set if everyone confirms the reception in the WhatsApp group chat.";

        string = string1 + string2 + string3;

        stringrichtig = convertStringsToChars(string) + " ";

        sendmail(mailadressenrichtig(e), 'OFFIZIELLE MAIL; OFFICIAL SECRET SANTA MAIL', stringrichtig,'meme.jpg');

    end
    
else
    
    for e =1:length(Bewohnerindex)
    sendmail(mailadressenrichtig(e),'Das ist nur ein Test','Das ist nur ein Test')
    end
end 

x = 0;
disp('Erfolg')
end

