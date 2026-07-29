import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

def ConstrainedTopologyClosure (A : AdmittedTopologicalObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_topology_endgame (A : AdmittedTopologicalObject) :
    ConstrainedTopologyClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse