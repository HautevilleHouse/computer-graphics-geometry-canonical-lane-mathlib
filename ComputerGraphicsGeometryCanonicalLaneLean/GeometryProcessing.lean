import canonicalLaneMathlib.GeometryProcessing

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure GeometryProcessingPackage where
  bezierCurves : Prop
  nurbsSurfaces : Prop
  subdivisionSurfaces : Prop
  meshSimplification : Prop
  catmullClarkSubdivision : Prop

structure GeometryProcessingEvidence (G : GeometryProcessingPackage) where
  bezierCurvesClosed : G.bezierCurves
  nurbsSurfacesClosed : G.nurbsSurfaces
  subdivisionSurfacesClosed : G.subdivisionSurfaces
  meshSimplificationClosed : G.meshSimplification
  catmullClarkSubdivisionClosed : G.catmullClarkSubdivision

def GeometryProcessingClosed (G : GeometryProcessingPackage) : Prop :=
  G.bezierCurves ∧ G.nurbsSurfaces ∧
  G.subdivisionSurfaces ∧ G.meshSimplification ∧ G.catmullClarkSubdivision

theorem geometry_processing_closed_from_evidence (G : GeometryProcessingPackage)
    (E : GeometryProcessingEvidence G) : GeometryProcessingClosed G := by
  exact And.intro E.bezierCurvesClosed
    (And.intro E.nurbsSurfacesClosed
      (And.intro E.subdivisionSurfacesClosed
        (And.intro E.meshSimplificationClosed E.catmullClarkSubdivisionClosed)))

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse
