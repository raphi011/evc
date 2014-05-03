function [result] = evc_demosaic(input, neutral)
%EVC_DEMOSAIC Extrahiert aus dem Bayer-Pattern-Bild ein Farbbild.
%   Dazu soll vorher ein neutraler Wei?abgleich vorgenommen werden.
%   Anschlie?end sollen die fehlenden Werte durch lineare Interpolation 
%   berechnet werden (siehe Angabe!). Die Kernel der Interpolationsfilter 
%   m?ssen selbst geschrieben werden.
%
%   EINGABE
%   input  ... Bild
%   neutral... der neutrale Wei?abgleich
%   AUSGABE
%   result ... RGB Bild

    %NOTE: Die folgende Zeile kann gel?scht werden. Sie verhindert, dass
    %die Funktion, solange sie nicht implementiert wurde, abst?rzt.
   
    %TODO Erzeuge Matrizen f?r R, G und B.
    %     F?lle sie mit Werten aus input (Bayer-Pattern-Bild). Dazu eignet sich
    %     gut die "start:skip:end" Selektion.
    %     Wende den neutralen Wei?abgelich an.
    
    R = zeros(size(input));
    G = zeros(size(input));
    B = zeros(size(input));
    
    R(1:2:end, 1:2:end) = input(1:2:end, 1:2:end) / neutral(1); % 1...red
    G(2:2:end, 1:2:end) = input(2:2:end, 1:2:end) / neutral(2); % 1...green
    G(1:2:end, 2:2:end) = input(1:2:end, 2:2:end) / neutral(2); % 1...green
    B(2:2:end, 2:2:end) = input(2:2:end, 2:2:end) / neutral(3); % 1...blue
    
    %R(2:2:end, 2:2:end) = input(2:2:end, 2:2:end) / neutral(1); % 1...red
    %G(2:2:end, 1:2:end) = input(2:2:end, 1:2:end) / neutral(2); % 1...green
    %G(1:2:end, 2:2:end) = input(1:2:end, 2:2:end) / neutral(2); % 1...green
    %B(1:2:end, 1:2:end) = input(1:2:end, 1:2:end) / neutral(3); % 1...blue
    
    %R(2:2:end, 1:2:end) = input(2:2:end, 1:2:end) / neutral(1); % 1...red
    %G(1:2:end, 1:2:end) = input(1:2:end, 1:2:end) / neutral(2); % 1...green
    %G(2:2:end, 2:2:end) = input(2:2:end, 2:2:end) / neutral(2); % 1...green
    %B(1:2:end, 2:2:end) = input(1:2:end, 2:2:end) / neutral(3); % 1...blue
    
    %R(1:2:end, 2:2:end) = input(1:2:end, 2:2:end) / neutral(1); % 1...red
    %G(1:2:end, 1:2:end) = input(1:2:end, 1:2:end) / neutral(2); % 1...green
    %G(2:2:end, 2:2:end) = input(2:2:end, 2:2:end) / neutral(2); % 1...green
    %B(2:2:end, 1:2:end) = input(2:2:end, 1:2:end) / neutral(3); % 1...blue
    
    %TODO Interpoliere die fehlenden Farbwerte, wie in der Angabe beschrieben.
    
    redBlueFilter = [ 0.25 0.50 0.25;
                      0.50 1.00 0.50;
                      0.25 0.50 0.25];
    
    greenFilter = [	0.00 0.25 0.00;
                    0.25 1.00 0.25;
                    0.00 0.25 0.00];
                
    R = imfilter(R, redBlueFilter);
    G = imfilter(G, greenFilter);
    B = imfilter(B, redBlueFilter);
    
    
    %TODO Verbinde R, B, G zu einer Matrix und gib sie ?ber 'result'
    %     zur?ck.
    
    result = cat(3, R, G, B);

end