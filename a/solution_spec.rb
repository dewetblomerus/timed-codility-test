require_relative 'solution'

RSpec.describe Solution do
  it 'returns the expected result' do
    solver = Solution.new
    expect(solver.solution(5, [5, 5, 1, 7, 2, 3, 5])).to eq(4)
    expect(solver.solution(5, [5, 5, 5])).to eq(0)
    expect(solver.solution(5, [0, 0, 0])).to eq(2)
#    expect(solver.solution([])).to eq()
#    expect(solver.solution([])).to eq()
  end
end
