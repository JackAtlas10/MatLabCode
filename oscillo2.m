function oscillo2(Ax,Ay,fx,fy,phix,phiy)
t = 0:0.001:50*pi;
x = Ax.*cos(2*pi*fx.*t+phix);
y = Ay.*cos(2*pi*fy*t+phiy);
plot(x,y,'b');
xlabel('\bfX');
ylabel('\bfY');
end
