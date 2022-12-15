function OnPlayerConsole(plr,txt)
  if isplayeradmin(plr) == 0 or not string.find(txt,"banall") then return -1 end --Not my problem
  
  _,pos = string.find(txt,"banall ")
  txt = string.sub(txt,pos)
  for player = 1,64 do
    if isplayerconnected(player) == 1 then
      if getplayernickname(player) == txt then
        banip(getplayerip(player))
      end
    end
  end
end
