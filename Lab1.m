close all; 
clear; 

% Macierz wspolczynnikow stojacych przy zmiennych 
A = [[2 1 1 -1];
     [1 1 -1 1];
     [1 1 1 1];
     [-1 2 -1 1]] 
 
%  Ilosc zmiennych rownania
[r, c] = size(A)
 
%  Macierz wyrazow wolnych 
b = [3; 4; 10; 4]

%  Macierz uzupelnien
 U = [A b] 
 
 if rank(A) == rank(U) && r == rank(A)
    disp("Jedno Rozwiazanie")  
 elseif rank(A) == rank(U) && rank(A) < r
    disp("Nieskonczenie wiele rozwiazan") 
 else 
    disp("Brak rozwiazan")
 end 
 
 
 
