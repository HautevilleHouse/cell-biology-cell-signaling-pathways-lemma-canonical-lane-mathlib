import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure ReceptorLigandBindingPackage where
  receptorType : Type u
  ligandType : Type v
  bindingAffinity : Prop
  dissociationConstant : Prop
  bindingSpecificity : Prop
  signalInitiation : Prop

structure ReceptorLigandBindingEvidence (R : ReceptorLigandBindingPackage) where
  bindingAffinityClosed : R.bindingAffinity
  dissociationConstantClosed : R.dissociationConstant
  bindingSpecificityClosed : R.bindingSpecificity
  signalInitiationClosed : R.signalInitiation

def ReceptorLigandBindingClosed (R : ReceptorLigandBindingPackage) : Prop :=
  R.bindingAffinity ∧ R.dissociationConstant ∧ R.bindingSpecificity ∧ R.signalInitiation

theorem receptor_ligand_binding_closed_from_evidence
    (R : ReceptorLigandBindingPackage) (E : ReceptorLigandBindingEvidence R) :
    ReceptorLigandBindingClosed R := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.dissociationConstantClosed
      (And.intro E.bindingSpecificityClosed E.signalInitiationClosed))

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse