require('rspec')
require('triangles')

describe('Triangle#triangles') do
  it('returns false if it is not a triangle') do
    test_triangle =  Triangle.new(4, 4, 16)
    expect(test_triangle.triangles()).to(eq(false))
  end

  it('returns true if it is a triangle') do
    test_triangle =  Triangle.new(4, 5, 5)
    expect(test_triangle.triangles()).to(eq(true))
  end

  it('returns true if it is an equalateral triangle') do
    test_triangle =  Triangle.new(4, 4, 4)
    expect(test_triangle.triangles()).to(eq(true))
  end

  it('return true if it is an isosceles triangle') do
    test_triangle =  Triangle.new(5, 5, 4)
    expect(test_triangle.triangles()).to(eq(true))
  end

  it('return false if the unequal side is more than twice the two equal sides') do
    test_triangle = Triangle.new(6, 6, 24)
    expect(test_triangle.triangles()).to(eq(false))
  end
end
