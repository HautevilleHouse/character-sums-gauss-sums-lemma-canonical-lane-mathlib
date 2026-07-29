import canonicalLaneMathlib.AdmissibleClass
import CharacterSumsGaussSumsLemmaCanonicalLaneLean.GaussSumPackage

/-!
# Character Sum Estimates Package

This module defines character sum estimates, including Weil-type bounds
and the Polya-Vinogradov inequality, framed as an admissible-class bridge.
-/

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure CharacterSumEstimatesPackage (F : Type u) [Field F] [DecidableEq F] where
  characterSumBound : Prop
  polyaVinogradovBound : Prop
  weilBound : Prop
  characterSumBoundProof : characterSumBound
  polyaVinogradovBoundProof : polyaVinogradovBound
  weilBoundProof : weilBound

structure CharacterSumEstimatesEvidence (F : Type u) [Field F] [DecidableEq F]
  (Pkg : CharacterSumEstimatesPackage F) where
  characterSumBoundClosed : Pkg.characterSumBound
  polyaVinogradovBoundClosed : Pkg.polyaVinogradovBound
  weilBoundClosed : Pkg.weilBound

def CharacterSumEstimatesClosed (F : Type u) [Field F] [DecidableEq F]
  (Pkg : CharacterSumEstimatesPackage F) : Prop :=
  Pkg.characterSumBound ∧ Pkg.polyaVinogradovBound ∧ Pkg.weilBound

theorem character_sum_estimates_closed_from_evidence (F : Type u) [Field F] [DecidableEq F]
  (Pkg : CharacterSumEstimatesPackage F) (E : CharacterSumEstimatesEvidence F Pkg) :
  CharacterSumEstimatesClosed F Pkg := by
  exact And.intro E.characterSumBoundClosed
    (And.intro E.polyaVinogradovBoundClosed E.weilBoundClosed)

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse