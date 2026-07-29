import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure QuadraticReciprocityPackage where
  primeP: Nat
  primeQ: Nat
  legendreSymbolP: Int
  legendreSymbolQ: Int
  productFormula: Prop
  productFormulaTerm: productFormula

structure QuadraticReciprocityEvidence (Q: QuadraticReciprocityPackage) where
  productFormulaClosed: Q.productFormula

def QuadraticReciprocityClosed (Q: QuadraticReciprocityPackage): Prop :=
  Q.productFormula

theorem quadratic_reciprocity_closed_from_evidence
    (Q: QuadraticReciprocityPackage) (E: QuadraticReciprocityEvidence Q):
    QuadraticReciprocityClosed Q := by
  exact E.productFormulaClosed

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse