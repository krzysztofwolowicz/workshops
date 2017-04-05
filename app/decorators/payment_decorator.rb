class PaymentDecorator < Draper::Decorator
  delegate_all

  def for_month
    date.strftime("%Y-%m")
  end
end
