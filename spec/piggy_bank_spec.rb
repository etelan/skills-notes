require 'piggy_bank'

describe '#DEPOSIT' do
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

describe '#CLING' do
  it 'make a cling if contains coins' do

    # Create
    bank_of_england = PiggyBank.new

    # Functions
    bank_of_england.deposit(1)

    # Test the function
    expect do
        bank_of_england.cling
    end.to output('cling').to_stdout


  end

  it 'no coins, no cling' do

    # Create
    bank_of_england = PiggyBank.new

    # Test the function
    expect do
        bank_of_england.cling
    end.to output('silence').to_stdout


  end
end

describe '#SMASH' do
  it 'print the coin score, break the bank' do

    # Create
    bank_of_england = PiggyBank.new

    # Function
    bank_of_england.deposit(1)
    amount = bank_of_england.coins.to_s

    # Test the function
    expect do
        bank_of_england.smash
    end.to output("You now have " + amount + " amount of coins.").to_stdout
  end
end
