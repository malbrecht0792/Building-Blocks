require "caesar_cipher"

describe "caesar_cipher" do

	context "given (abcd, 1)" do
		it "returns bcde" do
			expect(caesar_cipher("abcd",1)).to eql("bcde")
		end
	end

	context "given (This is a test,4)" do
		it "returns Xlmw mw e xiwx" do
			expect(caesar_cipher("This is a test",4)).to eql("Xlmw mw e xiwx")
		end
	end

	context "given (AAAA, 0)" do
		it "returns AAAA" do
			expect(caesar_cipher("AAAA",0)).to eql("AAAA")
		end
	end
end