local function send_report(msg)
    local text = 'The USER: '..msg.from.username..' ['..msg.from.id..']\nReported Reason: Spaming\nThe User Spammed IN': "'..msg.to.title..'" ['..msg.to.id..']\n'.Reaport Message '..msg.text
    for v,user in pairs(_config.sudo_users) do
        send_msg('user#id'..user, text, ok_cb, true)
    end
end

local function kick_user(msg)
    local chat = 'chat#id'..msg.to.id
    local channel = 'channel#id'..msg.to.id
    local user = msg.from.id
    if msg.to.type == 'chat' then
        chat_del_user(chat, 'user#id'..user, ok_cb, true)
    elseif msg.to.type == 'channel' then
        channel_kick_user(channel, 'user#id'..user, ok_cb, true)
    end
end

local function run(msg, matches)
    if not permissions(msg.from.id, msg.to.id, "settings") then
        local hash = 'spam:'..msg.to.id
        if redis:get(hash) then
            kick_user(msg)
            delete_msg(msg.id, ok_cb, false)
            send_report(msg)
        end
    end
end

return {
patterns = {
    -- You can add much as patterns you want to stop all spam traffic
    "[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]",
    "[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Oo][Rr][Gg]",
    "[Aa][Dd][Ff].[Ll][Yy]",
    "[Bb][Ii][Tt].[Ll][Yy]"
}, run = run}
