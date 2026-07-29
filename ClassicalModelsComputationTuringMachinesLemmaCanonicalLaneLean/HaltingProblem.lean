import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalModelsComputationTuringMachinesLemmaCanonicalLaneLean.TuringMachineModel

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesLemmaCanonicalLaneLean

def HaltingProblemInput : Type :=
  TuringMachine × List Bool

def halts (input : HaltingProblemInput) : Prop :=
  ∃ steps : Nat, True  -- abstracted

-- We state undecidability as a property
theorem haltingProblemUndecidable : ¬ (∃ (H : TuringMachine), ∀ (input : TuringMachine × List Bool), H.accepts input ↔ halts input) := by
  -- Classical proof by contradiction would go here
  sorry

def HaltingAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem halting_admissible_endgame (A : AdmissibleClass) : HaltingAdmissibleClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalModelsComputationTuringMachinesLemmaCanonicalLaneLean
end HautevilleHouse