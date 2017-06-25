class Order < ApplicationRecord
	   validates :quantity	, presence: true, numericality: {greater_than: 0}
    belongs_to :book

    before_create :set_dates

    validate :no_hay_copias

    def no_hay_copias
    if Book.find_by(id: book_id).orders.any?
      @order = Book.find_by(id: book_id).orders.order("created_at").last
      if @book.orders.sum(:quantity) > @book.quantities
        errors.add(:quantity, "Sobre pasa la cantidad de copias .")
      end
    end
  end

    protected

    def set_dates
      self.order_end_at = Date.today 
    end

end
