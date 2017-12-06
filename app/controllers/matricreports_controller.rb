class MatricreportsController < ApplicationController
  before_action :set_matricreport, only: [:show, :edit, :update, :destroy]

  # GET /matricreports
  # GET /matricreports.json
  def index
    @matricreports = Matricreport.search(params[:search]).paginate(:page => params[:page], :per_page => 500)
  end

  # GET /matricreports/1
  # GET /matricreports/1.json
  def show
  end

  # GET /matricreports/new
  def new
    @matricreport = Matricreport.new
  end

  # GET /matricreports/1/edit
  def edit
  end

  # POST /matricreports
  # POST /matricreports.json
  def create
    @matricreport = Matricreport.new(matricreport_params)

    respond_to do |format|
      if @matricreport.save
        format.html { redirect_to @matricreport, notice: 'Matricreport was successfully created.' }
        format.json { render :show, status: :created, location: @matricreport }
      else
        format.html { render :new }
        format.json { render json: @matricreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matricreports/1
  # PATCH/PUT /matricreports/1.json
  def update
    respond_to do |format|
      if @matricreport.update(matricreport_params)
        format.html { redirect_to @matricreport, notice: 'Matricreport was successfully updated.' }
        format.json { render :show, status: :ok, location: @matricreport }
      else
        format.html { render :edit }
        format.json { render json: @matricreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matricreports/1
  # DELETE /matricreports/1.json
  def destroy
    @matricreport.destroy
    respond_to do |format|
      format.html { redirect_to matricreports_url, notice: 'Matricreport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matricreport
      @matricreport = Matricreport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matricreport_params
      params.require(:matricreport).permit(:emis, :centre_no, :school_name, :wrote_2014, :passed_2014, :wrote_2015, :passed_2015, :wrote_2016, :passed_2016, :pass_rate, :failure_rate, :pass_rate2015, :failure_rate2015, :pass_rate2016, :failure_rate2016)
    end
end
