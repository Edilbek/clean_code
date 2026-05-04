# Rules

# Each order_id must be processed only once
# If the same order_id appears again → return previous result (do NOT reprocess)
# Request:
# {
#   "id": string,
#   "user_id": string,
#   "amount": integer
# }
#
# Return a response:
# {
#   order_id: "...",
#   status: "processed" | "already_processed",
#   total_processed_amount: integer
# }

class ProcessOrder
  def initialize
    @orders = {}
    @total = 0
  end

  def run(order)
    order_id = order[:id]

    return already_processed_response(order_id) if exists?(order_id)

    process_new_order(order)
  end

  private

  def process_new_order(order)
    order_id = order[:id]

    @total += order[:amount]

    result = {
      order_id: order_id,
      status: "processed",
      total_processed_amount: @total
    }

    @orders[order_id] = result
    result
  end

  def already_processed_response(order_id)
    {
      order_id: order_id,
      status: "already_processed",
      total_processed_amount: @orders[order_id][:total_processed_amount]
    }
  end

  def exists?(order_id)
    @orders.key?(order_id)
  end
end

order = {
  id: 1,
  user_id: 1,
  amount: 100
}

order1 = {
  id: 1,
  user_id: 1,
  amount: 100
}

order2 = {
  id: 2,
  user_id: 1,
  amount: 200
}

processOrder = ProcessOrder.new
p processOrder.run(order)
p processOrder.run(order1)
p processOrder.run(order2)
