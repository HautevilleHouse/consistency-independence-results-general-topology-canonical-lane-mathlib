import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean.GeneralTopologyAdmissibleObject

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure SeparationAxiomsPackage where
  T0 : Prop
  T1 : Prop
  T2 : Prop
  regular : Prop
  normal : Prop
  T0Closed : T0
  T1Closed : T1
  T2Closed : T2
  regularClosed : regular
  normalClosed : normal

structure SeparationAxiomsEvidence (S : SeparationAxiomsPackage) where
  allAxiomsClosed : S.T0 ∧ S.T1 ∧ S.T2 ∧ S.regular ∧ S.normal

def SeparationAxiomsClosed (S : SeparationAxiomsPackage) : Prop :=
  S.T0 ∧ S.T1 ∧ S.T2 ∧ S.regular ∧ S.normal

theorem separation_axioms_closed_from_evidence (S : SeparationAxiomsPackage)
    (E : SeparationAxiomsEvidence S) : SeparationAxiomsClosed S :=
  E.allAxiomsClosed

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse