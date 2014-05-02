function [result] = evc_histogram_clipping(input, low, high)
%EVC_HISTOGRAM_CLIPPING Schneidet das Histogramm und normalisiert die
%Intensitäten. In der VO wird diese Methode als "Histogram Normalization"
%bezeichnet.
%
%   EINGABE
%   input ... Bild
%   low   ... Schwarzpunkt für das Histogramm Clipping
%   high  ... Weißpunkt für das Histogramm Clipping
%   AUSGABE
%   result... Bild nach dem Histogramm Clipping (Intensitäten im Bereich [0,1])

    %NOTE: Die folgende Zeile kann gelöscht werden. Sie verhindert, dass
    %die Funktion, solange sie nicht implementiert wurde, abstürzt.
    result = input;
    
    %TODO Falls low < 0 ist, muss es zuerst auf 0 gesetzt werden.
    %     Weiters soll high <= der maximalen Intensität des Bildes sein.
    %     Danach soll das Intervall von [low, high] auf [0, 1] abgebildet
    %     werden. Gibt es dann noch Werte < 0, sollen diese auf 0 gesetzt
    %     werden und Werte > 1 auf 1.
end