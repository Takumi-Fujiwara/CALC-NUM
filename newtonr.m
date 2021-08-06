function [x,k]=newtonr(x0,p)
%   x -> raiz 
%   k -> n�mero de itera��es
%   x0 -> aproxima��o inicial
%   p -> precis�o
%   f(x) - > fun��o
%   f1(x) -> Derivada da fun��o

x=x0-f(x0)/fl(x0);
k=1;
while abs(x-x0)>p
    k=k+1;
    x0=x;
    x=x0-f(x0)/fl(x0);
end
    