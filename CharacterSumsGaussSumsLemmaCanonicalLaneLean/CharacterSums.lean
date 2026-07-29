import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure CharacterAdditivePackage where
  additiveCharacter: Type u
  field: Type v
  nonTrivial: Prop
  moduleOverField: Prop
  additiveCharacterTerm: additiveCharacter
  nonTrivialTerm: nonTrivial
  moduleOverFieldTerm: moduleOverField

structure CharacterAdditiveEvidence (C: CharacterAdditivePackage) where
  nonTrivialClosed: C.nonTrivial
  moduleOverFieldClosed: C.moduleOverField

def CharacterAdditiveClosed (C: CharacterAdditivePackage): Prop :=
  C.nonTrivial ∧ C.moduleOverField

theorem character_additive_closed_from_evidence
    (C: CharacterAdditivePackage) (E: CharacterAdditiveEvidence C):
    CharacterAdditiveClosed C := by
  exact And.intro E.nonTrivialClosed E.moduleOverFieldClosed

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse