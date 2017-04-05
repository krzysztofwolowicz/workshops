class PaymentsController < ApplicationController
  include PaymentsHelper
  expose(:payments)
  expose(:students)
  expose(:payment, attributes: :payment_params)
  before_action :authenticate_user!

  def create
    if payment.save
      redirect_to payment_path(payment), notice: I18n.t('shared.created', resource: 'Payment')
    else
      render 'new'
    end
  end

  def update
    if payment.save
      redirect_to payment_path(payment), notice: I18n.t('shared.updated', resource: 'Payment')
    else
      render 'edit'
    end
  end

  def destroy
    if payment.destroy
      redirect_to payment_path, notice: I18n.t('shared.deleted', resource: 'Payment')
    end
  end

end
