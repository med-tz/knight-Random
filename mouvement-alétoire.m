clc;
clear all;
A=zeros(8,8);
A(1:2:8, 1:2:8)=1; %Échiquier 
A(2:2:8, 2:2:8)=1; %Échiquier
B=zeros(8,8);
B(1:2:8, 1:2:8)=1; %Échiquier2 utiliser de la recoloration
B(2:2:8, 2:2:8)=1; %Échiquier2 utiliser de la recoloration
i=1;%Position initial de cavalier sur l'axe des i
j=1;%Position initial de cavalier sur l'axe des j
M=10;%Nombre des mouvements possibles
k=1;
X=0;%X=X+1 si le cavalier atteind (8,8)
A(i,j)=0.3;%coloration de la position initial en gris
f1=figure ; 
imshow(A);
while ((k<M+1) && ((i~=8) || (j~=8)))
L=[[i-2,j+1];[i+2,j+1];[i-2,j-1];[i+2,j-1];[i+1,j-2];[i+1,j+2];[i-1,j+2];[i-1,j-2]];%Liste des mouvements possibles
x=randi(8);
A(i,j)=B(i,j);
i=L(x,1);
j=L(x,2);
while ((i<1)|| (i>8) || (j<1) || (j>8))
    x=randi(8);
    i=L(x,1);
    j=L(x,2);
endwhile
A(i,j)=0.3;
k=k+1;
figure ;
imshow(A);
end
if i==1 && j==1
  X=X+1;
endif
