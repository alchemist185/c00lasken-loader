local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- Full list of 50 valid keys
local validKeys = {
    ["WKDJ-ZLTP-GRHY-XQMS-NEUV-JBCA"] = true,
    ["XGQM-RPTY-VAHD-SKZE-NLUC-JWFO"] = true,
    ["BPMY-HZQW-DRKU-XVJE-FLAG-ONTC"] = true,
    ["TRQI-XWPG-KUBO-YVMC-JZLE-FHAD"] = true,
    ["OJUV-LNYX-GTKM-RWAE-ZBCH-SQIP"] = true,
    ["MCGH-ZLVP-ERJK-YXOT-FUWN-ABDS"] = true,
    ["KDQL-BJTR-XYOV-MHCU-WZNE-AFGP"] = true,
    ["YLVE-XPMO-KARH-ZJWB-TQGN-UCID"] = true,
    ["FRTY-QOGZ-NXJL-UVEM-DWAC-BKHS"] = true,
    ["HUXC-ZNLB-GYAE-MWRK-TFDJ-OVQP"] = true,
    ["JWTF-ACMV-LNBO-XGQE-YKSH-ZPUD"] = true,
    ["EKRU-ZNCV-BYOP-WJAX-HGMT-LQDF"] = true,
    ["ULVG-MTAY-XFJZ-CNKO-PDHE-RWBS"] = true,
    ["ZDBT-HMQU-NXGK-LVJA-CPOR-WFYE"] = true,
    ["YGQU-VWRK-TBLA-MXZH-CEJO-NPDI"] = true,
    ["VNZM-XTWA-RGJL-KYPU-HCOE-BQDF"] = true,
    ["MBKH-XZJV-OTCG-RYWL-PQSA-UFNE"] = true,
    ["OXWP-FTKJ-MNYL-BVGC-HRZE-UQAD"] = true,
    ["GWTJ-CLAV-KYZE-ONUR-MBHP-XFQD"] = true,
    ["LZKT-RYOG-XJAB-MVCF-PHWN-DQEU"] = true,
    ["JKFM-HGVE-XTOL-NYRW-BUQP-ZDAC"] = true,
    ["QUZW-PRGO-NXCB-LTMA-YJEV-KFHD"] = true,
    ["SDYB-XZOH-WTPQ-LVUE-RJNM-AKCG"] = true,
    ["AGXE-MTBJ-YKPR-ZULN-CFDQ-WOVH"] = true,
    ["ZXMV-TWUF-YOJA-KPRL-NCBE-HGDQ"] = true,
    ["NGBK-YOMC-RJTX-ZWFA-VPUD-HLEQ"] = true,
    ["WHNE-RZXP-VOGT-KYUL-MJCB-AFDQ"] = true,
    ["LVCP-KZMY-NTAG-XOUR-JWFE-HBDQ"] = true,
    ["UJHR-QKPW-XZOT-MNCB-YEAL-FVGD"] = true,
    ["TPKO-XMAY-VJZR-NWUC-BLDH-GQEF"] = true,
    ["QZWP-KNXY-MJUC-BLVR-AOTD-GHEF"] = true,
    ["EXKO-VMYR-ZTBH-JAPU-CNWL-QGDF"] = true,
    ["CRBT-KFAO-YLXG-ZUWP-HJME-VNDQ"] = true,
    ["HJXU-LNVC-PZWM-YRGT-OKBE-AQDF"] = true,
    ["MYTG-WBAZ-XNUR-JOCE-FPKL-VQDH"] = true,
    ["ONCL-RVHG-WTPM-YZAX-KUEB-FJDQ"] = true,
    ["FZPK-LTXC-MNAY-WBOG-URHJ-VQDE"] = true,
    ["GJXY-MNPR-KTUW-ZOHL-CVAE-BFQD"] = true,
    ["XVKR-BYJU-WHLC-TGAM-ZOPF-ENQD"] = true,
    ["BRHL-ZXAV-YKPT-MQOE-JGWN-FDCU"] = true,
    ["YAKM-JRQL-ZTNC-UVXO-BEGH-PWFD"] = true,
    ["KMRP-WZBQ-LEAF-YNGX-JDTO-CVUH"] = true,
    ["NUTV-JWZF-PXMA-LOEG-HKRY-CBDQ"] = true,
    ["OFRE-YKVJ-TGXM-WLUB-ZDCA-NPQH"] = true,
    ["ZHQY-KPAM-ONWT-BLUC-XJFE-GRDV"] = true,
    ["JMVW-TQGA-HLOX-NYEK-ZBUP-DFRC"] = true,
    ["TWJK-XBVO-MYGE-ULCR-HZNP-AFDQ"] = true,
    ["CENK-LTYJ-XRWG-ZUOP-BFMA-HVQD"] = true,
    ["AWHC-XKLR-POTM-ZNBG-UYJV-FQDE"] = true,
    ["PRYU-VMKT-JCNO-XWLG-BZAE-FQDH"] = true,
}

local usedKeys = {}
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer

local Window = Rayfield:CreateWindow({
    Name = "Alchemist Hub",
    LoadingTitle = "Alchemist Loader",
    LoadingSubtitle = "🔐 Verifying Key...",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "AlchemistKeyData",
        FileName = "Alchemist_Key"
    },
    Discord = {
        Enabled = false
    },
    KeySystem = false
})

local KeyPage = Window:CreateTab("🔑 Key System", 4483362458)

local KeyInput = KeyPage:CreateInput({
    Name = "Enter Access Key",
    PlaceholderText = "XXXX-XXXX-XXXX-XXXX",
    RemoveTextAfterFocusLost = false,
    Callback = function(key)
        if validKeys[key] then
            if usedKeys[key] and usedKeys[key] ~= localPlayer.UserId then
                Rayfield:Notify({
                    Title = "Key Already Used",
                    Content = "This key has been used by another player.",
                    Duration = 5
                })
            else
                usedKeys[key] = localPlayer.UserId

                Rayfield:Notify({
                    Title = "Access Granted",
                    Content = "Loading your script...",
                    Duration = 3
                })

                task.wait(1.5)
                Rayfield:Destroy()

                loadstring(game:HttpGet("https://raw.githubusercontent.com/alchemist185/c00lsaken/refs/heads/main/main%20lua"))()
            end
        else
            Rayfield:Notify({
                Title = "Invalid Key",
                Content = "The key you entered is not valid.",
                Duration = 4
            })
        end
    end
})
