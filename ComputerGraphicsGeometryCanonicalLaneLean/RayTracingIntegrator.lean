import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure LightSampling where
  direction : Vector3
  intensity : Float

def Vector3 : Type := Float × Float × Float

structure MaterialProperties where
  albedo : Float
  roughness : Float
  metallic : Float

def defaultMaterial : MaterialProperties :=
  { albedo := 0.8, roughness := 0.2, metallic := 0.0 }

structure RayTracingIntegrator where
  maxDepth : Nat
  samplesPerPixel : Nat
  materials : MaterialProperties
  lightSources : List LightSampling

def defaultRayTracingIntegrator : RayTracingIntegrator :=
  { maxDepth := 10, samplesPerPixel := 4, materials := defaultMaterial, lightSources := [] }

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse
