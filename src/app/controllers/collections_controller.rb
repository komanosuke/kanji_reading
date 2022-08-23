class CollectionsController < ApplicationController
    def index
        if account_signed_in?
            @study_record = StudyRecord.find_by(user_id: current_account.id)
        else
            redirect_to '/hello/index'
        end
    end
end
