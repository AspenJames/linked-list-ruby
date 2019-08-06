require_relative './spec_helper.rb'

RSpec.describe LinkedList do
	describe "initialization" do
		it "initializes a new Linked List without any arguments" do
			ll = LinkedList.new
			expect(ll.class).to eq(LinkedList)
		end
	end

	describe "the head pointer" do
		before(:each) do
			@ll = LinkedList.new
		end

		it "can return its head value" do
			expect{ @ll.head }.not_to raise_exception
		end

		it "is initialized to nil" do
			expect(@ll.head).to be_nil
		end

		it "can be set with `#head=`" do
			el = Element.new(4)
			@ll.head = el

			expect(@ll.head).to be(el)
		end
	end

	describe "the tail pointer" do
		before(:each) do
			@ll = LinkedList.new
		end

		it "can return its tail value" do
			expect{ @ll.tail }.not_to raise_exception
		end

		it "is initialized to nil" do
			expect(@ll.tail).to be_nil
		end

		it "can be set with `#tail=`" do
			el = Element.new("data")
			@ll.tail = el

			expect(@ll.tail).to be(el)
		end
	end
end
