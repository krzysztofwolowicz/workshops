module PaymentsHelper
  def payment_params
    params.require(:payment).permit(:value, :date, :student_id)
  end
end
