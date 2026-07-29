import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure VisibilityOcclusionPackage where
  zBuffer : Prop
  painterAlgorithm : Prop
  binarySpacePartition : Prop
  occlusionCulling : Prop

structure VisibilityOcclusionEvidence (V : VisibilityOcclusionPackage) where
  zBufferClosed : V.zBuffer
  painterAlgorithmClosed : V.painterAlgorithm
  binarySpacePartitionClosed : V.binarySpacePartition
  occlusionCullingClosed : V.occlusionCulling

def VisibilityOcclusionClosed (V : VisibilityOcclusionPackage) : Prop :=
  V.zBuffer ∧ V.painterAlgorithm ∧ V.binarySpacePartition ∧ V.occlusionCulling

theorem visibility_occlusion_closed_from_evidence (V : VisibilityOcclusionPackage)
    (E : VisibilityOcclusionEvidence V) : VisibilityOcclusionClosed V := by
  exact And.intro E.zBufferClosed
    (And.intro E.painterAlgorithmClosed
      (And.intro E.binarySpacePartitionClosed E.occlusionCullingClosed))

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse