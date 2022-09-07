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

  patch '/record/:id' do
    update_record =Record.find(
      book_author: params[:book_author],  student_age: params[:student_age], student_gender: params[:student_gender],
      student_contact: params[:student_contact], student_email: params[:student_email], book_id: params[:book_id], student_id: params[:student_id]
    )
    update_record.to_json
  end

  delete '/record/:id' do
    delete_record = Record.find(params[:id])
    delete_record.destroy
    delete_record.to_json
  end

  get '/book' do
    get_book = Book.all.order(:asc)
    get_book.to_json
  end

  get '/book/:id' do
    get_book = Book.find(params[:id])
    get_book.to_json
  end

  post '/book' do
    new_book = Book.create(
      book_title: params[:book_title]
    )
    new_book.to_json
  end

  patch '/book/:id' do
    update_book = Book.find(params[:id])
    update_book.update(
      book_title: params[:book_title]
    )
    update_book.to_json
  end

  delete '/book/:id' do
    delete_book = Book.find(params[:id])
    delete_book.destroy
    delete_book.to_json
  end



  get '/student' do
    get_student = Student.all.order(:asc)
    get_student.to_json
  end

  get '/student/:id' do
    get_student = Student.find(params[:id])
    get_student.to_json
  end

  post '/student' do
    new_student = Student.create(
      name: params[:name]
    )
    new_student.to_json
  end

  patch '/student/:id' do
    update_student = Student.find(params[:id])
    update_student.update(
      name: params[:name]
    )
    update_student.to_json
  end

  delete '/student/:id' do
    delete_student = Student.find(params[:id])
    delete_student.destroy
    delete_student.to_json
  end

end
