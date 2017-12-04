module Api
  module V1
    class MatricreportsController < ApplicationController
   
      respond_to? :json
      
      def index
        render json: Matricreport.all
      end
      
      def show
        respond_with Matricreport.find(params[:id])
      end
      
      def create
        respond_with Matricreport.create(matricreport_params)
      end
      
      def update
        respond_with Matricreport.update(matricreport_params)
      end
      
      def destroy
        respond_with Matricreport.destroy(params[:id])
      end

      private
      def matricreport_params
      params.require(:matricreport).permit(:emis, :centre_no, :school_name, :wrote_2014, :passed_2014, :wrote_2015, :passed_2015, :wrote_2016, :passed_2016, :pass_rate, :failure_rate, :pass_rate2015, :failure_rate2015, :pass_rate2016, :failure_rate2016)
      end
    end
  end
end