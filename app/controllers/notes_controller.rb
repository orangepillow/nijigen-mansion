class NotesController < ApplicationController
  def new
    @note = Note.new
    @note.posts.build
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def note_params
      params.require(:note).permit(:title, :room_id,
                                    posts_attributes: [:author, :content, :note_id, :picture])
    end
end
