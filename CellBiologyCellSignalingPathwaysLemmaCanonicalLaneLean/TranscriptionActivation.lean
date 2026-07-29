import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.KinaseCascade

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure TranscriptionActivationPackage {R : ReceptorBindingPackage} {S : SignalTransductionPackage R} {K : KinaseCascadePackage S} where
  transcriptionFactor : Prop
  nuclearImport : Prop
  geneExpression : Prop
  transcriptionFactorClosed : transcriptionFactor
  nuclearImportClosed : nuclearImport
  geneExpressionClosed : geneExpression

structure TranscriptionActivationEvidence {R : ReceptorBindingPackage} {S : SignalTransductionPackage R} {K : KinaseCascadePackage S} (T : TranscriptionActivationPackage K) where
  transcriptionFactorClosed : T.transcriptionFactor
  nuclearImportClosed : T.nuclearImport
  geneExpressionClosed : T.geneExpression

def TranscriptionActivationClosed {R : ReceptorBindingPackage} {S : SignalTransductionPackage R} {K : KinaseCascadePackage S} (T : TranscriptionActivationPackage K) : Prop :=
  T.transcriptionFactor ∧ T.nuclearImport ∧ T.geneExpression

theorem transcription_activation_closed_from_evidence {R : ReceptorBindingPackage} {S : SignalTransductionPackage R} {K : KinaseCascadePackage S} (T : TranscriptionActivationPackage K) (E : TranscriptionActivationEvidence T) :
    TranscriptionActivationClosed T := by
  exact And.intro E.transcriptionFactorClosed (And.intro E.nuclearImportClosed E.geneExpressionClosed)

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse