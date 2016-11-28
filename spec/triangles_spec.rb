require('rspec')
require('triangles')

describe('Triangle#triangles') do
  it('returns false if it is not a triangle') do
    test_triangle =  Triangle.new(4, 4, 16)
    expect(test_triangle.triangles()).to(eq(false))
  end

  it('returns true if it is an equalateral triangle') do
    test_triangle =  Triangle.new(4, 4, 4)
    expect(test_triangle.triangles()).to(eq(true))
  end
end
