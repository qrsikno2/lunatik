local notifier = require("notifier")
local notify = notifier.notify
local console = notifier.console
local keyboard = notifier.keyboard
print("console ", console)
print("keyboard ", keyboard)

local function vt_handler(event, console_num, ch)
    print("VT event: console "..console_num..", char: "..ch)
    return notify.OK
end


console(vt_handler)