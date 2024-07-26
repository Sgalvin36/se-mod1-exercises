# ./online_order.rb

module Deliverable
    def confirmation(thing)
        "You got #{thing}."
    end

    def review
        "Please rate your order within 30 days."
    end

    def delivery(time)
        "Your order will arrive in #{time}"
    end
end