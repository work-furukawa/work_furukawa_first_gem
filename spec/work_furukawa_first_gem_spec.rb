RSpec.describe WorkFurukawaFirstGem do
  it "has a version number" do
    expect(WorkFurukawaFirstGem::VERSION).not_to be nil
  end

  it "greet test" do
    expect(WorkFurukawaFirstGem.greet).to eq 'Hello'
  end
end
