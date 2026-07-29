import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure AdditiveCharacter where
  modulus : Nat
  domain : Type
  values : domain → ℂ
  additiveProperty : Prop
  nontriviality : Prop

structure AdditiveCharacterEvidence (ψ : AdditiveCharacter) where
  additivePropertyClosed : ψ.additiveProperty
  nontrivialityClosed : ψ.nontriviality

def AdditiveCharacterClosed (ψ : AdditiveCharacter) : Prop :=
  ψ.additiveProperty ∧ ψ.nontriviality

theorem additive_character_closed_from_evidence (ψ : AdditiveCharacter)
    (E : AdditiveCharacterEvidence ψ) : AdditiveCharacterClosed ψ := by
  exact And.intro E.additivePropertyClosed E.nontrivialityClosed

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse