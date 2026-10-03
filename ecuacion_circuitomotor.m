function dxdt = ecuacion_circuitomotor(t, x)

Va=5;
Ra=2;
Kt=0.01;
b=0.0012;
La=0.023;
Ke=0.01;
Jm=0.001;

dxdt=zeros(3,1);

dxdt(1)=x(2);
dxdt(2)=(Kt*x(3)-b*x(2))/Jm;
dxdt(3)=(Va-Ra*x(3)-Ke*x(2))/La;

end