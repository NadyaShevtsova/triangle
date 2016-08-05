require 'triangle.rb'

describe Triangle do
  context "with valid data" do
    it "should return Equilateral" do
      @triangle = Triangle.new("3","3","3")
      expect( @triangle.check_type).to eq('Equilateral')
    end

    it "should return Isosceles" do
      @triangle = Triangle.new("1","2","3")
      expect( @triangle.check_type).to eq('Isosceles')
    end

    context "should return Scalene" do
      it do
        @triangle = Triangle.new("3","3","6")
        expect( @triangle.check_type).to eq('Scalene')
      end

      it do
        @triangle = Triangle.new("6","3","3")
        expect( @triangle.check_type).to eq('Scalene')
      end

      it do
        @triangle = Triangle.new("3","6","3")
        expect( @triangle.check_type).to eq('Scalene')
      end
    end
  end

  context "with invalid data" do
    context "should return Error" do
      it do
        @triangle = Triangle.new("a","b","c")
        expect( @triangle.check_type).to eq('Error')
      end

      it do
        @triangle = Triangle.new("","","")
        expect( @triangle.check_type).to eq('Error')
      end

      it do
        @triangle = Triangle.new("")
        expect( @triangle.check_type).to eq('Error')
      end
    end

  end
end
