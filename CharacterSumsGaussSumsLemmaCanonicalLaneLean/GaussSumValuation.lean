import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterSumsGaussSumsLemmaCanonicalLaneLean.GaussSumDefinition

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure GaussSumValuationPackage {G : GaussSumPackage} where
  absoluteValue : ℂ -> ℝ
  valuationFormula : Prop
  valuationBound : Prop
  valuationFormulaClosed : valuationFormula
  valuationBoundClosed : valuationBound

structure GaussSumValuationEvidence {G : GaussSumPackage} (V : GaussSumValuationPackage G) where
  valuationFormulaClosed : V.valuationFormula
  valuationBoundClosed : V.valuationBound

def GaussSumValuationClosed {G : GaussSumPackage} (V : GaussSumValuationPackage G) : Prop :=
  V.valuationFormula ∧ V.valuationBound

theorem gauss_sum_valuation_closed_from_evidence {G : GaussSumPackage} (V : GaussSumValuationPackage G) (E : GaussSumValuationEvidence V) :
    GaussSumValuationClosed V := by
  exact And.intro E.valuationFormulaClosed E.valuationBoundClosed

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse