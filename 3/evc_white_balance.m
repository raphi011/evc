function [result] = evc_white_balance(input, white)
%EVC_WHITE_BALANCE Führt den manuellen Weißabgleich durch.
%
%   EINGABE
%   input ... Bild
%   white ... ein RGB Vektor mit der Farbe, die weiß werden soll
%   AUSGABE
%   result... Ergebnis nach dem Weißabgleich
    white = 1 / white;
    
    R = input(:,:,1) / white(1);
    G = input(:,:,2) / white(2);
    B = input(:,:,3) / white(3);
    
    result = cat(3,R,G,B);
    
    %TODO: Berechne den Weißabgleich mit dem white Wert
    
    %NOTE: Hellere Bildpunkte als dieser, werden anschließend Werte > 1 haben.    
    %Die dadurch benötigte Normalisierung wird am Ende bei der Kontraststärkung
    %gemacht.
end