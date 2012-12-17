class AttendanceEntriesController < ApplicationController
  # GET /attendance_entries
  # GET /attendance_entries.json
  def index
    @attendance_entries = AttendanceEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @attendance_entries }
    end
  end

  # GET /attendance_entries/1
  # GET /attendance_entries/1.json
  def show
    @attendance_entry = AttendanceEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @attendance_entry }
    end
  end

  # GET /attendance_entries/new
  # GET /attendance_entries/new.json
  def new
    @attendance_entry = AttendanceEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @attendance_entry }
    end
  end

  # GET /attendance_entries/1/edit
  def edit
    @attendance_entry = AttendanceEntry.find(params[:id])
  end

  # POST /attendance_entries
  # POST /attendance_entries.json
  def create
    @attendance_entry = AttendanceEntry.new(params[:attendance_entry])

    respond_to do |format|
      if @attendance_entry.save
        format.html { redirect_to @attendance_entry, notice: 'Attendance entry was successfully created.' }
        format.json { render json: @attendance_entry, status: :created, location: @attendance_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @attendance_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /attendance_entries/1
  # PUT /attendance_entries/1.json
  def update
    @attendance_entry = AttendanceEntry.find(params[:id])

    respond_to do |format|
      if @attendance_entry.update_attributes(params[:attendance_entry])
        format.html { redirect_to @attendance_entry, notice: 'Attendance entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @attendance_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendance_entries/1
  # DELETE /attendance_entries/1.json
  def destroy
    @attendance_entry = AttendanceEntry.find(params[:id])
    @attendance_entry.destroy

    respond_to do |format|
      format.html { redirect_to attendance_entries_url }
      format.json { head :no_content }
    end
  end
end
