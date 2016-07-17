require_relative 'solution'

RSpec.describe Solution do
  it 'returns the equilibrium index' do
    solver = Solution.new
    expect(solver.solution([])).to eq(nil)
#    expect(solver.solution([])).to eq()
#    expect(solver.solution([])).to eq()
  end
end
