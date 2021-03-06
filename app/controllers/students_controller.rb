class StudentsController < ApplicationController
  include StudentsHelper
  expose(:students)
  expose(:student, attributes: :student_params)
  expose(:student_subject_items) { student.subject_items }
  before_action :authenticate_user!
  def create
    if student.save
      redirect_to student_path(student), notice: I18n.t('shared.created', resource: 'Student')
    else
      render :new
    end
  end

  def update
    if student.save
      redirect_to student_path(student), notice: I18n.t('shared.updated', resource: 'Student')
    else
      render :edit
    end
  end

  def destroy
    student.destroy
    redirect_to students_path, notice: I18n.t('shared.deleted', resource: 'Student')
  end
end
