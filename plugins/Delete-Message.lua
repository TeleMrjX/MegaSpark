--http://github.com/SWATCHTEAM/MegaSpark.git--
local function get_message_callback(extra, success, result)
  if result.to.peer_type == 'channel' then
    if our_id == result.from.peer_id then
      --local del = delete_msg(result.id, ok_cb, true)
    else
      local del = delete_msg(result.id, ok_cb, true)
      if del == false then
        send_msg(extra, "deleting the message failed.", ok_cb, false)
        return
      end
    end
  else
    send_msg(extra, "You're not in a group", ok_cb, false)
    return
  end
end
local function run(msg, matches)
  if matches[1] == "del" and is_momod(msg) and msg.reply_id then
    msgr = get_message(msg.reply_id,get_message_callback, get_receiver(msg))
  end
end
--http://github.com/SWATCHTEAM/MegaSpark.git--
return {
   description = "Delete Message by reply.",
   usage = {
     "/del : by <Reply> Will Delete The Message",
     "/del : Don't Do It in not the nil Whay"
   },
   patterns = {
      "^[#/!](del)$"
   },
   run = run,
   hide = true
   
} 
