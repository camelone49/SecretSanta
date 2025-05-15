function [doppeltezahl] = zahlpruf(zuvektor, zufall,schleife, bewohnernummer)

lel = false;
bewohnerdouble = str2double(bewohnernummer);

    for l = 1:schleife-1
        
        if zufall == zuvektor(l) || zufall == bewohnerdouble
        lel = true;
        end
        
    end
    
    doppeltezahl = lel;

end

