function [result] = evc_histogram_clipping(input, low, high)
%EVC_HISTOGRAM_CLIPPING Schneidet das Histogramm und normalisiert die
%Intensit?ten. In der VO wird diese Methode als "Histogram Normalization"
%bezeichnet.
%
%   EINGABE
%   input ... Bild
%   low   ... Schwarzpunkt f?r das Histogramm Clipping
%   high  ... Wei?punkt f?r das Histogramm Clipping
%   AUSGABE
%   result... Bild nach dem Histogramm Clipping (Intensit?ten im Bereich [0,1])
    
    
    
    %TODO Falls low < 0 ist, muss es zuerst auf 0 gesetzt werden.
    %     Weiters soll high <= der maximalen Intensität des Bildes sein.
    %     Danach soll das Intervall von [low, high] auf [0, 1] abgebildet
    %     werden. Gibt es dann noch Werte < 0, sollen diese auf 0 gesetzt
    %     werden und Werte > 1 auf 1.
    
    maxIntensity = max(input(:));
    
    low(low<0) = 0;
    high(high>maxIntensity) = maxIntensity;

    input = (input-low)/(high - low);
    input(input<0) = 0;
    input(input>1) = 1;
    
    result = input;
    
end