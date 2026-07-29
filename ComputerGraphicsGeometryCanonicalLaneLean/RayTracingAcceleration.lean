import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure RayTracingAccelerationPackage where
  boundingVolumeHierarchy : Prop
  rayTriangleIntersection : Prop
  traversalAlgorithm : Prop
  boundingVolumeHierarchyClosed : boundingVolumeHierarchy
  rayTriangleIntersectionClosed : rayTriangleIntersection
  traversalAlgorithmClosed : traversalAlgorithm

structure RayTracingAccelerationEvidence (A : RayTracingAccelerationPackage) where
  boundingVolumeHierarchyClosed : A.boundingVolumeHierarchy
  rayTriangleIntersectionClosed : A.rayTriangleIntersection
  traversalAlgorithmClosed : A.traversalAlgorithm

def RayTracingAccelerationClosed (A : RayTracingAccelerationPackage) : Prop :=
  A.boundingVolumeHierarchy ∧ A.rayTriangleIntersection ∧ A.traversalAlgorithm

theorem ray_tracing_acceleration_closed_from_evidence (A : RayTracingAccelerationPackage)
    (E : RayTracingAccelerationEvidence A) : RayTracingAccelerationClosed A := by
  exact And.intro E.boundingVolumeHierarchyClosed
    (And.intro E.rayTriangleIntersectionClosed E.traversalAlgorithmClosed)

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse
