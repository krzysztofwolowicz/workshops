class PaymentsController < ApplicationController
  expose(:payments)
  expose(:payment, attributes: :payment_params)


  def create
    if payment.save
      redirect_to payment_path(payment), notice: I18n.t('shared.created', resource: 'Payment')
    else
      render :new
    end
  end

private

    def payment_params
      params.require(:payment).permit(:value, :date, :for_month, :student_id)
    end

end

