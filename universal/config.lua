--
-- WRITE-FORMATTED
-- Formats output and writes it to stdout.
--
function writef(...)
   io.write(string.format(...))
end -- function writef

-- 
-- CLEAR CONSOLE
-- Clears the console.
-- 
function clear()
   writef('\x1bc\x1bc')
end -- function clear

-- 
-- LIST TABLE
-- Lists the keys and values of a given table.
--
function list_table(table)
   local max_len_left  = 0
   local max_len_right = 0
   
   for k, v in pairs(table) do
      local len_left  = #(tostring(k))
      local len_right = #(tostring(v))
      
      if len_left > max_len_left then
         max_len_left = len_left
      end -- if
      
      if len_right > max_len_right then
         max_len_right = len_right
      end -- if
   end -- for
   
   local fmt_left  = '%-' .. tostring(max_len_left)  .. 's'
   local fmt_right = '%'  .. tostring(max_len_right) .. 's'

   for k, v in pairs(table) do
      writef(fmt_left .. ' ' .. fmt_right .. '\n', k, v)
   end -- for
end -- list_table

-- 
-- EXECUTE SHELL COMMAND
-- Executes a local OS shell command
--
exec = os.execute

-- 
-- DISPLAY INTEGER DIVISION
-- Prints the integer quotient and remainder
--
function idiv(a, b)
   writef('%d r%d\n', a // b, a % b)
end -- function idiv

-- 
-- TO BINARY
-- Converts a number to binary
--
function bin(num)
   local digits = {}
   local temp = tonumber(num)
   local index = 1
   local result = ''
   local negative = false
   
   if temp == nil then
      result = nil
      goto ret
   end -- if
   
   temp = temp // 1
   
   if temp == 0 then
      result = '0'
      goto ret
   elseif temp < 0 then
      negative = true
      temp = (math.maxinteger + temp) + 1
   end -- if
   
   while temp > 0 do
      digits[index] = temp % 2
      temp = temp // 2
      index = index + 1
   end -- while
   
   for i = #digits, 1, -1 do
      result = result .. tostring(digits[i]) 
   end -- for
      
   ::ret::
   return result
end -- function bin
