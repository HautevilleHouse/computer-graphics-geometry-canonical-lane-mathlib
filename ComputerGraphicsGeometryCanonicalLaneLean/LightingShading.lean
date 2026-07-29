import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure LightingShadingPackage where
  illuminationModel : Prop
  shadowComputation : Prop
  materialResponse : Prop
  shadingMethod : Prop

structure LightingShadingEvidence (L : LightingShadingPackage) where
  illuminationModelClosed : L.illuminationModel
  shadowComputationClosed : L.shadowComputation
  materialResponseClosed : L.materialResponse
  shadingMethodClosed : L.shadingMethod

def LightingShadingClosed (L : LightingShadingPackage) : Prop :=
  L.illuminationModel ∧ L.shadowComputation ∧ L.materialResponse ∧ L.shadingMethod

theorem lighting_shading_closed_from_evidence (L : LightingShadingPackage)
    (E : LightingShadingEvidence L) : LightingShadingClosed L := by
  exact And.intro E.illuminationModelClosed
    (And.intro E.shadowComputationClosed
      (And.intro E.materialResponseClosed E.shadingMethodClosed))

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse