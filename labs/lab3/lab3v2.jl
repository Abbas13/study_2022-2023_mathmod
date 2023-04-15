using Plots
using DifferentialEquations

x_start = 25000
y_start = 13000
a = -0.33
b = -0.88
c = -0.44
h = -0.77
P(t) = sin(t)
Q(t) = cos(3*t)
t_start = 0
t_end = 0.01
dt = 50
t = collect(LinRange(t_start, t_end, dt))

function F(du, u, p, t)
    du[1] = a*u[1] + b*u[2] + P(t)
    du[2] = c*u[1]*u[2] + h*u[2] + Q(t)
end

u0 = [x_start, y_start]

prob = ODEProblem(F, u0, (t_start, t_end))

solving = solve(prob)

plt = plot(solving, vars=(0,1), title="Модель боевых действий 1", ylabel = "Численность армии", label = "Армия X")
plot!(solving, vars=(0,2), xlabel = "Время", label = "Армия  Y")

savefig(plt, "fig004.png")