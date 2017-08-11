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

    expect(STDOUT).to receive(:puts).with('buzz').twice
    fizzbuzz([10, 25])
  end

  it 'prints fizzbuzz if a number is divisible by three and five' do
    expect(STDOUT).to receive(:puts).with('fizzbuzz')
    fizzbuzz([15])

    expect(STDOUT).to receive(:puts).with('fizzbuzz').twice
    fizzbuzz([15, 30])
  end

  it 'prints the number if a number if not divisible by three or five' do
    expect(STDOUT).to receive(:puts).with(22)
    fizzbuzz([22])

    expect(STDOUT).to receive(:puts).with(8)
    expect(STDOUT).to receive(:puts).with(44)
    fizzbuzz([8, 44])
  end
end
