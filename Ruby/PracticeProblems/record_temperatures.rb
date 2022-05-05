# Record tge temperature

def record_temp(records, week)
  y = 0
  while y < 7

    if records[y][0] > week[y][0]
      records[y][0] = week[y][0]
    end

    if records[y][1] < week[y][1]
      records[y][1] = week[y][1]
    end

    y += 1
  end
  records
end
