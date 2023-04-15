# вариант 2
using Plots
using DifferentialEquations

T = (0.0, 40.0)
u0 = [1.0, 1.0]
thetta = 1
omega_sq = 4

function F(du, u, p, t)
    du[1] = u[2]
    du[2] = -thetta*u[2] - omega_sq * u[1]
end

prob = ODEProblem(F, u0, T)
sol = solve(prob, saveat=0.05, abstol = 1e-8, reltol = 1e-8)

const X = []
const Y = []
Time = sol.t

for u in sol.u
    x, y = u 
    push!(X, x)
    push!(Y, y)
end

plt = plot(dpi = 150, layout =(1,2), size=(1000, 500), plot_title = "Модель гармонических колебаний")
plot!(plt[1], Time, [X, Y], color = [:brown :green], xlabel = "time", label = ["x(t)" "y(t)"])
plot!(plt[2], X, Y, color = [:red], xlabel = "x(t)", ylabel="y(t)")

savefig(plt, "lab4_2_jl.png")