require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq("brownie")
    end
      
    it "sets a quantity" do
      expect(brownie.quantity).to eq (25)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("brownie", 1.3, chef) }.to raise_error("provide an integer quantity")
    end
      
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(dessert.instance_variable_get(:@ingredients)).to eq(["eggs", "chocolate chips", "milk"])
    end

  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(["eggs", "chocolate chips", "milk"]).to eq(["eggs", "milk", "chocolate chips"])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(25).to eq(20)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { brownie.eat(30) }.to raise_error("not enough left")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(chef).to receive(:titalize).and_return("Best Baker")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(brownie)
      brownie.make_more
    end
  end
end
