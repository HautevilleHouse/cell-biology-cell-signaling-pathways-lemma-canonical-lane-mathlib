import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.ReceptorActivation

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure PathwayLigandBindingPackage {R : ReceptorActivationPackage} where
  ligandAffinity : Prop
  bindingKinetics : Prop
  conformationalChange : Prop
  signalingInitiation : Prop

structure PathwayLigandBindingEvidence {R : ReceptorActivationPackage}
    (L : PathwayLigandBindingPackage R) where
  ligandAffinityClosed : L.ligandAffinity
  bindingKineticsClosed : L.bindingKinetics
  conformationalChangeClosed : L.conformationalChange
  signalingInitiationClosed : L.signalingInitiation

def PathwayLigandBindingClosed {R : ReceptorActivationPackage}
    (L : PathwayLigandBindingPackage R) : Prop :=
  L.ligandAffinity ∧ L.bindingKinetics ∧ L.conformationalChange ∧ L.signalingInitiation

theorem pathway_ligand_binding_closed_from_evidence
    {R : ReceptorActivationPackage} (L : PathwayLigandBindingPackage R)
    (E : PathwayLigandBindingEvidence L) : PathwayLigandBindingClosed L := by
  exact And.intro E.ligandAffinityClosed
    (And.intro E.bindingKineticsClosed
      (And.intro E.conformationalChangeClosed E.signalingInitiationClosed))

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse