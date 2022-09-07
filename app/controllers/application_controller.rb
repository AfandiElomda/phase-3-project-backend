class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/record' do
    record = Record.all
    record.to_json
  end

  get '/record/:id' do
    record = Record.find(params[:id])
    record.to_json
  end

  post '/record' do
    new_record = Record.create(
      book_author: params[:book_author],  student_age: params[:student_age], student_gender: params[:student_gender],
      student_contact: params[:student_contact], student_email: params[:student_email], book_id: params[:book_id], student_id: params[:student_id]
    )
    new_record.to_json
  end

  patch '/record' do
    update_record =Record.find(
      book_author: params[:book_author],  student_age: params[:student_age], student_gender: params[:student_gender],
      student_contact: params[:student_contact], student_email: params[:student_email], book_id: params[:book_id], student_id: params[:student_id]
    )
    update_record.to_json
  end
end
