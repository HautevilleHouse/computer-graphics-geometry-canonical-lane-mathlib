import canonicalLaneMathlib.LightingAndShading

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure LightingPackage where
  phongReflection : Prop
  blinnPhongSpecular : Prop
  multipleLightSources : Prop
  shadowMapping : Prop
  ambientOcclusion : Prop

structure LightingEvidence (L : LightingPackage) where
  phongReflectionClosed : L.phongReflection
  blinnPhongSpecularClosed : L.blinnPhongSpecular
  multipleLightSourcesClosed : L.multipleLightSources
  shadowMappingClosed : L.shadowMapping
  ambientOcclusionClosed : L.ambientOcclusion

def LightingClosed (L : LightingPackage) : Prop :=
  L.phongReflection ∧ L.blinnPhongSpecular ∧
  L.multipleLightSources ∧ L.shadowMapping ∧ L.ambientOcclusion

theorem lighting_closed_from_evidence (L : LightingPackage)
    (E : LightingEvidence L) : LightingClosed L := by
  exact And.intro E.phongReflectionClosed
    (And.intro E.blinnPhongSpecularClosed
      (And.intro E.multipleLightSourcesClosed
        (And.intro E.shadowMappingClosed E.ambientOcclusionClosed)))

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse
