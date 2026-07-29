import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterSumsGaussSumsLemmaCanonicalLaneLean.CharactersAdditiveMultiplicative
import HautevilleHouse.CharacterSumsGaussSumsLemmaCanonicalLaneLean.GaussSumDefinition

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

open AdditiveChar MultiplicativeChar

structure StickelbergerPackage {G : Type u} [FiniteAddGroup G] (χ : AdditiveChar G) (ψ : MultiplicativeChar G) where
  gaussSum : GaussSumData G χ ψ
  primeDecomposition : (Fintype.card G : ℕ) → ℕ
  valuationCondition : Prop

def StickelbergerClosed {G : Type u} [FiniteAddGroup G] (χ : AdditiveChar G) (ψ : MultiplicativeChar G) (S : StickelbergerPackage G χ ψ) : Prop :=
  S.valuationCondition

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse