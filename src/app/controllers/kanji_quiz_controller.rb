class KanjiQuizController < ApplicationController

    @@kanji_pass_list = ['00000000000000000000000000000000000000000000000000000000000000000000000000000000','0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000','00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000','00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000','00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000','0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000']

    
    def index
        if account_signed_in?
            @register = '図鑑に登録する'
        else
            @register = '図鑑に登録するにはログインが必要です'
        end
    end


    def update
        if account_signed_in?
            if request.get? then
                study_record = StudyRecord.find_by(user_id: current_account.id)

                #javascriptから問題の正解情報を取得
                grade = params[:grade].to_i
                pass_data = params[:passData].to_i

                logger.debug grade
                logger.debug pass_data

                if grade == 0 then
                    updated = study_record.grade1
                    updated[pass_data] = '1'
                    study_record.update(grade1: updated)
                elsif grade == 1 then
                    updated = study_record.grade2
                    updated[pass_data] = '1'
                    study_record.update(grade2: updated)
                elsif grade == 2 then
                    updated = study_record.grade3
                    updated[pass_data] = '1'
                    study_record.update(grade3: updated)
                elsif grade == 3 then
                    updated = study_record.grade4
                    updated[pass_data] = '1'
                    study_record.update(grade4: updated)
                elsif grade == 4 then
                    updated = study_record.grade5
                    updated[pass_data] = '1'
                    study_record.update(grade5: updated)
                elsif grade == 5 then
                    updated = study_record.grade6
                    updated[pass_data] = '1'
                    study_record.update(grade6: updated)
                end
                study_record.save
                redirect_to '/kanji_quiz'
            end
        else
            redirect_to '/kanji_quiz'
        end
    end

    def delete
        study_record = StudyRecord.find_by(user_id: current_account.id)
        study_record.update(grade1:@@kanji_pass_list[0],grade2:@@kanji_pass_list[1],grade3:@@kanji_pass_list[2],grade4:@@kanji_pass_list[3],grade5:@@kanji_pass_list[4],grade6:@@kanji_pass_list[5])
    end

    private
    def data_params
        params.require(:data).permit(:grade, :passData)
    end
end
