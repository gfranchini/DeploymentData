class FirewallsController < ApplicationController
  before_action :set_firewall, only: [:show, :edit, :update ]

  # GET /firewalls
  # GET /firewalls.json
  def index
    @firewalls = Firewall.all
  end

  # GET /firewalls/1
  # GET /firewalls/1.json
  def show
  end

  # GET /firewalls/new
  def new
    @firewall = Firewall.new
    if current_user.forms.last.firewalls.count != 0
      @firewall_detail = current_user.forms.last.firewalls.last.details
      @firewall_last = current_user.forms.last.firewalls.last.id
    end
  end

  # GET /firewalls/1/edit
  def edit
    @firewall_last = current_user.forms.last.firewalls.last.id
  end

  # POST /firewalls
  # POST /firewalls.json
  def create
    @firewall = Firewall.new(firewall_params)

    respond_to do |format|
      if @firewall.save
        format.html { redirect_to new_firewall_path, notice: 'Firewall was successfully saved.' }
        format.json { render :show, status: :created, location: @firewall }
      else
        format.html { render :new }
        format.json { render json: @firewall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /firewalls/1
  # PATCH/PUT /firewalls/1.json
  def update
    respond_to do |format|
      if @firewall.update(firewall_params)
        format.html { redirect_to new_firewall_path, notice: 'Firewall was successfully updated.' }
        format.json { render :show, status: :ok, location: @firewall }
      else
        format.html { render :edit }
        format.json { render json: @firewall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firewalls/1
  # DELETE /firewalls/1.json
  def destroy
    @firewall = current_user.forms.last.firewalls.last
    @firewall.destroy
    respond_to do |format|
      format.html { redirect_to new_firewall_path, notice: 'Firewall was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_firewall
      @firewall = Firewall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def firewall_params
      params.require(:firewall).permit(:details, :form_id, :form_id)
    end
end
