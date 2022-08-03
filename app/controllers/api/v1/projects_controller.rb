module Api
    module V1
        class ProjectsController < ApplicationController
            def index
                projects = Project.all

                render json: ProjectSerializer.new(projects).serialized_json
            end

            def show
                project = Project.find_by(slug: params[:slug])

                render json: ProjectSerializer.new(project).serialized_json
            end

        end
    end
end