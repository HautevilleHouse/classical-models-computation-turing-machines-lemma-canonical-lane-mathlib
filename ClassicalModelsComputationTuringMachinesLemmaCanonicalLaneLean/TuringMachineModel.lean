import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesLemmaCanonicalLaneLean

structure TuringMachine where
  states : Nat
  alphabet : List Bool
  transitionFunction : Nat → Bool → Nat × Bool × Bool  -- (nextState, writeSymbol, moveDirection: 0=left,1=right)
  startState : Nat
  acceptState : Nat
  rejectState : Nat

structure TuringMachineLanguage where
  tm : TuringMachine
  input : List Bool
  accepts : Prop

def recognizes (tm : TuringMachine) (L : Set (List Bool)) : Prop :=
  ∀ x : List Bool, tm.accepts x ↔ x ∈ L

end ClassicalModelsComputationTuringMachinesLemmaCanonicalLaneLean
end HautevilleHouse