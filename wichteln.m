clear;

Bewohner = [1 2001 "Stella" "stellapietzonka@gmail.com"; 
            2 2002 "Valentin" "vallegruetze@gmail.com";
            3 2003 "Caro" "carolin@erben.com";
            4 2004 "Tim" "tim.kleefisch@yahoo.com";
            5 2005 "Sewon" "sewon.kim@rwth-aachen.de";
            6 2006 "Alaia" "trecualaia@gmail.com";
            7 2007 "Simon" "simon.rudi@rwth-aachen.de";
            8 2008 "Marlene" "marlene.stoeger@gmail.com";
            9 2010 "Hisham" "smart.hisham@gmail.com"
            10 2011 "René" "rene.hartmann1@gmx.net";
            11 2012 "Lydia" "lydia.krauss@outlook.com";
            12 2099 "Laura" "lauras8_01@yahoo.fr";
            13 2098 "Annika" "wenhao.yang111@gmail.com"];
        
Bewohnerindex = Bewohner(:,1);

zufallsvektor = zeros(length(Bewohnerindex), 1);
x = false;

for i = 1:length(Bewohnerindex)  
    zufallszahl = randi([1 length(Bewohnerindex)], 1, 1);
    zufallsvektor(i) = zufallszahl;
        
    x = zahlpruf(zufallsvektor, zufallszahl, i, Bewohnerindex(i));
    while x == true
        zufallszahl = randi([1 length(Bewohnerindex)], 1, 1);
        zufallsvektor(i) = zufallszahl;
        x = zahlpruf(zufallsvektor, zufallszahl, i, Bewohnerindex(i));
    end
end

Bewohner(:,5) = zufallsvektor;

% Now you can use the Bewohner variable and its columns as needed.
