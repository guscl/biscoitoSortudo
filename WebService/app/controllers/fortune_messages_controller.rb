class FortuneMessagesController < ApplicationController
  before_action :set_fortune_message, only: [:show, :edit, :update, :destroy]

  # GET /fortune_messages
  # GET /fortune_messages.json
  def index
    @fortune_messages = FortuneMessage.all
  end

  # GET /fortune_messages/1
  # GET /fortune_messages/1.json
  def show
  end

  # GET /fortune_messages/new
  def new
    @fortune_message = FortuneMessage.new
  end

  # GET /fortune_messages/1/edit
  def edit
  end

  # POST /fortune_messages
  # POST /fortune_messages.json
  def create
    @fortune_message = FortuneMessage.new(fortune_message_params)

    respond_to do |format|
      if @fortune_message.save
        format.html { redirect_to @fortune_message, notice: 'Fortune message was successfully created.' }
        format.json { render :show, status: :created, location: @fortune_message }
      else
        format.html { render :new }
        format.json { render json: @fortune_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fortune_messages/1
  # PATCH/PUT /fortune_messages/1.json
  def update
    respond_to do |format|
      if @fortune_message.update(fortune_message_params)
        format.html { redirect_to @fortune_message, notice: 'Fortune message was successfully updated.' }
        format.json { render :show, status: :ok, location: @fortune_message }
      else
        format.html { render :edit }
        format.json { render json: @fortune_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fortune_messages/1
  # DELETE /fortune_messages/1.json
  def destroy
    @fortune_message.destroy
    respond_to do |format|
      format.html { redirect_to fortune_messages_url, notice: 'Fortune message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fortune_message
      @fortune_message = FortuneMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fortune_message_params
      params.require(:fortune_message).permit(:content)
    end
end
