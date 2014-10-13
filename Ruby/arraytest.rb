

  def brother?
    return false
  end

  a = [1,'cat',3.14]
  puts "array is now #{a.inspect}"

  a = %w{ant bee deer dog cat}

  puts "array is now #{a.length} "

  inst_selection = {
    'cello' => 'String'
  }

  p inst_selection['cello']
  p inst_selection['hello']

  puts brother?
