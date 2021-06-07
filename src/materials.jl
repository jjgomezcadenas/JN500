using Unitful

import Unitful:
    nm, μm, mm, cm, m, km, inch, ft, mi,
    ac,
    mg, g, kg,
    Ra, °F, °C, K,
    rad, °,
    ns, μs, ms, s, minute, hr, d, yr, Hz,
    eV,
    μJ, mJ, J,
	mW, W,
    A, N, mol, mmol, V, L, M

"""
	Material

Represents a material.

# Fields
- `ρ::typeof(1.0kg/m^3)`  : density
- `μ_ρ ::typeof(1.0cm^2/g)`  : μ/ρ
- `μ   ::typeof(1.0cm^-1)`  : linear att coefficient
- `λatt::typeof(1.0cm)`  : att length 

"""
struct Material
	ρ   ::typeof(1.0kg/m^3)   # density
	μ_ρ ::typeof(1.0cm^2/g)   # μ/ρ
	μ   ::typeof(1.0cm^-1)    # μ  = ρ * μ/ρ
	λatt::typeof(1.0cm)       # λatt  = 1 / μ
	function Material(ρ, μ_ρ)
		μ = uconvert(cm^-1, ρ * μ/ρ)
		λatt  = 1.0 / μ
		return Material(ρ, μ_ρ, μ, λatt)
	end
end

gXe3020 = Material(203.35 * kg/m^3, 0.039 * cm32/g)
gXe2020 = Material(124.3 * kg/m^3, 0.039 * cm32/g)
gXe1520 = Material(89.9 * kg/m^3, 0.039 * cm32/g)
gXe1020 = Material(58.0 * kg/m^3, 0.039 * cm32/g)
