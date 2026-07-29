import canonicalLaneMathlib.AdmissibleClass
import Mathlib.GroupTheory.Subgroup
import Mathlib.NumberTheory.ArithmeticFunction

/-!
# Character Groups Package
-/

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure CharacterGroup (G : Type u) [AddCommGroup G] [TopologicalSpace G] where
  dualGroup : Type v
  pairing : G → dualGroup → ℂ
  continuousPairing : Prop
  orthogonality : Prop
  characterTable : Prop

structure CharacterGroupEvidence {G : Type u} [AddCommGroup G] [TopologicalSpace G]
    (C : CharacterGroup G) where
  continuousPairingClosed : C.continuousPairing
  orthogonalityClosed : C.orthogonality
  characterTableClosed : C.characterTable

def CharacterGroupClosed {G : Type u} [AddCommGroup G] [TopologicalSpace G]
    (C : CharacterGroup G) : Prop :=
  C.continuousPairing ∧ C.orthogonality ∧ C.characterTable

theorem character_group_closed_from_evidence {G : Type u} [AddCommGroup G] [TopologicalSpace G]
    (C : CharacterGroup G) (E : CharacterGroupEvidence C) : CharacterGroupClosed C := by
  exact And.intro E.continuousPairingClosed
    (And.intro E.orthogonalityClosed E.characterTableClosed)

end HautevilleHouse
end CharacterSumsGaussSumsLemmaCanonicalLaneLean