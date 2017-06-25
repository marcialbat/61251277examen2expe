module ApplicationHelper
  def format_date(fecha)
    return nil unless fecha
    fecha.strftime("%d %b %Y %I:%M %p")
  end
  def total_orders(order)
    return 0 unless order.any?
    order.sum(:total)
  end
end

