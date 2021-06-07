@testset "sahpes_test" begin
    c = Cylinder(1mm, 1mm)
    c21 = Cylinder(2mm, 1mm)
    c12 = Cylinder(1mm, 2mm)
    @test volume(c) ≈ π*mm^3
    @test surface(c) ≈ 2*π*mm^2
    @test volume(c21) ≈ 4 * volume(c)
    @test volume(c12) ≈ 2 * volume(c)
    @test surface(c21) ≈ 2 * surface(c)
    @test surface(c12) ≈ 2 * surface(c)

end
