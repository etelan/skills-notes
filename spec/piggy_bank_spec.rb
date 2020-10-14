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

describe 'cling' do
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

describe 'break' do
  it 'break, print the coin score, delete the piggy bank' do

    # Create
    bank_of_england = PiggyBank.new

    # Function
    bank_of_england.deposit(1)


    # Test Values
    actual_value = bank_of_england.break
    expected_value = "You now have " + bank_of_england.coins.to_s + " amount of coins."

    # Test the function
    expect do
        actual_value
    end.to output(expected_value).to_stdout
  end
end
