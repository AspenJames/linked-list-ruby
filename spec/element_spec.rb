require_relative './spec_helper.rb'

RSpec.describe Element do
	describe "initialization" do
		it "can be initialized with data" do
			el = Element.new(4)

			expect(el.class).to eq(Element)
		end

		it "throws an error if not passed data" do
			expect{ Element.new }.to raise_exception(ArgumentError)
		end
	end

	describe "value property" do
		it "can return its value property" do
			el = Element.new(4)

			expect{ el.value }.not_to raise_exception
		end

		it "sets the value property to the data passed to `.new`" do
			el1 = Element.new(4)
			el2 = Element.new("data")

			expect(el1.value).to eq(4)
			expect(el2.value).to eq("data")
		end

		it "can update its value property with `#value=`" do
			el = Element.new(4)
			el.value = "otherData"

			expect(el.value).to eq("otherData")
		end
	end

	describe "next property" do
		it "can return its next property" do
			el = Element.new(4)

			expect{ el.next }.not_to raise_exception
		end

		it "is initialized to `nil`" do
			el = Element.new(4)

			expect(el.next).to be_nil
		end

		it "can set its next property with `#next=`" do
			el = Element.new(4)
			el2 = Element.new("data")
			el.next = el2

			expect(el.next).to be(el2)
		end
	end
end
