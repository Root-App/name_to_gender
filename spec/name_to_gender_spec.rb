require "spec_helper"

describe NameToGender do
  it "has a version number" do
    expect(NameToGender::VERSION).not_to be nil
  end

  describe "name lookup" do
    it "returns the gender of name" do
      expect(NameToGender.build.gender_of("Fred")).to eq(NameToGender::MALE)
    end

    it "is case insensitive" do
      expect(NameToGender.build.gender_of("FRED")).to eq(NameToGender::MALE)
    end

    it "can return unisex results" do
      expect(NameToGender.build.gender_of("Pat")).to eq(NameToGender::UNISEX)
    end

    it "returns unknown results as nil" do
      expect(NameToGender.build.gender_of("Trogdor")).to be(nil)
    end
  end
end
