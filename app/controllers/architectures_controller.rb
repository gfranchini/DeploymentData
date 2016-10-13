class ArchitecturesController < ApplicationController
  before_action :set_architecture, only: [:show, :edit, :update, :destroy]

  # GET /architectures
  # GET /architectures.json
  def index
    @architectures = Architecture.all
  end

  # GET /architectures/1
  # GET /architectures/1.json
  def show
  end

  # GET /architectures/new
  def new
    if Architecture.last == nil
      @architecture = Architecture.new
    else
      @architecture = Architecture.new
      @architecture_edit = current_user.architectures.last
    end
  end

  # GET /architectures/1/edit
  def edit
    @architecture_edit = Architecture.last.id
  end

  # POST /architectures
  # POST /architectures.json
  def create
    @architecture = Architecture.new(architecture_params)

    respond_to do |format|
      if @architecture.save
        format.html { redirect_to new_architecture_path, notice: 'Architecture was successfully uploaded.' }
        format.json { render :show, status: :created, location: @architecture }
      else
        format.html { render :new }
        format.json { render json: @architecture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /architectures/1
  # PATCH/PUT /architectures/1.json
  def update
    respond_to do |format|
      if @architecture.update(architecture_params)
        format.html { redirect_to @architecture, notice: 'Architecture was successfully updated.' }
        format.json { render :show, status: :ok, location: @architecture }
      else
        format.html { render :edit }
        format.json { render json: @architecture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /architectures/1
  # DELETE /architectures/1.json
  def destroy
    @architecture.destroy
    respond_to do |format|
      format.html { redirect_to architectures_url, notice: 'Architecture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_architecture
      @architecture = Architecture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def architecture_params
      params.require(:architecture).permit(:description, :form_id, :diagram)
    end
end
