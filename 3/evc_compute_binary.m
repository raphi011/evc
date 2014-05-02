function [result] = evc_compute_binary(input, x, top)
%EVC_COMPUTE_BINARY Berechnet ein binäres Bild anhand des übergebenen
%Schwellwertes (x).
%
%   EINGABE
%   input ... Bild
%   x     ... Schwellwert
%   top   ... Falls 0, soll ein Inversionsbild generiert werden. Also 0
%             soll 1 und 1 soll 0 werden.
%   AUSGABE
%   result... Binäres Bild, dass nur 0.0 oder 1.0 enthalten darf. Achtung
%             das Ergebnis muss vom Type double sein!

    %NOTE: Die folgende Zeile kann gelöscht werden. Sie verhindert, dass
    %die Funktion, solange sie nicht implementiert wurde, abstürzt.
    result = input;
    
    %TODO: Erzeuge ein Binärbild von input anhand des gegebenen
    %Schwellwertes x. Da im Eingabebild auch Intensitäten über 1 vorkommen,
    %kann die Funktion im2bw nicht verwendet werden (sie wird abstürzen).
    %Falls top == 0, soll ein Inversionsbild generiert werden (0 und 1
    %müssen vertauscht werden).
end
