class GradesController < ApplicationController
    def sort
        index = Students.sort_by(:grade)
        index.to_json
    end
end
