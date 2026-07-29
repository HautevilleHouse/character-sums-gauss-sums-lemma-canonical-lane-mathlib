import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure MultiplicativeCharacter where
  modulus : Nat
  domain : Type
  values : domain → ℂ
  multiplicativeProperty : Prop
  nontriviality : Prop

structure MultiplicativeCharacterEvidence (χ : MultiplicativeCharacter) where
  multiplicativePropertyClosed : χ.multiplicativeProperty
  nontrivialityClosed : χ.nontriviality

def MultiplicativeCharacterClosed (χ : MultiplicativeCharacter) : Prop :=
  χ.multiplicativeProperty ∧ χ.nontriviality

theorem multiplicative_character_closed_from_evidence (χ : MultiplicativeCharacter)
    (E : MultiplicativeCharacterEvidence χ) : MultiplicativeCharacterClosed χ := by
  exact And.intro E.multiplicativePropertyClosed E.nontrivialityClosed

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse