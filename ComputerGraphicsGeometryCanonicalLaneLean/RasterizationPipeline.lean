import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure RasterizationPipelinePackage where
  vertexShader : Type
  fragmentShader : Type
  viewportTransform : Prop
  depthBuffer : Prop
  scanConversion : Prop
  viewportTransformClosed : viewportTransform
  depthBufferClosed : depthBuffer
  scanConversionClosed : scanConversion

structure RasterizationPipelineEvidence (P : RasterizationPipelinePackage) where
  viewportTransformClosed : P.viewportTransform
  depthBufferClosed : P.depthBuffer
  scanConversionClosed : P.scanConversion

def RasterizationPipelineClosed (P : RasterizationPipelinePackage) : Prop :=
  P.viewportTransform ∧ P.depthBuffer ∧ P.scanConversion

theorem rasterization_pipeline_closed_from_evidence (P : RasterizationPipelinePackage)
    (E : RasterizationPipelineEvidence P) : RasterizationPipelineClosed P := by
  exact And.intro E.viewportTransformClosed (And.intro E.depthBufferClosed E.scanConversionClosed)

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse
