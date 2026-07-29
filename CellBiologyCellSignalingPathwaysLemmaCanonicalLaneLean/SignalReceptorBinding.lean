import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure ReceptorBindingPackage where
  ligand : Type u
  receptor : Type v
  bindingAffinity : Prop
  dissociationConstant : Prop
  bindingSpecificity : Prop

structure ReceptorBindingEvidence (R : ReceptorBindingPackage) where
  bindingAffinityClosed : R.bindingAffinity
  dissociationConstantClosed : R.dissociationConstant
  bindingSpecificityClosed : R.bindingSpecificity

def ReceptorBindingClosed (R : ReceptorBindingPackage) : Prop :=
  R.bindingAffinity ∧ R.dissociationConstant ∧ R.bindingSpecificity

theorem receptor_binding_closed_from_evidence (R : ReceptorBindingPackage) (E : ReceptorBindingEvidence R) : ReceptorBindingClosed R := by
  exact And.intro E.bindingAffinityClosed (And.intro E.dissociationConstantClosed E.bindingSpecificityClosed)

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse