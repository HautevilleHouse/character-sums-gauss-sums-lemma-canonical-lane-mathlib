import canonicalLaneMathlib.AdmissibleClass

/-!
# Prime Character Package

This module defines structures for prime characters (additive and multiplicative)
over finite fields, which are the building blocks of character sums and Gauss sums.
-/

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure PrimeCharacter (F : Type u) [Field F] where
  domain : F
  codomain : Type v
  toFun : F → codomain
  multiplicative : Prop
  additive : Prop
  trivialCharacter : Prop
  nontrivial : Prop

structure AdditiveCharacter (F : Type u) [Field F] [CharP F p] (p : ℕ) extends PrimeCharacter F where
  additiveCharProp : ∀ x y : F, toFun (x + y) = toFun x * toFun y

structure MultiplicativeCharacter (F : Type u) [Field F] extends PrimeCharacter F where
  multiplicativeCharProp : ∀ x y : F, toFun (x * y) = toFun x * toFun y

structure QuadraticCharacter (F : Type u) [Field F] extends MultiplicativeCharacter F where
  orderTwo : toFun ∘ toFun = λ x => 1

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse