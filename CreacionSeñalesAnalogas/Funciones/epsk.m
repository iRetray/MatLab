function epsk(g,f)
%For more information, visit: www.matpic.com
%Modulation  8PSK
%Example: g is a binay vector; f is the carrier frequency.
%epsk([1 0 1 1 1 0],2)
%Author: Diego Orlando Barragán Guerrero
%diegokillemall@yahoo.com
%Loja (ECUADOR)
%Long live Heavy-Metal
%See also:
%http://www.mathworks.com/matlabcentral/fileexchange/loadFile.do?objectId=14328&objectType=FILE

g = [1 1 1 1 0 0];
  f=1;
%*-*-*-*-*-*
l=length(g);
r=l/3;
re=ceil(r);
val=re-r;



t=0:2*pi/149:2*pi;
cp=[];sp=[];
mod=[];mod1=[];bit=[];

for n=1:3:length(g);
    if g(n)==0 && g(n+1)==1 && g(n+2)==1
        die=cos(pi/8)*ones(1,150);
        die1=sin(pi/8)*ones(1,150);
        se=[zeros(1,50) ones(1,50) ones(1,50)];

    elseif g(n)==0 && g(n+1)==1 && g(n+2)==0
        die=cos(3*pi/8)*ones(1,150);
        die1=sin(3*pi/8)*ones(1,150);
        se=[zeros(1,50) ones(1,50) zeros(1,50)];

    elseif g(n)==0 && g(n+1)==0  && g(n+2)==0
        die=cos(5*pi/8)*ones(1,150);
        die1=sin(5*pi/8)*ones(1,150);
        se=[zeros(1,50) zeros(1,50) zeros(1,50)];

    elseif g(n)==0 && g(n+1)==0  && g(n+2)==1
        die=cos(7*pi/8)*ones(1,150);
        die1=sin(7*pi/8)*ones(1,150);
        se=[zeros(1,50) zeros(1,50) ones(1,50)];

    elseif g(n)==1 && g(n+1)==0  && g(n+2)==1
        die=cos(-7*pi/8)*ones(1,150);
        die1=sin(-7*pi/8)*ones(1,150);
        se=[ones(1,50) zeros(1,50) ones(1,50)];

    elseif g(n)==1 && g(n+1)==0  && g(n+2)==0
        die=cos(-5*pi/8)*ones(1,150);
        die1=sin(-5*pi/8)*ones(1,150);
        se=[ones(1,50) zeros(1,50) zeros(1,50)];

    elseif g(n)==1 && g(n+1)==1  && g(n+2)==0
        die=cos(-3*pi/8)*ones(1,150);
        die1=sin(-3*pi/8)*ones(1,150);
        se=[ones(1,50) ones(1,50) zeros(1,50)];

    elseif g(n)==1 && g(n+1)==1  && g(n+2)==1
        die=cos(-pi/8)*ones(1,150);
        die1=sin(-pi/8)*ones(1,150);
        se=[ones(1,50) ones(1,50) ones(1,50)];

    end
    c=cos(f*t);
    s=sin(f*t);
    cp=[cp die];    %Amplitude cosino
    sp=[sp -die1];  %Amplitude sino
    mod=[mod c];    %cosino carrier (Q)
    mod1=[mod1 s];  %sino carrier   (I)
    bit=[bit se];
end
opsk=cp.*mod+sp.*mod1;
subplot(2,1,1);plot(bit,'LineWidth',1.5);grid on;
title('Binary Signal')
axis([0 50*length(g) -1.5 1.5]);

subplot(2,1,2);plot(opsk,'LineWidth',1.5);grid on;
title('8PSK modulation')
axis([0 50*length(g) -1.5 1.5]);