function [result] = evc_gamma_correction(input, gamma, saturate)
%EVC_GAMMA_CORRECTION Wendet Gammakorrektur pro Farbkanal oder Helligkeit an
%   EINGABE
%   input   ... Bild
%   gamma   ... Gamma Wert
%   saturate... Falls 1: Die Farbanteile sollen erhalten bleiben.
%               Sonst: Die Intensitätswerte sollen direkt hoch Gamma exponiert werden.
%   AUSGABE
%   result  ... Bild nach der Gammakorrektur

    %NOTE: Die folgende Zeile kann gelöscht werden. Sie verhindert, dass
    %die Funktion, solange sie nicht implementiert wurde, abstürzt.
    result = input;
    
    %TODO Gamma^(-1) berechnen und auf Division durch 0 achten.
    
    if (saturate)
        %TODO Berechne die Helligkeiten der Bildpunkte.
        %     Achtung, rgb2gray normalisiert das Bild. Das Ausmaß der 
        %     Intensitäten soll aber erhalten bleiben!
        %     Berechne die Farbanteile und erhalte sie,
        %     nachdem die Gammakorrektur angewandt wurde.
    else           
        %TODO Alle Intensitätswerte müssen mit gamma^-1 potenziert werden    
    end
end