import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure LigandReceptorBindingPackage where
  ligandSpecies : Type u
  receptorSpecies : Type v
  bindingAffinity : Prop
  bindingAffinityComputed : Prop
  lawOfMassAction : Prop
  bindingConstantDerived : Prop
  bindingConstantDerivedTerm : bindingConstantDerived

structure LigandReceptorBindingEvidence (P : LigandReceptorBindingPackage) where
  bindingAffinityComputedClosed : P.bindingAffinityComputed
  lawOfMassActionClosed : P.lawOfMassAction
  bindingConstantDerivedClosed : P.bindingConstantDerived

def LigandReceptorBindingClosed (P : LigandReceptorBindingPackage) : Prop :=
  P.bindingAffinityComputed ∧ P.lawOfMassAction ∧ P.bindingConstantDerived

theorem ligand_receptor_binding_closed_from_evidence (P : LigandReceptorBindingPackage)
    (E : LigandReceptorBindingEvidence P) : LigandReceptorBindingClosed P := by
  exact And.intro E.bindingAffinityComputedClosed
    (And.intro E.lawOfMassActionClosed E.bindingConstantDerivedClosed)

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse