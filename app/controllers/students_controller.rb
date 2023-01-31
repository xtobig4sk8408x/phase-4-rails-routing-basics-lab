class StudentsController < ApplicationController
    def index 
        #byebug
        students = Student.all 
        render json: students  
    end

    def grades 
        #byebug
        grades = Student.order(grade: :desc)
        render json: grades
    end

    def highest_grade 
        #byebug 
        highest_grade = Student.order(grade: :desc).first 
        render json: highest_grade
    end
end
