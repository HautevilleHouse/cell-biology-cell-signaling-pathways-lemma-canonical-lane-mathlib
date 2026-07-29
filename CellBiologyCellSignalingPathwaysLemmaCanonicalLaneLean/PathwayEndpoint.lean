import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.PathwayFeedback

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure PathwayEndpointPackage {R : ReceptorBindingPackage} {S : SignalTransductionPackage R} {K : KinaseCascadePackage S} {T : TranscriptionActivationPackage K} {F : PathwayFeedbackPackage T} where
  cellularResponse : Prop
  pathwaySpecificity : Prop
  endpointEvidence : cellularResponse ∧ pathwaySpecificity

structure PathwayEndpointEvidence {R : ReceptorBindingPackage} {S : SignalTransductionPackage R} {K : KinaseCascadePackage S} {T : TranscriptionActivationPackage K} {F : PathwayFeedbackPackage T} (E : PathwayEndpointPackage F) where
  cellularResponseClosed : E.cellularResponse
  pathwaySpecificityClosed : E.pathwaySpecificity

def PathwayEndpointClosed {R : ReceptorBindingPackage} {S : SignalTransductionPackage R} {K : KinaseCascadePackage S} {T : TranscriptionActivationPackage K} {F : PathwayFeedbackPackage T} (E : PathwayEndpointPackage F) : Prop :=
  E.cellularResponse ∧ E.pathwaySpecificity

theorem pathway_endpoint_closed_from_evidence {R : ReceptorBindingPackage} {S : SignalTransductionPackage R} {K : KinaseCascadePackage S} {T : TranscriptionActivationPackage K} {F : PathwayFeedbackPackage T} (E : PathwayEndpointPackage F) (Ev : PathwayEndpointEvidence E) :
    PathwayEndpointClosed E := by
  exact And.intro Ev.cellularResponseClosed Ev.pathwaySpecificityClosed

theorem pathway_endpoint_supplies_response {R : ReceptorBindingPackage} {S : SignalTransductionPackage R} {K : KinaseCascadePackage S} {T : TranscriptionActivationPackage K} {F : PathwayFeedbackPackage T} (E : PathwayEndpointPackage F) :
    E.cellularResponse ∧ E.pathwaySpecificity :=
  E.endpointEvidence

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse