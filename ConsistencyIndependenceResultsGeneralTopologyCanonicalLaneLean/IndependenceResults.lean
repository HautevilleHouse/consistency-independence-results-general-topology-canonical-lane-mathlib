import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean.GeneralTopologyAdmissibleObject

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure IndependenceResultsPackage where
  CHIndependence : Prop
  MAIndependence : Prop
  PFAIndependence : Prop
  CHIndependenceClosed : CHIndependence
  MAIndependenceClosed : MAIndependence
  PFAIndependenceClosed : PFAIndependence

structure IndependenceResultsEvidence (I : IndependenceResultsPackage) where
  allClosed : I.CHIndependence ∧ I.MAIndependence ∧ I.PFAIndependence

def IndependenceResultsClosed (I : IndependenceResultsPackage) : Prop :=
  I.CHIndependence ∧ I.MAIndependence ∧ I.PFAIndependence

theorem independence_results_closed_from_evidence (I : IndependenceResultsPackage)
    (E : IndependenceResultsEvidence I) : IndependenceResultsClosed I :=
  E.allClosed

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse