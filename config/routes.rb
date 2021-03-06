Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  get '/home-course' => "home#home_course"
  get '/home-university' => "home#home_university"
  get '/about-us' => "home#about_us"
  get '/the-founder' => "home#founder"
  get '/the-leadership' => "home#leadership"
  get '/the-sage' => "home#sage"
  get '/the-university' => "home#university"
  get '/admission-procedure' => "home#admission_procedure"
  get '/education-loan-information' => "home#education_loan_information"
  get '/scholarships' => "home#scholarships"
  get '/international-students-scholarships' => "home#international_students_scholarships"
  get '/why-study-in-indore-india' => "home#why_study_in_indore_india"
  get '/international-students-application-procedures' => "home#international_students_application_procedures"
  get '/international-linkage' => "home#international_linkage"
  get '/open-su' => "home#open_su"
  get '/campus-facilities' => "home#campus_facilities"
  get '/student-services' => "home#student_services"
  get '/sports-recreation' => "home#sports_recreation"
  get '/accommodation' => "home#accommodation" 
  get '/societies-special-interest-groups' => "home#societies_special_interest_groups"
  get '/working-while-studying' => "home#working_while_studying"
  get '/university-placement' => "home#university_placement"
  get '/academic-model' => "home#academic_model"
  get '/pedagogy-2' => "home#pedagogy_2"
  get '/program' => "home#program"
  get '/a-unique-approach-of-learning' => "home#unique_approach_of_learning"
  get '/project-based-learning-system' => "home#project_based_learning_system"
  get '/institutes' => "home#institutes"
  get '/contact' => "home#contact"
  get '/courses' => "home#courses"
  get '/course-single' => "home#course_single"
  get '/staff' => "home#staff"
  get '/single-event' => "home#single_event"
  get '/event-calendar' => "home#event_calendar"
  

  resources :events do 
    collection do 
      get :event_calendar
    end
  end
  resources :articles

end
