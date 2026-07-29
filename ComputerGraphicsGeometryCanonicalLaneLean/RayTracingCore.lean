import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure RayTracingCore where
  rayGeneration : Prop
  intersectionComputation : Prop
  shadingIntegration : Prop
  recursionDepth : Prop

structure RayTracingEvidence (R : RayTracingCore) where
  rayGenerationClosed : R.rayGeneration
  intersectionComputationClosed : R.intersectionComputation
  shadingIntegrationClosed : R.shadingIntegration
  recursionDepthClosed : R.recursionDepth

def RayTracingClosed (R : RayTracingCore) : Prop :=
  R.rayGeneration ∧ R.intersectionComputation ∧ R.shadingIntegration ∧ R.recursionDepth

theorem ray_tracing_closed_from_evidence (R : RayTracingCore)
    (E : RayTracingEvidence R) : RayTracingClosed R := by
  exact And.intro E.rayGenerationClosed
    (And.intro E.intersectionComputationClosed
      (And.intro E.shadingIntegrationClosed E.recursionDepthClosed))

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse