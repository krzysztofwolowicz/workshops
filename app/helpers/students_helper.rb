module StudentsHelper
  def student_params
    params.require(:student).permit(:first_name, :last_name, subject_item_ids: [])
  end
end
