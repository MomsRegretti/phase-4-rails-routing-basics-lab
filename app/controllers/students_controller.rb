class StudentsController < ApplicationController
    def index
        students = Student.all.to_json
        render json: students
    end
    def grades
        students = Student.all
        grades = students.sort_by{|s| s[:grade]}.reverse.to_json
        render json: grades
    end
end
