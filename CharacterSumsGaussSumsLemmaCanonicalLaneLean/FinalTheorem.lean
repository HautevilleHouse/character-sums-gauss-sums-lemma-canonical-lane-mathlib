import canonicalLaneMathlib.AdmissibleClass
import CharacterSumsGaussSumsLemmaCanonicalLaneLean.CharacterSumEstimates
import CharacterSumsGaussSumsLemmaCanonicalLaneLean.GaussSumPackage
import CharacterSumsGaussSumsLemmaCanonicalLaneLean.BridgeLemmas

/-!
# Final Theorem: Gauss Sums Lemma Closure

This module defines the constrained closure for the Gauss Sums Lemma
and proves the endgame theorem.
-/

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

def ConstrainedGaussSumsLemmaClosure (F : Type u) [Field F] [DecidableEq F]
  (A : AdmissibleClass) (Pkg : CharacterSumEstimatesPackage F) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ CharacterSumEstimatesClosed F Pkg

theorem constrained_gauss_sums_lemma_endgame (F : Type u) [Field F] [DecidableEq F]
  (A : AdmissibleClass) (Pkg : CharacterSumEstimatesPackage F)
  (E : CharacterSumEstimatesEvidence F Pkg) :
  ConstrainedGaussSumsLemmaClosure F A Pkg := by
  refine And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A)
      (character_sum_estimates_closed_from_evidence F Pkg E))

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse