%% Testing the function spline
x = 1:10;
y = sin(x);
xQ = linspace(0,12,100);
yQ = spline(x,y,xQ);
plot(x,y,'o',xQ,yQ)
%% 2
% 2(a)
% Using the function spline to do the interpolating
x2 = [-1;-0.96;-0.65;0.1;0.4;1];
y2 = [-1;-0.1512;0.386;0.4802;0.8838;1];
x2Q = linspace(-1,1,100);
y2Q = spline(x2,y2,x2Q);
% using the polyfit function fit the data
p = polyfit(x2,y2,3);
val = polyval(p,x2Q);
% Plotting
figure
hold on
% plot the result for splinez
plot(x2,y2,'o',x2Q,y2Q);
% plot the result for polyfit
plot(x2Q,val,'--');
% 2(b)
v = polyinterp(x2,y2,x2Q);
plot(x2Q,v)
hold off
% 2(c)
% 2(d)
% Using the spline
pred1 = spline(x2,y2,-0.3);
% Using the polyfit
pred2 = polyval(p,-0.3); % this one is better
% Using the polyinterp
pred3 = polyinterp(x2,y2,-0.3);
%% 3
%% 3(a)
x1 = linspace(0,2*pi,3);
x2 = linspace(0,2*pi,5);
x3 = linspace(0,2*pi,9);
y1 = cos(2*x1);
y2 = cos(2*x2);
y3 = cos(2*x3);
xQ = linspace(0,2*pi,100);
yQ1 = spline(x1,y1,xQ);
yQ2 = spline(x2,y2,xQ);
yQ3 = spline(x3,y3,xQ);
figure
hold on
plot(x1,y1,'o',xQ,yQ1);
plot(x2,y2,'o',xQ,yQ2);
plot(x3,y3,'o',xQ,yQ3);
hold off

yQ21 = polyinterp(x1,y1,xQ);
yQ22 = polyinterp(x2,y2,xQ);
yQ23 = polyinterp(x3,y3,xQ);

figure
hold on
plot(x1,y1,'o',xQ,yQ21);
plot(x2,y2,'o',xQ,yQ22);
plot(x3,y3,'o',xQ,yQ23);
hold off
%% 3(b)
x1 = linspace(-2,2,3);
x2 = linspace(-2,2,5);
x3 = linspace(-2,2,9);
y1 = 1./(exp(x1)+x1.^2);
y2 = 1./(exp(x2)+x2.^2);
y3 = 1./(exp(x3)+x3.^2);
xQ = linspace(-2,2,100);
yQ1 = spline(x1,y1,xQ);
yQ2 = spline(x2,y2,xQ);
yQ3 = spline(x3,y3,xQ);
figure
hold on
plot(x1,y1,'o',xQ,yQ1);
plot(x2,y2,'o',xQ,yQ2);
plot(x3,y3,'o',xQ,yQ3);
hold off

%% 4
% 4(a)
x = [0;3;5;8;13];
yd = [0;225;383;623;993];
ys = [75;77;80;74;72];
predd = polyinterp(x,yd,10);
preds = polyinterp(x,ys,10);

% 4(b)
xQ = linspace(0,13,1000);
maxpreds13 = max(polyinterp(x,ys,xQ));
xQ2 = linspace(0,15,1000);
maxpreds15 = max(polyinterp(x,ys,xQ2));