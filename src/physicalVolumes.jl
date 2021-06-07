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
	PhysicalVolume

Volume with a shape and a material .

# Fields
- `shape::Shape`  : Shape
- `material::Material`  : Material

"""
struct PhysicalVolume
	shape::Shape   # density
	material::Material    # μ/ρ
end

mass(p::PhysicalVolume) = uconvert(kg, volume(p.shape) * material.rho)
