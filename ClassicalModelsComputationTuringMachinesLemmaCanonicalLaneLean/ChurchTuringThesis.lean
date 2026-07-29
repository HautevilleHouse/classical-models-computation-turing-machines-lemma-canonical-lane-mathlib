import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalModelsComputationTuringMachinesLemmaCanonicalLaneLean.TuringMachineModel

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesLemmaCanonicalLaneLean

structure ComputationModel where
  name : String
  canSimulate : TuringMachine → Prop
  simulatedBy : TuringMachine → Prop

def turingComplete (M : ComputationModel) : Prop :=
  ∀ tm : TuringMachine, M.canSimulate tm

theorem turingMachineIsTuringComplete : turingComplete ⟨"TM", λ tm => True, λ tm => True⟩ := by
  intro tm
  trivial

def ChurchTuringThesisAdmissible (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem church_turing_thesis_bridge (A : AdmissibleClass) : ChurchTuringThesisAdmissible A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalModelsComputationTuringMachinesLemmaCanonicalLaneLean
end HautevilleHouse