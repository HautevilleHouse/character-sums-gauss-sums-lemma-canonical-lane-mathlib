import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : GaussSumsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GaussSumsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse