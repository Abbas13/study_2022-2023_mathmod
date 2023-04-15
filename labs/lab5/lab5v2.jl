using Plots 
using DifferentialEquations

a = 0.13
b = 0.042
c = 0.33
d = 0.03

u0 = [c/d, a/b]
T = (0, 50)

function F!(du, u, p, t)
    du[1] = -a*u[1] + b*u[1]*u[2]
    du[2] = c*u[2] - d*u[1]*u[2]
end

prob = ODEProblem(F!, u0, T)
sol = solve(prob, dtmax =0.05)

X = []
Y = []
Time = sol.t 

for u in sol.u 
    x, y = u 
    push!(X, x)
    push!(Y, y)
end 

plt = plot(layout=(1,2), dpi = 200, size(800,400))
plot!(plt[1], Time, [X, Y], color=[:red :blue], xlabel ="time", label = ["x(t)" "y(t)"])
plot!(plt[2], X, Y, color=:red, xlabel="x", ylabel="y")

savefig(plt, "lab5v2jl.png")