function [x,k]=gauss_sid(a,b,p)
% x=> vetor solução
% k=> número de iterações
% a=> matriz do sistema
% b=> vetor de constantes do sistema
% p=> precisão
n=max(size(a));
k=0;
for i=1:n,
    s=0;
    for j=1:n,
        if i~=j,
            if j<i,
                s=s+bet(j)*abs(a(i,j));
            else
                s=s+abs(a(i,j));
            end,
        end,
    end,
    bet(i)=s/abs(a(i,i));
    x0(i)=0;
end,
if max(bet)<1,
    x=x0;
    teste=1000;
    while teste>p,
      k=k+1;
      for i=1:n,
          s=0;
          for j=1:n,
              if i~=j,
                  s=s+a(i,j)*x(j);
              end,
          end,
          x(i)=(b(i)-s)/a(i,i);
      end,
      teste=max(abs(x-x0));
      x0=x;
    end,
    x=x';
else
    x='não converge';
end,