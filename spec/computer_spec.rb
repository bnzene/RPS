describe Computer do

  subject(:computer) { described_class.new }

  describe '#move' do
    it "selects a move" do
      allow(computer).to receive(:move).and_return("Paper")
      expect(computer.move).to eq "Paper"
    end
  end

end
