import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean.GeneralTopologyAdmissibleObject

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

def bridgeClosed (A : AdmittedTopologicalObject) : Prop :=
  TopologicalProperty A.space

theorem bridge_from_admissible_class (A : AdmittedTopologicalObject) :
    bridgeClosed A :=
  A.property

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse