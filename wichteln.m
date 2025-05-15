clear;

Bewohner = [1 2001 "Stella" "stellas mail"; 
            2 2002 "Valentin" "valles mail";
            3 2003 "Caro" "caros mail";
            4 2004 "Tim" "Fischs mail";
            5 2005 "Sewon" "Sewons Mail";
            6 2006 "Alaia" "Alaias Mail";
            7 2007 "Simon" "Simons Mail";
            8 2008 "Marlene" "Marlenes Mail";
            9 2010 "Hisham" "Meine Mail"
            10 2011 "René" "Renes Mail";
            11 2012 "Lydia" "Lydias Mail";
            12 2099 "Laura" "Lauras Mail";
            13 2098 "Annika" "Annikas Mail"];
        
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
