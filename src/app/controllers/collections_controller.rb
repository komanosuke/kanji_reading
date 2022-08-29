class CollectionsController < ApplicationController
    def index
        if account_signed_in?
            @study_record = StudyRecord.find_by(user_id: current_account.id)

            correct_data = [@study_record.grade1, @study_record.grade2, @study_record.grade3, @study_record.grade4, @study_record.grade5, @study_record.grade6]

            @correct_to_js = ['','','','','','']

            for i in 0..correct_data.length-1 do
                for j in 0..correct_data[i].length-1 do
                    if correct_data[i][j] == '1'
                        @correct_to_js[i] += j.to_s + ','
                    end
                end
            end

        else
            redirect_to '/hello/index'
        end
    end
end
