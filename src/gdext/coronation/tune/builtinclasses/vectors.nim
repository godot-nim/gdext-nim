import gdext/core/geometrics

{.push, inline.}

export vectormath

# Functions
# ---------

# math
func cross*[T: SomeFloat](self:Vector[2,T]; with:Vector[2,T]): T =
  self.x * with.y - self.y * with.x;
# angles
func fromAngle*[T: SomeFloat](_:typedesc[NVector[2,T]]; angle: Radian[T]): NVector[2,T] =
  NVector[2,T] [cos angle, sin angle]

func angle*[T: SomeFloat](self: Vector[2,T]): Radian[T] =
  arctan2(self.y, self.x)
func angleToPoint*[T](self,to:Vector[2,T]): Radian[T] =
  angle (to - self)
func angleTo*[T: SomeFloat](self,to: Vector[2,T]): Radian[T] =
  arctan2(self.cross(to), self.dot(to))

# others
func aspect*[T: SomeFloat](self:Vector[2,T]): T = self.x / self.y
func aspect*[T: SomeInteger](self:Vector[2,T]): float = self.x / self.y