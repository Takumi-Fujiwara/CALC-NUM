function [x,k]=newtonr(x0,p)
%   x -> raiz 
%   k -> número de iterações
%   x0 -> aproximação inicial
%   p -> precisão
%   f(x) - > função
%   f1(x) -> Derivada da função

x=x0-f(x0)/fl(x0);
k=1;
while abs(x-x0)>p
    k=k+1;
    x0=x;
    x=x0-f(x0)/fl(x0);
end
    