global S ax bx zx nzx ay by xy nxy xz nxz yz nyz deltay deltaz
S = 10^5;
tspan = [0 50];
y0 = [0;0;0];
ax = 0.039;
ay = 0.0043;
bx = 6.1;
by = 5.7;
deltay = 1.05;
deltaz = 1.04;
zx = 0.000013;
yz = 0.011;
xz = 0.12;
xy = 0.00079;
nzx = 2.32;
nxy = 2;
nxz = 2;
nyz = 2;
[t,y] = ode45(@acdc,tspan,y0,[],S,ax,bx,zx,nzx,ay,by,xy,nxy,xz,nxz,yz,nyz,deltay,deltaz);
plot(t,y(:,1),'b');
xlabel('dimensionless time t')
ylabel('dimensionless expression of X')
title('X vs. time when S=10^5','FontSize',12)