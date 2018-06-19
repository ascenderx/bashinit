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

