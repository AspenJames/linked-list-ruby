require_relative '../spec_helper.rb'

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

	describe "appending data" do
		before(:each) do
			@ll = LinkedList.new
		end

		context "data is not supplied to enter" do
			it "returns false" do
				expect(@ll.append()).to be false
			end
		end

		context "empty linked list" do
			it "sets the head and tail pointer to the newly created element, returns true" do
				expect(@ll.append(4)).to be true

				expect(@ll.head.class).to be(Element)
				expect(@ll.tail.class).to be(Element)
				expect(@ll.head.value).to eq(4)
				expect(@ll.tail.value).to eq(4)
			end
		end

		context "linked list with one element" do
			it "sets the head's next property and the tail to the newly created element, returns true" do
				@ll.append(4)
				expect(@ll.append("data")).to be true

				expect(@ll.head.value).to eq(4)
				expect(@ll.head.next.value).to eq("data")
				expect(@ll.head.next).to be(@ll.tail)
				expect(@ll.tail.value).to eq("data")
			end
		end

		context "linked list with more than one element" do
			it "adds the newly created element to the end and updates the tail pointer" do
				@ll.append(4)
				@ll.append("data")
				expect(@ll.append("more data")).to be true

				expect(@ll.tail.value).to eq("more data")
				expect(@ll.head.next.value).to eq("data")
				expect(@ll.head.next.next).to be(@ll.tail)
			end
		end
	end

	describe "prepending data" do
		before(:each) do
			@ll = LinkedList.new
		end

		context "data is not supplied to enter" do
			it "returns false" do
				expect(@ll.prepend()).to be false
			end
		end

		context "empty linked list" do
			it "sets the head and tail pointer to the newly created element, returns true" do
				expect(@ll.prepend(4)).to be true

				expect(@ll.head.class).to be(Element)
				expect(@ll.tail.class).to be(Element)
				expect(@ll.head.value).to eq(4)
				expect(@ll.tail.value).to eq(4)
			end
		end

		context "linked list with one element" do
			it "sets the head's next property and the tail to the newly created element, returns true" do
				@ll.prepend(4)
				expect(@ll.prepend("data")).to be true

				expect(@ll.head.value).to eq("data")
				expect(@ll.head.next.value).to eq(4)
				expect(@ll.head.next).to be(@ll.tail)
				expect(@ll.tail.value).to eq(4)
			end
		end

		context "linked list with more than one element" do
			it "adds the newly created element to the beginning and updates the head pointer, returns true" do
				@ll.prepend(4)
				@ll.prepend("data")
				expect(@ll.prepend("more data")).to be true

				expect(@ll.head.value).to eq("more data")
				expect(@ll.head.next.value).to eq("data")
				expect(@ll.head.next.next).to be(@ll.tail)
			end
		end
	end

	describe "deleting an element" do
		context "the list is empty" do
		end

		context "the list is populated" do
			context "the element is not found" do
			end

			context "the element is found" do
				context "found element is head" do
				end

				context "found element is tail" do
				end

				context "found element is somewhere in the middle" do
				end
			end
		end
	end
end
