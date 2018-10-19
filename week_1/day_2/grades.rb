
def did_pass?(score)
  #write your code here
  return case score
  when 4..10
    true
  when 0..3
    false
  end
end
def student_report(name,score)
  return "On exam #{name} did get a score which meant she
  #{did_pass?(score) ? "passed" : "failed"}"
end

p student_report("jules",3)
