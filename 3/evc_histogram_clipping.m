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

    low
    high


    %NOTE: Die folgende Zeile kann gel?scht werden. Sie verhindert, dass
    %die Funktion, solange sie nicht implementiert wurde, abst?rzt.
    result = input;
    
    %TODO Falls low < 0 ist, muss es zuerst auf 0 gesetzt werden.
    %     Weiters soll high <= der maximalen Intensit?t des Bildes sein.
    %     Danach soll das Intervall von [low, high] auf [0, 1] abgebildet
    %     werden. Gibt es dann noch Werte < 0, sollen diese auf 0 gesetzt
    %     werden und Werte > 1 auf 1.
end