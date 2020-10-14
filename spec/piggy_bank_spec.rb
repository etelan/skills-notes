require 'piggy_bank'

describe 'deposit' do
  it 'put a coin in the bank, and the hidden coin balance goes up' do

    # Create
    bank_of_england = PiggyBank.new

    # Function
    bank_of_england.deposit(1)

    # Test Values
    actual_value = bank_of_england.coins
    expected_value = 1

    # Check
    expect(actual_value).to eq expected_value
  end
end
