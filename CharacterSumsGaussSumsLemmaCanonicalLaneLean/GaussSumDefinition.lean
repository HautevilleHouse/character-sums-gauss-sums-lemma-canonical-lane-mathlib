import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure GaussSumPackage where
  field : Type u
  char : field -> field
  additiveCharacter : field -> ℂ
  multiplicativeCharacter : field \ {0} -> ℂ
  gaussSum : ℂ
  definitionValid : gaussSum = ∑ x in Finset.univ, additiveCharacter x * multiplicativeCharacter x

structure GaussSumEvidence (G : GaussSumPackage) where
  definitionValidClosed : G.definitionValid

def GaussSumClosed (G : GaussSumPackage) : Prop :=
  G.definitionValid

theorem gauss_sum_closed_from_evidence (G : GaussSumPackage) (E : GaussSumEvidence G) :
    GaussSumClosed G := by
  exact E.definitionValidClosed

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse