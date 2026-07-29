import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure GaussSumPackage where
  additiveChar: Type u
  multiplicativeChar: Type v
  field: Type w
  sumValue: Type x
  sumComputed: Prop
  absoluteValueKnown: Prop
  sumComputedTerm: sumComputed
  absoluteValueKnownTerm: absoluteValueKnown

structure GaussSumEvidence (G: GaussSumPackage) where
  sumComputedClosed: G.sumComputed
  absoluteValueKnownClosed: G.absoluteValueKnown

def GaussSumClosed (G: GaussSumPackage): Prop :=
  G.sumComputed ∧ G.absoluteValueKnown

theorem gauss_sum_closed_from_evidence
    (G: GaussSumPackage) (E: GaussSumEvidence G):
    GaussSumClosed G := by
  exact And.intro E.sumComputedClosed E.absoluteValueKnownClosed

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse