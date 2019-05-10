RSpec.describe ClassName::NumberConverter do
  describe "#to_word helper" do
    describe "returns a word from an int" do
      it "to_word(-1) => -1" do
        expect(ClassName::NumberConverter.to_word(-1)).to eq -1
      end
      it "to_word(0) => 'zero'" do
        expect(ClassName::NumberConverter.to_word(0)).to eq "zero"
      end
      it "to_word(1) => 'one'" do
        expect(ClassName::NumberConverter.to_word(1)).to eq "one"
      end
      it "to_word(1) => 'two'" do
        expect(ClassName::NumberConverter.to_word(2)).to eq "two"
      end
      it "to_word(2) => 'three'" do
        expect(ClassName::NumberConverter.to_word(3)).to eq "three"
      end
      it "to_word(3) => 'four'" do
        expect(ClassName::NumberConverter.to_word(4)).to eq "four"
      end
      it "to_word(4) => 'five'" do
        expect(ClassName::NumberConverter.to_word(5)).to eq "five"
      end
      it "to_word(5) => 'six'" do
        expect(ClassName::NumberConverter.to_word(6)).to eq "six"
      end
      it "to_word(6) => 'seven'" do
        expect(ClassName::NumberConverter.to_word(7)).to eq "seven"
      end
      it "to_word(7) => 'eight'" do
        expect(ClassName::NumberConverter.to_word(8)).to eq "eight"
      end
      it "to_word(9) => 'onine" do
        expect(ClassName::NumberConverter.to_word(9)).to eq "nine"
      end
      it "to_word(10) => 'oten" do
        expect(ClassName::NumberConverter.to_word(10)).to eq "ten"
      end
      it "to_word(11) => 'oeleven" do
        expect(ClassName::NumberConverter.to_word(11)).to eq "eleven"
      end
      it "to_word(12) => 'twelve'" do
        expect(ClassName::NumberConverter.to_word(12)).to eq "twelve"
      end
      it "to_word(13) => 'thirteen'" do
        expect(ClassName::NumberConverter.to_word(13)).to eq "thirteen"
      end
      it "to_word(14) => 'fourteen'" do
        expect(ClassName::NumberConverter.to_word(14)).to eq "fourteen"
      end
      it "to_word(15) => 'fifteen'" do
        expect(ClassName::NumberConverter.to_word(15)).to eq "fifteen"
      end
      it "to_word(16) => 'sixteen'" do
        expect(ClassName::NumberConverter.to_word(16)).to eq "sixteen"
      end
      it "to_word(17) => 17" do
        expect(ClassName::NumberConverter.to_word(17)).to eq 17
      end
    end
  end
end
