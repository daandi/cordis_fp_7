#!/usr/bin/sh
rails generate scaffold fp7_project rcn:string project_title:string start_date:date end_date:date duration:date status:string contract_number:string keywords:string date_of_signature:date total_cost:decimal total_funding:decimal entry_date:date project_website:string other_information:text call:string framework_programme:string programme:string project_acronym:string achievements:string activity_area:string subjects:string contract_type:string general_information:text objectives:text 

rake db:migrate