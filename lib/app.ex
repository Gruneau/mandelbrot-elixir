defmodule App do
  def demo() do
    IO.puts "Writing demo image to file..."
    small(-2.6, 1.2, 1.2)
  end
  def small(x0, y0, xn) do
    width = 960
    height = 540
    depth = 64
    k = (xn - x0) / width
    image = Mandel.mandelbrot(width, height, x0, y0, k, depth)
    PPM.write("small.ppm", image)
  end
end