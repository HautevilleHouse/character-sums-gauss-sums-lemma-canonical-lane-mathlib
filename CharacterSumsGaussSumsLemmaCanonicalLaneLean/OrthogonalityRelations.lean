import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsLemmaCanonicalLaneLean

structure OrthogonalityRelationsPackage where
  additiveCharSum: Prop
  multiplicativeCharSum: Prop
  additiveCharSumTerm: additiveCharSum
  multiplicativeCharSumTerm: multiplicativeCharSum

structure OrthogonalityRelationsEvidence (O: OrthogonalityRelationsPackage) where
  additiveCharSumClosed: O.additiveCharSum
  multiplicativeCharSumClosed: O.multiplicativeCharSum

def OrthogonalityRelationsClosed (O: OrthogonalityRelationsPackage): Prop :=
  O.additiveCharSum ∧ O.multiplicativeCharSum

theorem orthogonality_relations_closed_from_evidence
    (O: OrthogonalityRelationsPackage) (E: OrthogonalityRelationsEvidence O):
    OrthogonalityRelationsClosed O := by
  exact And.intro E.additiveCharSumClosed E.multiplicativeCharSumClosed

end CharacterSumsGaussSumsLemmaCanonicalLaneLean
end HautevilleHouse