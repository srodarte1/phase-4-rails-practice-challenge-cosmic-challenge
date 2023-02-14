class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordNotFound, with: :not_found
rescue_from ActiveRecord::RecordInvalid, with: :invalid

private
def not_found(invalid)
    render json: {error: "#{invalid.model} not found"}
end

def invalid_record(raised_error)
    render json: {errors:raised_error.record.errors.full_messages}, status: 400
end



end
