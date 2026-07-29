import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure ReceptorBindingPackage where
  ligandType : Type u
  receptorType : Type v
  bindingAffinity : Prop
  conformationalChange : Prop
  downstreamActivation : Prop

structure ReceptorBindingEvidence (R : ReceptorBindingPackage) where
  bindingAffinityClosed : R.bindingAffinity
  conformationalChangeClosed : R.conformationalChange
  downstreamActivationClosed : R.downstreamActivation

def ReceptorBindingClosed (R : ReceptorBindingPackage) : Prop :=
  R.bindingAffinity ∧ R.conformationalChange ∧ R.downstreamActivation

theorem receptor_binding_closed_from_evidence (R : ReceptorBindingPackage)
    (E : ReceptorBindingEvidence R) : ReceptorBindingClosed R := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.conformationalChangeClosed E.downstreamActivationClosed)

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse