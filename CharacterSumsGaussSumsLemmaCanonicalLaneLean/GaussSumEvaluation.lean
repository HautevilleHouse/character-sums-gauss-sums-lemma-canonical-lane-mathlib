import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterSumsGaussSumsLemmaCanonicalLaneLean.CharacterGroup
import Mathlib.NumberTheory.QuadraticGaussSum

/-!
# Gauss Sum Evaluation Package
-/

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure GaussSumEvaluation {G : Type u} [AddCommGroup G] [Fintype G]
    (χ : G → ℂ) (a : G) where
  gaussSum : ℂ
  absoluteValueSquared : ℕ
  evaluationFormula : Prop
  orthogonalityRelation : Prop

structure GaussSumEvaluationEvidence {G : Type u} [AddCommGroup G] [Fintype G]
    {χ : G → ℂ} {a : G} (E : GaussSumEvaluation χ a) where
  evaluationFormulaClosed : E.evaluationFormula
  orthogonalityRelationClosed : E.orthogonalityRelation

def GaussSumEvaluationClosed {G : Type u} [AddCommGroup G] [Fintype G]
    {χ : G → ℂ} {a : G} (E : GaussSumEvaluation χ a) : Prop :=
  E.evaluationFormula ∧ E.orthogonalityRelation

theorem gauss_sum_evaluation_closed_from_evidence {G : Type u} [AddCommGroup G] [Fintype G]
    {χ : G → ℂ} {a : G} (E : GaussSumEvaluation χ a) (Ev : GaussSumEvaluationEvidence E) :
    GaussSumEvaluationClosed E := by
  exact And.intro Ev.evaluationFormulaClosed Ev.orthogonalityRelationClosed

end HautevilleHouse
end CharacterSumsGaussSumsLemmaCanonicalLaneLean