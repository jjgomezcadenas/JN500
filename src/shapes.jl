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
	Cylinder

Represents a cylinder of radius r and length l.

# Fields
- `r::typeof(1.0mm)`  : radius
- `l::typeof(1.0mm)`  : length

"""
struct Cylinder
	r::typeof(1.0mm)
	l::typeof(1.0mm)
end

"""
	SolidCylinder

Represents a solid cylinder of inner radius rin, outer radius rout and length l.

# Fields
- `rin::typeof(1.0mm)`   : inner radius
- `rout::typeof(1.0mm)`  : outer radius
- `l::typeof(1.0mm)`     : length

"""
struct SolidCylinder
	rin ::typeof(1.0mm)
	rout::typeof(1.0mm)
	l   ::typeof(1.0mm)
end


"""
	Disk

Represents a Disk of radius r, and thickness t.

# Fields
- `r::typeof(1.0mm)`   : radius
- `t::typeof(1.0mm)`   : thickness

"""
struct Disk
	r::typeof(1.0mm)
	t::typeof(1.0mm)
end


"""
	volume(c::Cylinder)
"""
volume(c::Cylinder) = π * c.r^2 * c.l


"""
	surface(c::Cylinder)
"""
surface(c::Cylinder) = 2 * π * c.r * c.l


"""
	inner_volume(c::SolidCylinder)
"""
inner_volume(c::SolidCylinder) = π * c.rin^2 * c.l


"""
	outer_volume(c::SolidCylinder)
"""
outer_volume(c::SolidCylinder) = π * (c.rout^2 - c.rin^2) * c.L


"""
	volume(c::SolidCylinder)
"""
volume(c::SolidCylinder) = inner_volume(c)


"""
	inner_surface(c::SolidCylinder)
"""
inner_surface(c::SolidCylinder) = 2 * π * c.rin * c.l


"""
	outer_surface(c::SolidCylinder)
"""
outer_surface(c::SolidCylinder) = 2 * π * c.rout * c.l


"""
	thickness_surface(c::SolidCylinder)
"""
thickness_surface(c::SolidCylinder) = π * (c.rout^2 - c.rin^2)


"""
	thickness(c::SolidCylinder)
"""
thickness(c::SolidCylinder) = c.rout^2 - c.rin^2


"""
	surface(c::SolidCylinder)
"""
surface(c::SolidCylinder) = inner_surface(c)


"""
	volume(d::Disk)
"""
volume(d::Disk)  = π * d.r^2 * d.t


"""
	surface(d::Disk)
"""
surface(d::Disk) = π * d.r^2


"""
	thickness_surface(d::Disk)
"""
thickness_surface(d::Disk) = 2 * pi *  d.r * d.t
