import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure ProductForcingIndependencePackage where
  spaceType : Type u
  topologyStructure : TopologicalSpace spaceType
  productForcing : Type v
  independenceGuarantee : Prop
  consistencyTransfer : Prop

structure ProductForcingIndependenceEvidence (P : ProductForcingIndependencePackage) where
  independenceGuaranteeClosed : P.independenceGuarantee
  consistencyTransferClosed : P.consistencyTransfer

def ProductForcingIndependenceClosed (P : ProductForcingIndependencePackage) : Prop :=
  P.independenceGuarantee ∧ P.consistencyTransfer

theorem product_forcing_independence_closed_from_evidence
    (P : ProductForcingIndependencePackage) (E : ProductForcingIndependenceEvidence P) :
    ProductForcingIndependenceClosed P :=
  And.intro E.independenceGuaranteeClosed E.consistencyTransferClosed

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse