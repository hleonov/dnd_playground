class CharNotesController < ApplicationController
  before_action :set_char_note, only: [:show, :edit, :update, :destroy]

  # GET /char_notes
  # GET /char_notes.json
  def index
    @char_notes = CharNote.all
  end

  # GET /char_notes/1
  # GET /char_notes/1.json
  def show
  end

  # GET /char_notes/new
  def new
    @char_note = CharNote.new
  end

  # GET /char_notes/1/edit
  def edit
  end

  # POST /char_notes
  # POST /char_notes.json
  def create
    @char_note = CharNote.new(char_note_params)

    respond_to do |format|
      if @char_note.save
        format.html { redirect_to @char_note, notice: 'Char note was successfully created.' }
        format.json { render :show, status: :created, location: @char_note }
      else
        format.html { render :new }
        format.json { render json: @char_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /char_notes/1
  # PATCH/PUT /char_notes/1.json
  def update
    respond_to do |format|
      if @char_note.update(char_note_params)
        format.html { redirect_to @char_note, notice: 'Char note was successfully updated.' }
        format.json { render :show, status: :ok, location: @char_note }
      else
        format.html { render :edit }
        format.json { render json: @char_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /char_notes/1
  # DELETE /char_notes/1.json
  def destroy
    @char_note.destroy
    respond_to do |format|
      format.html { redirect_to char_notes_url, notice: 'Char note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_char_note
      @char_note = CharNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def char_note_params
      params.require(:char_note).permit(:content, :character_id)
    end
end
