function [result asShotNeutral] = evc_black_level(input, filename)
%EVC_BLACK_LEVEL Stellt den Schwarzwert ein und konvertiert das Bild ins
%   double Format mit Werten [0.0, 1.0]. Zus?tzliche Infos ?ber das Bild
%   k?nnen mit dem Befehl imfinfo abgerufen werden.
%
%   EINGABE
%   input   ... Eingelesenes Bild
%   filename... Dateiname des Bildes (f?r imfinfo)
%   AUSGABE
%   result  ... das Bild im double Format, wobei das Interval
%           [Schwarzwert,65535] auf [0,1] abgebildet wurde und alle Werte
%           kleiner oder gleich dem Schwarzwert 0 sind
%   asShotNeutral... neutraler Wei?abgleich, welcher in den Bildinformationen
%           gespeichert ist (siehe imfinfo)


    %NOTE: Die folgenden zwei Zeilen k?nnen gel?scht werden. Sie
    %verhindern, dass die Funktion, solange sie nicht implementiert wurde,
    %abst?rzt.
    
    
    
   
    
    %TODO Bestimme den Schwarzwert (BlackLevel) und den neutralen
    %     Wei?abgleich (AsShotNeutral) anhand der Bildinformationen
    %     (siehe Matlab-Hilfe zur Funktion imfinfo).
    
    img = imfinfo(filename);
    blackLevel = img.BlackLevel;
    maxSampleValue = img.MaxSampleValue;
    asShotNeutral = img.AsShotNeutral;
    
    %TODO Verschiebe und skaliere den Kontrast so, dass Schwarz auf 0 und
    %     Wei? auf 1 abgebildet wird. Die Bilder in deinem Datensatz haben
    %     alle den Wei?wert auf 65535 gesetzt.
    
     result = (double(input)-blackLevel)/(maxSampleValue - blackLevel);
     result(result<0) = 0;
end

