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

	def delete(elem = nil)
		return false if !@head || !elem
		if @head == elem
			if @head == @tail
				@head = nil
				@tail = nil
				return true
			else
				@head = @head.next
				return true
			end
		else
			currElem = @head
			while currElem.next != elem && currElem.next != nil
				currElem = currElem.next
			end
			if currElem.next == elem
				if currElem.next == @tail
					@tail = currElem
					currElem.next = nil
					return true
				end
				currElem.next = currElem.next.next
				return true
			end
		end
		false
	end

	def insertAfter(elem = nil, data = nil)
		return false if !elem || !data || !@head

		insertElem = Element.new(data)
		if @head == elem
			if @head == @tail
				@head.next = insertElem
				@tail = insertElem
				return true
			else
				insertElem.next = @head.next
				@head.next = insertElem
				return true
			end
		end

		if @tail == elem
			@tail.next = insertElem
			@tail = insertElem
			return true
		end

		currElem = @head
		while currElem != elem && currElem.next != nil
			currElem = currElem.next
		end
		if currElem == elem
			insertElem.next = currElem.next
			currElem.next = insertElem
			return true
		end

		false
	end
end
