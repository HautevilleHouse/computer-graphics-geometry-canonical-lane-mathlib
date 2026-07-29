import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputerGraphicsGeometryCanonicalLaneLean.RasterizationPipeline

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure ScreenSpaceShadingPackage (R : RasterizationPipelinePackage) where
  perFragmentLighting : Prop
  blending : Prop
  outputMerging : Prop
  perFragmentLightingClosed : perFragmentLighting
  blendingClosed : blending
  outputMergingClosed : outputMerging

structure ScreenSpaceShadingEvidence {R : RasterizationPipelinePackage}
    (S : ScreenSpaceShadingPackage R) where
  perFragmentLightingClosed : S.perFragmentLighting
  blendingClosed : S.blending
  outputMergingClosed : S.outputMerging

def ScreenSpaceShadingClosed {R : RasterizationPipelinePackage}
    (S : ScreenSpaceShadingPackage R) : Prop :=
  S.perFragmentLighting ∧ S.blending ∧ S.outputMerging

theorem screen_space_shading_closed_from_evidence {R : RasterizationPipelinePackage}
    (S : ScreenSpaceShadingPackage R) (E : ScreenSpaceShadingEvidence S) :
    ScreenSpaceShadingClosed S := by
  exact And.intro E.perFragmentLightingClosed
    (And.intro E.blendingClosed E.outputMergingClosed)

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse
