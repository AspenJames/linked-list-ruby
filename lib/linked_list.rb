class LinkedList
	attr_accessor :head, :tail

	def initialize
		@head = nil
		@tail = nil
	end

	def append(data = nil)
		return false if !data
		el = Element.new(data)
		if !@head
			@head = el
			@tail = el
		elsif @head == @tail
			@head.next = el
			@tail = el
		else
			@tail.next = el
			@tail = el
		end

		true
	end

	def prepend(data = nil)
		return false if !data
		el = Element.new(data)
		if !@head
			@head = el
			@tail = el
		else
			el.next = @head
			@head = el
		end

		true
	end
end
