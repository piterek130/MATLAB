clear;
close all;

% Macierz wspolczynnikow stojacych przy zmiennych 
A = [[2 1 1 -1];
     [1 1 -1 1];
     [1 1 1 1];
     [-1 2 -1 1]] 
 
%  Ilosc zmiennych rownania
[r, c] = size(A);
 
%  Macierz wyrazow wolnych 
b = [3; 4; 10; 4];

%  Macierz uzupelnien
 U = [A b]
 
 [r, c] = size(U);
 
%  (wiersze, kolumny )
 for i = 1:1:r
     divider = U(i, i);
     for j = 1:1:c
        U(i,j) = U(i, j)/divider; 
     end
     for k = i+1:1:r 
            temp = U(k, i);
            U(k, :) = U(k, :) - temp * U(i, :);
     end
 end
U

%  Rozwiazanie rownania 
% Miejsce na odpowiedzi 
x = zeros(r, 1);
for i = r:-1:1
%     Zbieranie wartosci z macierzy wynikowej 
    x(i) = U(i, end);
    for j = i+1:r
        % Wyznaczanie kolejnych wartosci na podstawie poprzednich wynikow
        x(i) = x(i) - U(i, j) * x(j);
    end
end
x
 
 