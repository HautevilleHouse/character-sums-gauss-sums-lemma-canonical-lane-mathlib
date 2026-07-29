import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure FiniteFieldCharacterPackage where
  field: Type u
  additiveChar: Type v
  multiplicativeChar: Type w
  trivialAdditive: Prop
  trivialMultiplicative: Prop
  nonTrivialAdditiveExists: Prop
  nonTrivialMultiplicativeExists: Prop
  trivialAdditiveTerm: trivialAdditive
  trivialMultiplicativeTerm: trivialMultiplicative
  nonTrivialAdditiveExistsTerm: nonTrivialAdditiveExists
  nonTrivialMultiplicativeExistsTerm: nonTrivialMultiplicativeExists

structure FiniteFieldCharacterEvidence (F: FiniteFieldCharacterPackage) where
  trivialAdditiveClosed: F.trivialAdditive
  trivialMultiplicativeClosed: F.trivialMultiplicative
  nonTrivialAdditiveExistsClosed: F.nonTrivialAdditiveExists
  nonTrivialMultiplicativeExistsClosed: F.nonTrivialMultiplicativeExists

def FiniteFieldCharacterClosed (F: FiniteFieldCharacterPackage): Prop :=
  F.trivialAdditive ∧ F.trivialMultiplicative ∧
  F.nonTrivialAdditiveExists ∧ F.nonTrivialMultiplicativeExists

theorem finite_field_character_closed_from_evidence
    (F: FiniteFieldCharacterPackage) (E: FiniteFieldCharacterEvidence F):
    FiniteFieldCharacterClosed F := by
  exact And.intro E.trivialAdditiveClosed
    (And.intro E.trivialMultiplicativeClosed
      (And.intro E.nonTrivialAdditiveExistsClosed E.nonTrivialMultiplicativeExistsClosed))

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse