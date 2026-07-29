import canonicalLaneMathlib.RayTracing

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure RayTracingPackage where
  raySphereIntersection : Prop
  reflectionAndRefraction : Prop
  boundingVolumeHierarchy : Prop
  monteCarloIntegration : Prop
  pathTracing : Prop

structure RayTracingEvidence (R : RayTracingPackage) where
  raySphereIntersectionClosed : R.raySphereIntersection
  reflectionAndRefractionClosed : R.reflectionAndRefraction
  boundingVolumeHierarchyClosed : R.boundingVolumeHierarchy
  monteCarloIntegrationClosed : R.monteCarloIntegration
  pathTracingClosed : R.pathTracing

def RayTracingClosed (R : RayTracingPackage) : Prop :=
  R.raySphereIntersection ∧ R.reflectionAndRefraction ∧
  R.boundingVolumeHierarchy ∧ R.monteCarloIntegration ∧ R.pathTracing

theorem raytracing_closed_from_evidence (R : RayTracingPackage)
    (E : RayTracingEvidence R) : RayTracingClosed R := by
  exact And.intro E.raySphereIntersectionClosed
    (And.intro E.reflectionAndRefractionClosed
      (And.intro E.boundingVolumeHierarchyClosed
        (And.intro E.monteCarloIntegrationClosed E.pathTracingClosed)))

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse
