require_relative '../lib/fizzbuzz.rb'

describe 'fizzbuzz' do
  it 'prints fizz if number is divisible by three' do
    expect(STDOUT).to receive(:puts).with('fizz')
    fizzbuzz(Array.new(1){3})
  end

  it 'prints buzz if number is divisible by five' do
    expect(STDOUT).to receive(:puts).with('buzz')
    fizzbuzz(Array.new(1){5})
  end
end
