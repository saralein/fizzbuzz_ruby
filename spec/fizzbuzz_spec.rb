require_relative '../lib/fizzbuzz.rb'

describe 'fizzbuzz' do
  it 'prints fizz if number is divisible by three' do
    expect(STDOUT).to receive(:puts).with('fizz')
    fizzbuzz([3])

    expect(STDOUT).to receive(:puts).with('fizz')
    fizzbuzz([9])

    expect(STDOUT).to receive(:puts).twice.with('fizz')
    fizzbuzz([6, 12])
  end

  it 'prints buzz if number is divisible by five' do
    expect(STDOUT).to receive(:puts).with('buzz')
    fizzbuzz([5])

    expect(STDOUT).to receive(:puts).with('buzz')
    fizzbuzz([20])

    expect(STDOUT).to receive(:puts).twice.with('buzz')
    fizzbuzz([10, 25])
  end
end
