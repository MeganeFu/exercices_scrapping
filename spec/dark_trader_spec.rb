require_relative '../lib/dark_trader'

describe "the crypto_monnaies method" do
  it "should return TRUE" do
   
    expect(crypto_monnaies[3].all_symbols[0].length < 7).to eq(true)
  
  end

 
end
