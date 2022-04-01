class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json
  private
  def respond_with(resource, _opts = {})
    resource.persisted? ? register_success : register_failed
  end
  def register_success
    render json: { message: 'Signed up.' }
  end
  def register_failed
    render json: { message: "Signed up failure." }
  end
end


# curl -XPOST -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNjQ4ODA2NDU1LCJleHAiOjE2NTAxMDI0NTUsImp0aSI6IjMxNjRkZGRmLTcxNzItNGQ2ZS05ZjAyLTFiZTliZjI0YzBkZCJ9.ISPRDTGOfDoz42Xk4hAjVW6oaVq8NC4B0-VdGdOm3vU" -H "Content-Type: application/json" -d '{ "api_v1_post": { "title": "Lorem", "content": "Lorem ipsum dolor" } }' http://localhost:3000/api/v1/posts

# curl -XGET -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNjQ4ODA2NDU1LCJleHAiOjE2NTAxMDI0NTUsImp0aSI6IjMxNjRkZGRmLTcxNzItNGQ2ZS05ZjAyLTFiZTliZjI0YzBkZCJ9.ISPRDTGOfDoz42Xk4hAjVW6oaVq8NC4B0-VdGdOm3vU" -H "Content-Type: application/json" -d '{ "api_v1_post": { "title": "Lorem", "content": "Lorem ipsum dolor" } }' http://localhost:3000/api/v1/posts

# curl -XDELETE -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNjQ4ODA2NDU1LCJleHAiOjE2NTAxMDI0NTUsImp0aSI6IjMxNjRkZGRmLTcxNzItNGQ2ZS05ZjAyLTFiZTliZjI0YzBkZCJ9.ISPRDTGOfDoz42Xk4hAjVW6oaVq8NC4B0-VdGdOm3vU" -H "Content-Type: application/json" http://localhost:3000/users/sign_out