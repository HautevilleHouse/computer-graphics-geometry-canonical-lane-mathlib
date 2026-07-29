import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure GeometricTransformPackage where
  modelMatrix : Prop
  viewMatrix : Prop
  projectionMatrix : Prop
  vertexTransform : Prop

structure GeometricTransformEvidence (G : GeometricTransformPackage) where
  modelMatrixClosed : G.modelMatrix
  viewMatrixClosed : G.viewMatrix
  projectionMatrixClosed : G.projectionMatrix
  vertexTransformClosed : G.vertexTransform

def GeometricTransformClosed (G : GeometricTransformPackage) : Prop :=
  G.modelMatrix ∧ G.viewMatrix ∧ G.projectionMatrix ∧ G.vertexTransform

theorem geometric_transform_closed_from_evidence (G : GeometricTransformPackage)
    (E : GeometricTransformEvidence G) : GeometricTransformClosed G := by
  exact And.intro E.modelMatrixClosed
    (And.intro E.viewMatrixClosed
      (And.intro E.projectionMatrixClosed E.vertexTransformClosed))

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse