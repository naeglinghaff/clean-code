# frozen_string_literal: true

class Tipper

  def initialize(amount:, discount_percentage: 0, tip_percentage:)
    @amount = amount
    @discount_percentage = discount_percentage
    @tip_percentage = tip_percentage
  end

  def total
    total_amount = amount + (amount * 0.05)

    discount = amount * (discount_percentage / 100.00)

    tip = amount * (tip_percentage / 100.0)

    total_amount - discount + tip
  end

  private

  attr_reader :amount, :discount_percentage, :tip_percentage

end

