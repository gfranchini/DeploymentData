class ServersController < ApplicationController
  before_action :set_server, only: [:show, :edit, :update, :destroy]

  # GET /servers
  # GET /servers.json
  def index
    @servers = Server.all
  end

  # GET /servers/1
  # GET /servers/1.json
  def show
  end

  # GET /servers/new
  def new
    @server = Server.new
    @form = current_user.forms.last.id
    if current_user.id != Form.last.user_id
      redirect_to new_server_path, notice: 'Something went wrong. Please contact system administrator for help.'
    end
  end

  # GET /servers/1/edit
  def edit
  end

  # POST /servers
  # POST /servers.json
  def create
    @server = Server.new(server_params)

    respond_to do |format|
      if @server.save
        if current_page = new_server_path
          format.html { redirect_to new_server_path, notice: 'Server was successfully added.' }
          format.json { render :show, status: :created, location: @server }
        else
          format.html { redirect_to @server, notice: 'Server was successfully added .' }
          format.json { render :show, status: :created, location: @server }
        end
      else
        format.html { render :new }
        format.json { render json: @server.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servers/1
  # PATCH/PUT /servers/1.json
  def update
    respond_to do |format|
      if @server.update(server_params)
        format.html { redirect_to @server, notice: 'Server was successfully updated.' }
        format.json { render :show, status: :ok, location: @server }
      else
        format.html { render :edit }
        format.json { render json: @server.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servers/1
  # DELETE /servers/1.json
  def destroy
    @server.destroy
    respond_to do |format|
      if current_page = new_server_path
        format.html { redirect_to new_server_path, notice: 'Server was successfully removed.' }
        format.json { head :no_content }
      else
        format.html { redirect_to servers_url, notice: 'Server was successfully removed.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_server
      @server = Server.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def server_params
      params.require(:server).permit(:host_name, :ip_address, :operating_system, :cpu_cores, :memory, :disk_space, :form_id)
    end
end
