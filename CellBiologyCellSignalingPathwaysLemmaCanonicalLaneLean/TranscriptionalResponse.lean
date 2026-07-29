import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure TranscriptionalResponsePackage where
  transcriptionFactor : Type u
  nuclearTranslocation : Prop
  dnaBinding : Prop
  geneExpressionChange : Prop

structure TranscriptionalResponseEvidence (T : TranscriptionalResponsePackage) where
  nuclearTranslocationClosed : T.nuclearTranslocation
  dnaBindingClosed : T.dnaBinding
  geneExpressionChangeClosed : T.geneExpressionChange

def TranscriptionalResponseClosed (T : TranscriptionalResponsePackage) : Prop :=
  T.nuclearTranslocation ∧ T.dnaBinding ∧ T.geneExpressionChange

theorem transcriptional_response_closed_from_evidence
    (T : TranscriptionalResponsePackage) (E : TranscriptionalResponseEvidence T) :
    TranscriptionalResponseClosed T := by
  exact And.intro E.nuclearTranslocationClosed
    (And.intro E.dnaBindingClosed E.geneExpressionChangeClosed)

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse