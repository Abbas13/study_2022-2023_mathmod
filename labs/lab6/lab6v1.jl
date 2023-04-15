using Plots
using DifferentialEquations

alfa = 0.8
betta = 0.2

T = (0.0, 30.0)

N = 25000
I0 = 150
R0 = 15
Ik = 500
S0 = N - I0 - R0

u0 = [S0, I0, R0]

function F!(du, u, p, t)
    if u[2] > Ik
        du[1] = -alfa*u[1]
        du[2] = alfa*u[1] - betta*u[2]
    else 
        du[1] = 0
        du[2] = -betta*u[2]
    end
    du[3] = betta * u[2]
end 

prob = ODEProblem(F!, u0, T)
sol = solve(prob, dtmax=0.1)

time = sol.t 
S = []
I = []
R = []

for u in sol.u
    s, i, r = u 
    push!(S, s)
    push!(I, i)
    push!(R, r)
end 

plt = plot(dpi=150, size=(800, 400))
plot!(plt, time, [S, I, R], color = [:red :green :blue], xlabel = "Время", label = ["S(t)" "I(t)" "R(t)"])
savefig(plt, "lab6v1img.png")