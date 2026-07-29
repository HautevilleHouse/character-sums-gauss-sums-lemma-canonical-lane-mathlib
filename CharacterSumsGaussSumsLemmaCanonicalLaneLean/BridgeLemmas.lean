import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GaussSumsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse