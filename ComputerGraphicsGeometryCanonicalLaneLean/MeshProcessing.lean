import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure Vertex where
  position : (Float × Float × Float)
  normal : (Float × Float × Float)
  texCoord : (Float × Float)

def Vertex.zero : Vertex :=
  { position := (0,0,0), normal := (0,0,1), texCoord := (0,0) }

structure Triangle where
  v0 : Vertex
  v1 : Vertex
  v2 : Vertex

def Triangle.area (t : Triangle) : Float :=
  let (x0,y0,z0) := t.v0.position
  let (x1,y1,z1) := t.v1.position
  let (x2,y2,z2) := t.v2.position
  let ux := x1 - x0; let uy := y1 - y0; let uz := z1 - z0
  let vx := x2 - x0; let vy := y2 - y0; let vz := z2 - z0
  let cx := uy * vz - uz * vy
  let cy := uz * vx - ux * vz
  let cz := ux * vy - uy * vx
  0.5 * Float.sqrt (cx*cx + cy*cy + cz*cz)

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse
