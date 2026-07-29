import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterSumsGaussSumsLemmaCanonicalLaneLean.CharacterGroup
import Mathlib.Analysis.SpecialFunctions.Complex

/-!
# Sums of Characters Package
-/

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure SumsOfCharactersPackage {G : Type u} [AddCommGroup G] [Fintype G]
    (χ : G → ℂ) where
  characterSum : ℂ
  bound : ℝ
  orthogonalityEstimate : Prop
  weylSum : Prop

structure SumsOfCharactersEvidence {G : Type u} [AddCommGroup G] [Fintype G]
    {χ : G → ℂ} (S : SumsOfCharactersPackage χ) where
  orthogonalityEstimateClosed : S.orthogonalityEstimate
  weylSumClosed : S.weylSum

def SumsOfCharactersClosed {G : Type u} [AddCommGroup G] [Fintype G]
    {χ : G → ℂ} (S : SumsOfCharactersPackage χ) : Prop :=
  S.orthogonalityEstimate ∧ S.weylSum

theorem sums_of_characters_closed_from_evidence {G : Type u} [AddCommGroup G] [Fintype G]
    {χ : G → ℂ} (S : SumsOfCharactersPackage χ) (E : SumsOfCharactersEvidence S) :
    SumsOfCharactersClosed S := by
  exact And.intro E.orthogonalityEstimateClosed E.weylSumClosed

end HautevilleHouse
end CharacterSumsGaussSumsLemmaCanonicalLaneLean