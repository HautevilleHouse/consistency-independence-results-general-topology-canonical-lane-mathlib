import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean.GeneralTopologyAdmissibleObject

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

def gateClosed (A : AdmittedTopologicalObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmittedTopologicalObject) :
    gateClosed A :=
  A.gateWitness

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse