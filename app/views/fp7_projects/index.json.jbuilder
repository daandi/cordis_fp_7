json.array!(@fp7_projects) do |fp7_project|
  json.extract! fp7_project, :id, :rcn, :project_title, :start_date, :end_date, :duration, :status, :contract_number, :keywords, :date_of_signature, :total_cost, :total_funding, :entry_date, :project_website, :other_information, :call, :framework_programme, :programme, :project_acronym, :achievements, :activity_area, :subjects, :contract_type, :general_information, :objectives
  json.url fp7_project_url(fp7_project, format: :json)
end
