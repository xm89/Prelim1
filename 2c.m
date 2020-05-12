X = 0.13:0.005:3.5;
Z = 1./ (1 + (X./1.5).^2.7);
N = (Z./0.4).^2.7;
S = (X+X.*N-1.5)./(5-X);
plot(S,X,'b');
xlabel('Signal S')
ylabel('Expression of X')
title('steady-state values of toggle switch','FontSize',12)