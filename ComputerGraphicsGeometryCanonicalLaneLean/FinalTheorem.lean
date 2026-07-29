import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputerGraphicsGeometryCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.ComputerGraphicsGeometryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

def ConstrainedComputerGraphicsGeometryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_computer_graphics_geometry_endgame (A : AdmissibleClass) :
    ConstrainedComputerGraphicsGeometryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse