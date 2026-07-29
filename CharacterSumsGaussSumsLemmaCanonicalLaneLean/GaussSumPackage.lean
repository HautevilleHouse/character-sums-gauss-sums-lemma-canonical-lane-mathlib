import canonicalLaneMathlib.AdmissibleClass
import CharacterSumsGaussSumsLemmaCanonicalLaneLean.PrimeCharacterPackage

/-!
# Gauss Sum Package

This module defines Gauss sums, which are exponential sums involving additive
and multiplicative characters over finite fields.
-/

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure GaussSum (F : Type u) [Field F] [DecidableEq F] where
  character : MultiplicativeCharacter F
  additiveCharacter : AdditiveCharacter F (CharP.char F)
  domainSummation : Finset F
  value : ℂ
  definition : value = ∑ x in domainSummation, (character.toFun x) * (additiveCharacter.toFun x)

structure GaussSumPackage (F : Type u) [Field F] [DecidableEq F] where
  primeField : F
  additiveChar : AdditiveCharacter F (CharP.char F)
  multiplicativeChars : List (MultiplicativeCharacter F)
  gaussSums : List (GaussSum F)
  magnitudeEstimates : Prop
  quadraticGaussSum : GaussSum F
  quadraticGaussSumValueKnown : Prop
  hasseDavenportRelation : Prop

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse