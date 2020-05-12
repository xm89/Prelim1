function dydt=acdc(t,y,S,ax,bx,zx,nzx,ay,by,xy,nxy,xz,nxz,yz,nyz,deltay,deltaz)
dydt1 = (ax+bx*S)/(1+S+(y(3)/zx)^nzx)-y(1);
dydt2 = (ay+by*S)/(1+S+(y(1)/xy)^nxy)-y(2)*deltay;
dydt3 = 1./(1+(y(1)/xz)^nxz+(y(2)/yz)^nyz)-y(3)*deltaz;
dydt = [dydt1;dydt2;dydt3];
end
