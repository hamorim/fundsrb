RSpec.describe Fundsrb do
  it "has a version number" do
    expect(Fundsrb::VERSION).not_to be nil
  end

  it "create a new client" do
    client = Fundsrb::Client.new
    expect(client.class).to eq Fundsrb::Client
  end

  it "search for a quote" do
    result = @client.query "ALZR11"
    expect(result[:name]).to eq "ALIANZA TRUST RENDA IMOBILIARIA FDO INV IMOB"
  end
end
