import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.CellBiologyAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure ReceptorLigandPackage where
  receptorType : Type
  ligandType : Type
  bindingDomain : Prop
  affinityConstant : Prop
  downstreamKinase : Prop
  signalingCascade : Prop

structure ReceptorLigandEvidence (R : ReceptorLigandPackage) where
  bindingDomainClosed : R.bindingDomain
  affinityConstantClosed : R.affinityConstant
  downstreamKinaseClosed : R.downstreamKinase
  signalingCascadeClosed : R.signalingCascade

def ReceptorLigandClosed (R : ReceptorLigandPackage) : Prop :=
  R.bindingDomain ∧ R.affinityConstant ∧ R.downstreamKinase ∧ R.signalingCascade

theorem receptor_ligand_closed_from_evidence (R : ReceptorLigandPackage) (E : ReceptorLigandEvidence R) : ReceptorLigandClosed R := by
  exact And.intro E.bindingDomainClosed (And.intro E.affinityConstantClosed (And.intro E.downstreamKinaseClosed E.signalingCascadeClosed))

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse