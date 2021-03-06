class PagesController < ApplicationController

  def home
    if(current_user.profile.occupation == 'admin')
      return redirect_to admin_index_path
    end
    @profiles = Profile.where(occupation: "student")
    @profile = current_user.profile
    @count_rows = Profile.where(occupation: "student").count
    @check = Pair.count
    @current_date = Time.now

    @past_days = Pair.where(user_id: @profile.id).or(Pair.where(pair_user_id: @profile.id)).where("pair_at < ?", @current_date.strftime("%Y-%m-%d"))



    if @check == 0
      @round_amount = @count_rows - 1
      @students = Profile.where(occupation: "student").pluck(:id).to_a
      @first_student = rand(0..@round_amount)
      @remove_student = @students[@first_student...@first_student + 1]

      @pairs_per_round = @count_rows / 2

      @round_amount.times do |round|
        @students.delete(@remove_student[0])
        @students = [@remove_student[0]] + @students

        @pairs_per_round.times do |pair|
          @pair1 = @students[pair]
          @pair2 = @students.reverse[pair]
          @test = round - 1
          Pair.new(user_id: @pair1, pair_user_id: @pair2, pair_at: (@current_date + @test.days).strftime("%Y-%m-%d")).save
        end
        @students = @students.rotate(-1)

        #adds first id of the students array after deleting and rotating
      end
    end

    @student_id = Pair.where(user_id: @profile.id, pair_at: Time.now.strftime("%Y-%m-%d")).first
    if @student_id.nil?
      @student_id = Pair.where(pair_user_id: @profile.id, pair_at: Time.now.strftime("%Y-%m-%d")).first
      @student = Profile.where(id: @student_id.user_id).first
    else
      @student = Profile.where(id: @student_id.pair_user_id).first
    end

  end #method

end
