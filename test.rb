# Just a test file

BEGIN {
  puts "Crossfit Journal"
}

class Entries
  @@no_of_entries=0
  def initialize(title, date, skill, reps, weights0, rounds, wod, notes, completed)
    @no_of_entry = @@no_of_entries+=1
    @title=title
    @date=date
    @skill_training=skill
    unless reps == ""
      @reps_sets=reps
    else
      @reps_sets="Training"
    end
    @weights_skill=weights0
    @rounds=rounds
    @workout_of_day=wod
    @notes=notes
    @completed=completed
  end
  def top_third
    puts "Entry: #{@no_of_entry}"
    puts "Title: #{@title}"
    puts "Date: #{@date}"
    puts "Skill/Training: #{@skill_training}"
    puts "Reps: #{@reps_sets}"
    puts "Weights: #{@weights_skill}"
  end
  def middle_third
    puts "Workout of the day: #{@wod}"
    puts "Rounds/Method: #{@rounds}"
    puts "Notes: #{@notes}"
    puts "Completed: #{@completed}"
  end
end

entry1 = Entries.new("Foundations 1", "20/12/16", "Bench Press", "5 reps/set",
  "35+0 too easy; 35+20 medium; 35+40 good weight", "2 Rounds",
  "5 HK2E; 10 Box (18\"); 400m Row", "Nice challenge", "Time: 6:40")

entry2 = Entries.new("Foundations 2", "22/12/16", "Deadlift", "",
  "15+20 too easy; 15+40 good weight + movement", "10 EMOM",
  "10 KB Swings (15lb); 5 Sprawls", "Challenging", "8/10 EMOM")
  
# WOD will not display ("10 KB Swings etc.") on entry2

entry1.top_third
entry1.middle_third

entry2.top_third
entry2.middle_third
