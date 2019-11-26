class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find(params[:id])
    end
    
    def new
        @dogs = Dog.all
    end

    def create
        Employee.all.each do |employee|
            if employee.alias == params[:alias]
                params[:alias] = "none"
            end
            if employee.title == params[:title]
                params[:title] = "none"
            end
        end
        
        Employee.create({
           first_name: params[:first_name],
           last_name: params[:last_name],
           alias: params[:alias],
           title: params[:title],
           office: params[:office],
           img_url: params[:img_url],
           dog_id: params[:dog]
        })
        redirect_to '/employees'
    end
    
    def edit
        @employee = Employee.find(params[:id])
        @dogs = Dog.all
    end

    def update
        employee = Employee.find(params[:id])
        employee.update({
            first_name: params[:first_name],
            last_name: params[:last_name],
            alias: params[:alias],
            title: params[:title],
            office: params[:office],
            img_url: params[:img_url],
            dog_id: params[:dog]
         })
         redirect_to '/employees'
    end

 


end
