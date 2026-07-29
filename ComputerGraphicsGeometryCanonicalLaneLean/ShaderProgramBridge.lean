import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputerGraphicsGeometryCanonicalLaneLean.RasterizationPipeline

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure ShaderProgramBridgePackage (R : RasterizationPipelinePackage) where
  vertexShaderCompilation : Prop
  fragmentShaderCompilation : Prop
  uniformBuffer : Prop
  vertexShaderCompilationClosed : vertexShaderCompilation
  fragmentShaderCompilationClosed : fragmentShaderCompilation
  uniformBufferClosed : uniformBuffer

structure ShaderProgramBridgeEvidence {R : RasterizationPipelinePackage}
    (S : ShaderProgramBridgePackage R) where
  vertexShaderCompilationClosed : S.vertexShaderCompilation
  fragmentShaderCompilationClosed : S.fragmentShaderCompilation
  uniformBufferClosed : S.uniformBuffer

def ShaderProgramBridgeClosed {R : RasterizationPipelinePackage}
    (S : ShaderProgramBridgePackage R) : Prop :=
  S.vertexShaderCompilation ∧ S.fragmentShaderCompilation ∧ S.uniformBuffer

theorem shader_program_bridge_closed_from_evidence {R : RasterizationPipelinePackage}
    (S : ShaderProgramBridgePackage R) (E : ShaderProgramBridgeEvidence S) :
    ShaderProgramBridgeClosed S := by
  exact And.intro E.vertexShaderCompilationClosed
    (And.intro E.fragmentShaderCompilationClosed E.uniformBufferClosed)

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse
