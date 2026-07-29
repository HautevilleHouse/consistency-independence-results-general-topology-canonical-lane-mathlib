import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean.GeneralTopologyAdmissibleObject

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure CoveringPropertiesPackage where
  lindelöf : Prop
  metacompact : Prop
  paracompact : Prop
  starRefinement : Prop
  lindelöfClosed : lindelöf
  metacompactClosed : metacompact
  paracompactClosed : paracompact
  starRefinementClosed : starRefinement

structure CoveringPropertiesEvidence (C : CoveringPropertiesPackage) where
  allClosed : C.lindelöf ∧ C.metacompact ∧ C.paracompact ∧ C.starRefinement

def CoveringPropertiesClosed (C : CoveringPropertiesPackage) : Prop :=
  C.lindelöf ∧ C.metacompact ∧ C.paracompact ∧ C.starRefinement

theorem covering_properties_closed_from_evidence (C : CoveringPropertiesPackage)
    (E : CoveringPropertiesEvidence C) : CoveringPropertiesClosed C :=
  E.allClosed

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse