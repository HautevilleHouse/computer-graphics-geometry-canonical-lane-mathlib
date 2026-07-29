import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure AdmissibleClass where
  object : GraphicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GraphicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse
