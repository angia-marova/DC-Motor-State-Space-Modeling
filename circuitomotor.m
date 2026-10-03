x1=0;
x2=0;
x3=0;

t_inicial=[x1; x2; x3];

t_inicio=0;
t_final=10;

tspan=[t_inicio t_final];

[t,x]=ode45(@(t,x)ecuacion_circuitomotor(t,x),tspan,t_inicial);

plot(t,x(:,1),t,x(:,2),t,x(:,3))
grid on
legend('Posicion angular', 'Velocidad angular', 'Corriente')

figure;
plot(t,x(:,1));
figure;
plot(t,x(:,2));
figure;
plot(t,x(:,3));