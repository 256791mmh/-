function zhrfa(msg)
text = nil
if msg and msg.content and msg.content.text then
text = msg.content.text.text
end
msg_chat_id = msg.chat_id
msg_id = msg.id
if tonumber(msg.sender_id.user_id) == tonumber(Fast) then
return false
end
if text then
local neww = Redis:get(Fast.."Get:Reides:Commands:Group"..msg.chat_id..":"..text)
if neww then
text = neww or text
end
end
if text == "تعطيل الزخرفه" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not msg.Creator then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(5)..' }* ',"md",true)  
end
if Redis:get(Fast..'zhrfa'..msg.chat_id)  then
send(msg_chat_id,msg_id, '• تم تعطيل امر الزخرفه مسبقا\n ✓',"md")
else
Redis:set(Fast.."zhrfa"..msg.chat_id,"true")
send(msg_chat_id,msg_id, '• تم تعطيل امر الزخرفه\n ✓',"md")
end
end
if text == "تفعيل الزخرفه" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not msg.Creator then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(5)..' }* ',"md",true)  
end
if not Redis:get(Fast..'zhrfa'..msg.chat_id)  then
send(msg_chat_id,msg_id, '• تم تفعيل امر الزخرفه مسبقا\n ✓',"md")
else
Redis:del(Fast.."zhrfa"..msg.chat_id)
send(msg_chat_id,msg_id, '• تم تفعيل امر الزخرفه\n ✓',"md")
end
end
if text == "زخرفه" then
if Redis:get(Fast.."zhrfa"..msg.chat_id) then
return send(msg.chat_id,msg.id,"• الزخرفه معطله")
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '𝙀𝙉𝙂 ▴ زخࢪفھـۃ انجليزي', data = senderr..'/zeng'},
},
{
{text = 'AR ▴ زخࢪفھـۃ عربي', data = senderr..'/zar'},
},
}
}
return send(msg_chat_id,msg_id, "مرحبا بك في الزخرفه","md",false,false,false,false,reply_markup)
end
-- z eng
if text and text:match("%a") and Redis:get(Fast..msg_chat_id..senderr.."zkrf:") == "zeng" then
Redis:del(Fast..msg_chat_id..senderr.."zkrf:")
Redis:set(Fast..msg_chat_id..senderr.."zkrf:text", text)
local api = https.request("https://ayad-12.xyz/anubis/zkhrfa.php?text="..URL.escape(text))
local zkrf = JSON.decode(api)
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = zkrf['anubis']['1'] , data = senderr..'/zkhrfaa1'}},
{{text = zkrf['anubis']['2'] , data = senderr..'/zkhrfaa2'}},
{{text = zkrf['anubis']['3'] , data = senderr..'/zkhrfaa3'}},
{{text = zkrf['anubis']['4'] , data = senderr..'/zkhrfaa4'}},
{{text = zkrf['anubis']['5'] , data = senderr..'/zkhrfaa5'}},
{{text = zkrf['anubis']['6'] , data = senderr..'/zkhrfaa6'}},
{{text = zkrf['anubis']['7'] , data = senderr..'/zkhrfaa7'}},
{{text = zkrf['anubis']['8'] , data = senderr..'/zkhrfaa8'}},
{{text = zkrf['anubis']['9'] , data = senderr..'/zkhrfaa9'}},
{{text = zkrf['anubis']['10'] , data = senderr..'/zkhrfaa10'}},
{{text = zkrf['anubis']['11'] , data = senderr..'/zkhrfaa11'}},
{{text = zkrf['anubis']['12'] , data = senderr..'/zkhrfaa12'}},
{{text = zkrf['anubis']['13'] , data = senderr..'/zkhrfaa13'}},
{{text = zkrf['anubis']['14'] , data = senderr..'/zkhrfaa14'}},
{{text = zkrf['anubis']['15'] , data = senderr..'/zkhrfaa15'}},
{{text = zkrf['anubis']['16'] , data = senderr..'/zkhrfaa16'}},
{{text = zkrf['anubis']['17'] , data = senderr..'/zkhrfaa17'}},
{{text = zkrf['anubis']['18'] , data = senderr..'/zkhrfaa18'}},
{{text = zkrf['anubis']['19'] , data = senderr..'/zkhrfaa19'}},
}
}
return send(msg_chat_id,msg_id, "• اختࢪ الزخࢪفھـۃ التي تࢪيدها\n ▽","html",false,false,false,false,reply_markup)
end
-- z ar 
if text and not text:match("%a") and Redis:get(Fast..msg_chat_id..senderr.."zkrf:") == "zar" then
Redis:del(Fast..msg_chat_id..senderr.."zkrf:")
Redis:set(Fast..msg_chat_id..senderr.."zkrf:text", text)
local api = https.request("https://ayad-12.xyz/anubis/zkhrfa.php?text="..URL.escape(text))
local zkrf = JSON.decode(api)
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = zkrf['anubis']['1'] , data = senderr..'/zkhrfaa1'}},
{{text = zkrf['anubis']['2'] , data = senderr..'/zkhrfaa2'}},
{{text = zkrf['anubis']['3'] , data = senderr..'/zkhrfaa3'}},
{{text = zkrf['anubis']['4'] , data = senderr..'/zkhrfaa4'}},
{{text = zkrf['anubis']['5'] , data = senderr..'/zkhrfaa5'}},
{{text = zkrf['anubis']['6'] , data = senderr..'/zkhrfaa6'}},
{{text = zkrf['anubis']['7'] , data = senderr..'/zkhrfaa7'}},
{{text = zkrf['anubis']['8'] , data = senderr..'/zkhrfaa8'}},
{{text = zkrf['anubis']['9'] , data = senderr..'/zkhrfaa9'}},
{{text = zkrf['anubis']['10'] , data = senderr..'/zkhrfaa10'}},
{{text = zkrf['anubis']['11'] , data = senderr..'/zkhrfaa11'}},
}
}
return send(msg_chat_id,msg_id, "• اختࢪ الزخࢪفھـۃ التي تࢪيدها\n ▽","html",false,false,false,false,reply_markup)
end

end
return {Fast = zhrfa}