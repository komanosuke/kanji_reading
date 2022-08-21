class KanjiQuizController < ApplicationController
    skip_before_action :verify_authenticity_token

    @@kanji_pass_list = ['00000000000000000000000000000000000000000000000000000000000000000000000000000000','0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000','00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000','00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000','00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000','0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000']

    def kanji_quiz
        @collections = Collection.find(1)
    end


    def create
        #データベースの初期化
        @collections = Collection.create(grade1:@@kanji_pass_list[0],grade2:@@kanji_pass_list[1],grade3:@@kanji_pass_list[2],grade4:@@kanji_pass_list[3],grade5:@@kanji_pass_list[4],grade6:@@kanji_pass_list[5])
        logger.debug @collections.persisted?
    end


    def update
        if request.get? then
            @collections = Collection.find(1)
            #params = data_params
            grade = params[:grade].to_i
            pass_data = params[:passData].to_i

            logger.debug grade
            logger.debug pass_data

            if grade == 0 then
                updated = @collections.grade1
                updated[pass_data] = '1'
                @collections.update(grade1: updated)
            elsif grade == 1 then
                updated = @collections.grade2
                updated[pass_data] = '1'
                @collections.update(grade2: updated)
            elsif grade == 2 then
                updated = @collections.grade3
                updated[pass_data] = '1'
                @collections.update(grade3: updated)
            elsif grade == 3 then
                updated = @collections.grade4
                updated[pass_data] = '1'
                @collections.update(grade4: updated)
            elsif grade == 4 then
                updated = @collections.grade5
                updated[pass_data] = '1'
                @collections.update(grade5: updated)
            elsif grade == 5 then
                updated = @collections.grade6
                updated[pass_data] = '1'
                @collections.update(grade6: updated)
            end
            @collections.save
        end
    end

    def delete
        @collections = Collection.find(1)
        @collections.destroy_all
    end

    private
    def data_params
        params.require(:data).permit(:grade, :passData)
    end
end
