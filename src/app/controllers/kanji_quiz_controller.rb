class KanjiQuizController < ApplicationController

    @@kanji_pass_list = ['00000000000000000000000000000000000000000000000000000000000000000000000000000000','0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000','00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000','0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000','0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000','00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000']

    def check_correct_data
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
        end
    end
    
    def index
        check_correct_data()
    end

    def index2
        check_correct_data()
    end

    def index3
        check_correct_data()
    end

    def index4
        check_correct_data()
    end

    def index5
        check_correct_data()
    end

    def index6
        check_correct_data()
    end

    def update
        if account_signed_in?
            if request.get? 
                study_record = StudyRecord.find_by(user_id: current_account.id)

                #javascript????????????????????????????????????
                grade = params[:grade].to_i
                pass_data = params[:passData].to_i

                logger.debug grade
                logger.debug pass_data

                if grade == 0 
                    updated = study_record.grade1
                    updated[pass_data] = '1'
                    study_record.update(grade1: updated)
                elsif grade == 1 
                    updated = study_record.grade2
                    updated[pass_data] = '1'
                    study_record.update(grade2: updated)
                elsif grade == 2 
                    updated = study_record.grade3
                    updated[pass_data] = '1'
                    study_record.update(grade3: updated)
                elsif grade == 3 
                    updated = study_record.grade4
                    updated[pass_data] = '1'
                    study_record.update(grade4: updated)
                elsif grade == 4 
                    updated = study_record.grade5
                    updated[pass_data] = '1'
                    study_record.update(grade5: updated)
                elsif grade == 5 
                    updated = study_record.grade6
                    updated[pass_data] = '1'
                    study_record.update(grade6: updated)
                end
            end
            
        end
    end

    def delete
        decide = params[:confirmDelete]
        if decide == 'true' 
            study_record = StudyRecord.find_by(user_id: current_account.id)
            study_record.update(grade1:@@kanji_pass_list[0],grade2:@@kanji_pass_list[1],grade3:@@kanji_pass_list[2],grade4:@@kanji_pass_list[3],grade5:@@kanji_pass_list[4],grade6:@@kanji_pass_list[5])
        end
        redirect_to '/collections'
    end

    private
    def data_params
        params.require(:data).permit(:grade, :passData)
    end
end
