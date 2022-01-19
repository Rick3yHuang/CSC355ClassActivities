%% Lab #1: Just Plug it in!
prompt1 = 'Enter the radius of the sphere in kilometers';
prompt2 = 'Enter the change of the readius in millimeters';

r = input(prompt1)*10.^3;
dr = input(prompt2)*10^(-3);

dA1 = 4*pi*(r+dr).^2-4*pi*r.^2;
dA2 = 4*pi*(2*r + dr)*dr;
dA3 = 8*pi*r*dr;

fprintf('The change in surface area using formula 1 is %.7f \n', dA1);
fprintf('The change in surface area using formula 2 is %.7f \n', dA2);
fprintf('The change in surface area using formula 3 is %.7f \n', dA3);