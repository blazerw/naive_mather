require "./spec_helper"

Spec2.describe NaiveMather do
  it "handles a number" do
    expect(NaiveMather.calculate("1")).to eq(1)
  end

  it "handles simple math" do
    expect(NaiveMather.calculate("2+2")).to eq(4)
  end

  it "can have spaces, too" do
    expect(NaiveMather.calculate("2 +2")).to eq(4)
  end

  it "can have parentheses" do
    expect(NaiveMather.calculate("1+(2+3)+4")).to eq(10)
  end

  it "can really handle parentheses" do
    expect(NaiveMather.calculate("1 + (2 * 3) + 4")).to eq(11)
  end

  it "can divide" do
    expect(NaiveMather.calculate("15 / (1 + 2)")).to eq(5)
  end

  it "naively, handles only integers" do
    expect(NaiveMather.calculate("15 / 6")).to eq(2)
  end

  it "can't do more complex types of math" do
    expect(NaiveMather.calculate("15 % 6")).to eq(nil)
  end

  it "can do complicated stuff" do
    complex = "((4 + 3) * 6 / 7 + 8 - 6) * 5"
    expect(NaiveMather.calculate(complex)).to eq(40)
  end

  it "mismatch parentheses are not cool" do
    expect(NaiveMather.calculate("(3 + (1 + 2)")).to eq(nil)
    expect(NaiveMather.calculate("3 + (1 + 2))")).to eq(nil)
  end
end
