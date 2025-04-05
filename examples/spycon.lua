local notifier = require("notifier")
local notify = notifier.notify

local function vt_handler(event, console_num, ch)
    print("VT event: console "..console_num..", char: "..ch)
    return notify.OK
end


notifier.vt(vt_handler)