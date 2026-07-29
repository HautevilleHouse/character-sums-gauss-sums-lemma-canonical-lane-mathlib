import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure QuadraticGaussSumPackage where
  oddPrime : Nat
  h : Nat.Prime oddPrime ∧ oddPrime ≠ 2
  gaussSumValue : ℂ
  signFormula : Prop
  evaluationFormula : Prop
  hasKnownValue : Prop

structure QuadraticGaussSumEvidence (Q : QuadraticGaussSumPackage) where
  signFormulaClosed : Q.signFormula
  evaluationFormulaClosed : Q.evaluationFormula
  hasKnownValueClosed : Q.hasKnownValue

def QuadraticGaussSumClosed (Q : QuadraticGaussSumPackage) : Prop :=
  Q.signFormula ∧ Q.evaluationFormula ∧ Q.hasKnownValue

theorem quadratic_gauss_sum_closed_from_evidence (Q : QuadraticGaussSumPackage)
    (E : QuadraticGaussSumEvidence Q) : QuadraticGaussSumClosed Q := by
  exact And.intro E.signFormulaClosed (And.intro E.evaluationFormulaClosed E.hasKnownValueClosed)

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse