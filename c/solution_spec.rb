require_relative 'solution'

RSpec.describe Solution do
  it 'returns the expected result' do
    solver = Solution.new
    expect(solver.solution(4, 5)).to eq(3)
#    expect(solver.solution(-4, 5)).to eq(3)

#    expect(solver.solution([])).to eq()
#    expect(solver.solution([])).to eq()
  end
end
