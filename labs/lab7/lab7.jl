using Plots
using DifferentialEquations

a_1 = 0.65
a_2 = 0.0002

T1 = (0.0, 10.0)
u0 = [2]
N = 1000

function F!(du, u, p, t)
    du[1] = (a_1 + a_2 * u[1]) * (N - u[1])
end

prob1 = ODEProblem(F!, u0, T1)
sol1 = solve(prob1)

plt1 = plot(sol1, dpi = 150, size = (800, 400), xlabel = "Время", label = "n(t)")
savefig(plt1, "img_lab7v1jl.png")

a_1 = 0.0003
a_2 = 0.9

T2 = (0.0, 0.02)
prob2 = ODEProblem(F!, u0, T2)
sol2 = solve(prob2)

plt2 = plot(sol2, dpi = 150, size = (800, 400), xlabel = "Время", label = "n(t)")
savefig(plt2, "img_lab7v2jl.png")

function Fv2!(du, u, p, t)
    du[1] = (a_1*sin(2*t) + a_2 * cos(3*t) * u[1]) * (N - u[1])
end

a_1 = 0.1
a_2 = 0.2

T3 = (0.0, 0.1)
prob3 = ODEProblem(Fv2!, u0, T3)
sol3 = solve(prob3)

plt3 = plot(sol3, dpi = 150, size = (800, 400), xlabel = "Время", label = "n(t)")
savefig(plt3, "img_lab7v3jl.png")
