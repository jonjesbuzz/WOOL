class LoraMessagesController < ApplicationController
  before_action :set_lora_message, only: [:show, :edit, :update, :destroy]

  # GET /lora_messages
  # GET /lora_messages.json
  def index
    @lora_messages = LoraMessage.all
  end

  # GET /lora_messages/1
  # GET /lora_messages/1.json
  def show
  end

  # GET /lora_messages/new
  def new
    @lora_message = LoraMessage.new
  end

  # GET /lora_messages/1/edit
  def edit
  end

  # POST /lora_messages
  # POST /lora_messages.json
  def create
    logger.debug(params)
    @lora_message = LoraMessage.new(lora_message_params)

    respond_to do |format|
      if @lora_message.save
        format.html { redirect_to @lora_message, notice: 'Lora message was successfully created.' }
        format.json { render :show, status: :created, location: @lora_message }
      else
        format.html { render :new }
        format.json { render json: @lora_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lora_messages/1
  # PATCH/PUT /lora_messages/1.json
  def update
    respond_to do |format|
      if @lora_message.update(lora_message_params)
        format.html { redirect_to @lora_message, notice: 'Lora message was successfully updated.' }
        format.json { render :show, status: :ok, location: @lora_message }
      else
        format.html { render :edit }
        format.json { render json: @lora_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lora_messages/1
  # DELETE /lora_messages/1.json
  def destroy
    @lora_message.destroy
    respond_to do |format|
      format.html { redirect_to lora_messages_url, notice: 'Lora message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lora_message
      @lora_message = LoraMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lora_message_params
      logger.debug(params)
      params.require(:lora_message).permit(:payload)
    end
end
