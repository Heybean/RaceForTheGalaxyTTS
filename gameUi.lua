require("util")

function createSelectButtonOnCard(card)
    card.clearButtons()
    card.createButton({
         click_function = "cardSelectClick",
         function_owner = self,
         position = {0, 0.5, 0},
         width = 600,
         height = 1000,
         font_size = 150,
         color = color(0, 1, 1, 0.5),
         tooltip = 'Select "' .. card.getName() .. '"'
    })
end

function createCancelButtonOnCard(card)
    card.clearButtons()
    card.createButton({
         click_function = "cardCancelClick",
         function_owner = self,
         position = {0, 0.5, 0},
         width = 600,
         height = 1000,
         font_size = 150,
         color = color(1, 0.5, 0.5, 0.5),
         tooltip = 'Cancel "' .. card.getName() .. '"'
    })
end

function createConfirmButton(card)
    card.createButton({
        click_function = "confirmPowerClick",
        function_owner = Global,
        label = "Confirm",
        font_size = 150,
        width = 900,
        height = 220,
        position = {0, 0, 1.85},
    })
end

function createUsePowerButton(card, powerIndex, powersCount, tooltip, color)
    local slot = getCardSlot(card)

    if not slot then return end

    local w = 900 / powersCount
    local xW = 1
    local offx = xW / powersCount

    card.createButton({
        click_function = "usePowerClick" .. powerIndex,
        function_owner = Global,
        label = powersCount == 1 and "Use Power" or "Pow " .. powerIndex,
        font_size = 150,
        height = 220,
        width = w,
        scale = {0.5, 1, 0.4},
        position = {-offx / 2 * (powersCount - 1) + (powerIndex-1) * offx, 0, -0.63},
        tooltip = tooltip,
        color = color or "White"
    })
end

function createCancelButton(card)
    card.createButton({
        click_function = "cancelPowerClick",
        function_owner = Global,
        label = "Cancel",
        font_size = 150,
        width = 900,
        height = 220,
        position = {0, 0, -1.85},
        tooltip = "Cancel power.",
    })
end

function createGoodsButton(card, label, color)
    local offset = {0.28, 5, 0.13}
    local slot = getCardSlot(card)

    slot.createButton({
        click_function = "goodSelectClick",
        function_owner = Global,
        label = label or "",
        font_size = 175,
        color = color or "White",
        width = 500,
        height = 750,
        position = offset,
        scale = {0.5, 2, 0.35}
    })
end

function highlightOn(o, color, player)
    if o.UI.getXml() == '' then
        o.UI.setXml('<Panel id="highlight" color="' .. color .. '" width="220" height="314" visibility="' .. player .. '"/>' ..
[[
<Panel id="hex" width="100" height="100" position="45 -113 -30" scale="0.3" rotation="0 0 180" active="false">
    <Image image="hex" preserveAspect="true"/>
    <Text id="vp" fontSize="65" fontStyle="Bold"></Text>
</Panel>
]])
    else
        o.UI.setAttributes("highlight",{
            active = true,
            visibility = player,
            color = color
        })
    end
end

function highlightOff(o)
    if o.UI.getXml() ~= '' then
        o.UI.setAttribute("highlight", "active", false)
    end
end

function displayVpHexOff(o)
    if o.UI.getXml() ~= '' then
        o.UI.setAttribute("hex", "active", false)
    end
end

function displayVpHexOn(o, value)
    if o.UI.getXml() == '' then
        o.UI.setXml('<Panel id="highlight" width="220" height="314" active="false"/>' ..
         '<Panel id="hex" width="100" height="100" position="45 -113 -30" scale="0.3" rotation="0 0 180"><Image image="hex" preserveAspect="true"/>'..
         '<Text id="vp" fontSize="65" fontStyle="Bold">' .. value .. '</Text></Panel>')
    else
        o.UI.setAttribute("hex", "active", true)
        o.UI.setValue("vp", value)
    end
end