import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure AdditiveChar (G : Type u) [AddGroup G] where
  carrier : G → ℂ
  multiplicative : ∀ x y, carrier (x + y) = carrier x * carrier y
  nontrivial : ∃ x, carrier x ≠ 1

def additiveCharGroup (G : Type u) [AddGroup G] : Type u := AdditiveChar G

structure MultiplicativeChar (G : Type u) [Group G] where
  carrier : G → ℂ
  multiplicative : ∀ x y, carrier (x * y) = carrier x * carrier y
  nontrivial : ∃ x, carrier x ≠ 1

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse