import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure LigandReceptorBinding where
  ligandConcentration : Prop
  receptorBindingAffinity : Prop
  bindingConstantComputed : Prop
  bindingConstantComputedTerm : bindingConstantComputed

structure SignalTransduction where
  receptorActivation : Prop
  secondMessengerRelease : Prop
  phosphorylationCascade : Prop
  cascadeAmplification : Prop
  cascadeAmplificationTerm : cascadeAmplification

structure TranscriptionalResponse where
  transcriptionFactorActivated : Prop
  geneExpressionRegulated : Prop
  cellularResponseInduced : Prop
  cellularResponseInducedTerm : cellularResponseInduced

structure SignalingPathwayObligations where
  ligandReceptor : LigandReceptorBinding
  transduction : SignalTransduction
  transcriptional : TranscriptionalResponse
  pathwayIntegrated : Prop
  pathwayIntegratedTerm : pathwayIntegrated

structure SignalingPathwayEvidence (O : SignalingPathwayObligations) where
  ligandReceptorClosed : O.ligandReceptor.bindingConstantComputed
  transductionClosed : O.transduction.cascadeAmplification
  transcriptionalClosed : O.transcriptional.cellularResponseInduced
  pathwayIntegratedClosed : O.pathwayIntegrated

def SignalingPathwayClosed (O : SignalingPathwayObligations) : Prop :=
  O.ligandReceptor.bindingConstantComputed ∧
  O.transduction.cascadeAmplification ∧
  O.transcriptional.cellularResponseInduced ∧
  O.pathwayIntegrated

theorem signaling_pathway_closed_from_evidence (O : SignalingPathwayObligations)
    (E : SignalingPathwayEvidence O) : SignalingPathwayClosed O := by
  exact And.intro E.ligandReceptorClosed
    (And.intro E.transductionClosed
      (And.intro E.transcriptionalClosed E.pathwayIntegratedClosed))

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse