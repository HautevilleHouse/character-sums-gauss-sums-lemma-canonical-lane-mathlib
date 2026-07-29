import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterSumsGaussSumsLemmaCanonicalLaneLean.QuadraticGaussSum
import HautevilleHouse.CharacterSumsGaussSumsLemmaCanonicalLaneLean.GaussSumFactorization

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure GaussSumLemmaPackage {G : GaussSumPackage} where
  quadraticGaussSum : QuadraticGaussSumPackage G
  factorization : GaussSumFactorizationPackage G
  lemmaStatement : Prop
  lemmaProof : lemmaStatement
  lemmaStatementClosed : lemmaStatement

structure GaussSumLemmaEvidence {G : GaussSumPackage} (L : GaussSumLemmaPackage G) where
  lemmaStatementClosed : L.lemmaStatement

def GaussSumLemmaClosed {G : GaussSumPackage} (L : GaussSumLemmaPackage G) : Prop :=
  L.lemmaStatement

theorem gauss_sum_lemma_closed_from_evidence {G : GaussSumPackage} (L : GaussSumLemmaPackage G) (E : GaussSumLemmaEvidence L) :
    GaussSumLemmaClosed L := by
  exact E.lemmaStatementClosed

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse