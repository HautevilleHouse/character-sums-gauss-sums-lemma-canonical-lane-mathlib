import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterSumsGaussSumsLemmaCanonicalLaneLean.GaussSumDefinition

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure GaussSumFactorizationPackage {G : GaussSumPackage} where
  factorizationOverFieldExtension : Prop
  primePowerCase : Prop
  productFormula : Prop
  factorizationOverFieldExtensionClosed : factorizationOverFieldExtension
  primePowerCaseClosed : primePowerCase
  productFormulaClosed : productFormula

structure GaussSumFactorizationEvidence {G : GaussSumPackage} (F : GaussSumFactorizationPackage G) where
  factorizationOverFieldExtensionClosed : F.factorizationOverFieldExtension
  primePowerCaseClosed : F.primePowerCase
  productFormulaClosed : F.productFormula

def GaussSumFactorizationClosed {G : GaussSumPackage} (F : GaussSumFactorizationPackage G) : Prop :=
  F.factorizationOverFieldExtension ∧ F.primePowerCase ∧ F.productFormula

theorem gauss_sum_factorization_closed_from_evidence {G : GaussSumPackage} (F : GaussSumFactorizationPackage G) (E : GaussSumFactorizationEvidence F) :
    GaussSumFactorizationClosed F := by
  exact And.intro E.factorizationOverFieldExtensionClosed
    (And.intro E.primePowerCaseClosed E.productFormulaClosed)

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse