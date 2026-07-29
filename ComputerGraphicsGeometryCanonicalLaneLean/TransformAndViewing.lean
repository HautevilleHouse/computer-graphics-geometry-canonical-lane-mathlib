import canonicalLaneMathlib.TransformAndViewing

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure TransformPackage where
  homogeneousCoordinates : Prop
  rotationTranslationScale : Prop
  projectionMatrices : Prop
  clippingVolume : Prop
  viewportTransform : Prop

structure TransformEvidence (T : TransformPackage) where
  homogeneousCoordinatesClosed : T.homogeneousCoordinates
  rotationTranslationScaleClosed : T.rotationTranslationScale
  projectionMatricesClosed : T.projectionMatrices
  clippingVolumeClosed : T.clippingVolume
  viewportTransformClosed : T.viewportTransform

def TransformClosed (T : TransformPackage) : Prop :=
  T.homogeneousCoordinates ∧ T.rotationTranslationScale ∧
  T.projectionMatrices ∧ T.clippingVolume ∧ T.viewportTransform

theorem transform_closed_from_evidence (T : TransformPackage)
    (E : TransformEvidence T) : TransformClosed T := by
  exact And.intro E.homogeneousCoordinatesClosed
    (And.intro E.rotationTranslationScaleClosed
      (And.intro E.projectionMatricesClosed
        (And.intro E.clippingVolumeClosed E.viewportTransformClosed)))

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse
