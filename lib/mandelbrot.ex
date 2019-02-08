defmodule Mandelbrot do
  # Takes a complex number c and the number of maximum iterations to check 
  # if c is a member of the mandelbrot set
  def mandelbrot(c, iter) do
    z0 = Cmplx.new(0, 0)
    i = 0
    test(i, z0, c, iter)
  end

  def test(i, z, c, iter) do
    # z_next = (z_prev)^2 + c
    next = Cmplx.add(Cmplx.sqr(z), c)
    case Cmplx.abs(next) <= 2 do
      true -> 
        case iter > 0 do
          true -> test(i+1, next, c, iter-1)
          _    -> next
        end
      _    -> 0
    end
  end

end
