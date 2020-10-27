$var1 = ' '
$var2 = ' '
$var3 = ' '
$var4 = ' '
$var5 = ' '
$var6 = ' '
$var7 = ' '
$var8 = ' '
$var9 = ' '

class X
  include Check
  @@class_name = 'X'
  def self.top_left
    $var1 = @@class_name
    puts X.new.check_table
  end
  def self.top
    $var2 = @@class_name
    puts X.new.check_table
  end
  def self.top_right
    $var3 = @@class_name
    puts X.new.check_table
  end
  def self.left
    $var4 = @@class_name
    puts X.new.check_table
  end
  def self.middle
    $var5 = @@class_name
    puts X.new.check_table
  end
  def self.right
    $var6 = @@class_name
    puts X.new.check_table
  end
  def self.bot_left
    $var7 = @@class_name
    puts X.new.check_table
  end
  def self.bot
    $var8 = @@class_name
    puts X.new.check_table
  end
  def self.bot_right
    $var9 = @@class_name
    puts X.new.check_table
  end
end

class O
  include Check
  @@class_name = 'O'
  def self.top_left
    $var1 = @@class_name
    puts O.new.check_table
  end
  def self.top
    $var2 = @@class_name
    puts O.new.check_table
  end
  def self.top_right
    $var3 = @@class_name
    puts O.new.check_table
  end
  def self.left
    $var4 = @@class_name
    puts O.new.check_table
  end
  def self.middle
    $var5 = @@class_name
    puts O.new.check_table
  end
  def self.right
    $var6 = @@class_name
    puts O.new.check_table
  end
  def self.bot_left
    $var7 = @@class_name
    puts O.new.check_table
  end
  def self.bot
    $var8 = @@class_name
    puts O.new.check_table
  end
  def self.bot_right
    $var9 = @@class_name
    puts O.new.check_table
  end
end


module Check
  def checks
    "    |#{$var1}|#{$var2}|#{$var3}|
    |#{$var4}|#{$var5}|#{$var6}|
  |#{$var7}|#{$var8}|#{$var9}|"
  end

  def check_table
    if $var1 == $var2 && $var1 == $var3 && $var1 != ' '
      puts checks
      puts "the winner is #{$var1}"
      reset_values
    elsif $var4 == $var5 && $var4 == $var6 && $var4 != ' '
      puts checks
      puts "the winner is #{$var4}"
      reset_values
    elsif $var7 == $var8 && $var7 == $var9 && $var7 != ' '
      puts checks
      puts "the winner is #{$var7}"
      reset_values
    elsif $var1 == $var4 && $var1 == $var7 && $var1 != ' '
      puts checks
      puts "the winner is #{$var1}"
      reset_values
    elsif $var2 == $var5 && $var2 == $var8 && $var2 != ' '
      puts checks
      puts "the winner is #{$var2}"
      reset_values
    elsif $var3 == $var6 && $var3 == $var9 && $var3 != ' '
      puts checks
      puts "the winner is #{$var3}"
      reset_values
    elsif $var1 == $var5 && $var1 == $var9 && $var1 != ' '
      puts checks
      puts "the winner is #{$var1}"
      reset_values
    elsif $var3 == $var5 && $var3 == $var7 && $var3 != ' '
      puts checks
      puts "the winner is #{$var3}"
      reset_values
    else
      puts checks
    end
  end

  def reset_values
    $var1 = ' '
    $var2 = ' '
    $var3 = ' '
    $var4 = ' '
    $var5 = ' '
    $var6 = ' '
    $var7 = ' '
    $var8 = ' '
    $var9 = ' '
  end
    
end
