import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure TransformationPipelinePackage where
  modelMatrix : Prop
  viewMatrix : Prop
  projectionMatrix : Prop
  matrixMultiplication : Prop
  modelMatrixClosed : modelMatrix
  viewMatrixClosed : viewMatrix
  projectionMatrixClosed : projectionMatrix
  matrixMultiplicationClosed : matrixMultiplication

structure TransformationPipelineEvidence (T : TransformationPipelinePackage) where
  modelMatrixClosed : T.modelMatrix
  viewMatrixClosed : T.viewMatrix
  projectionMatrixClosed : T.projectionMatrix
  matrixMultiplicationClosed : T.matrixMultiplication

def TransformationPipelineClosed (T : TransformationPipelinePackage) : Prop :=
  T.modelMatrix ∧ T.viewMatrix ∧ T.projectionMatrix ∧ T.matrixMultiplication

theorem transformation_pipeline_closed_from_evidence (T : TransformationPipelinePackage)
    (E : TransformationPipelineEvidence T) : TransformationPipelineClosed T := by
  exact And.intro E.modelMatrixClosed
    (And.intro E.viewMatrixClosed
      (And.intro E.projectionMatrixClosed E.matrixMultiplicationClosed))

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse
