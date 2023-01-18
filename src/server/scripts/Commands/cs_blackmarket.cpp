#include "BlackMarketMgr.h"
#include "ChatCommand.h"
#include "ScriptMgr.h"
#include "Chat.h"
#include "Language.h"
#include "Log.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "RBAC.h"
#include "WorldSession.h"

using namespace Trinity::ChatCommands;

class blackmarket_commandscript : public CommandScript
{
public:
    blackmarket_commandscript() : CommandScript("blackmarket_commandscript") { }

    ChatCommandTable GetCommands() const override
    {
        static ChatCommandTable blackmarketCommandTable =
        {
            { "setduration",    HandleBMSetAuctionDurationCommand, rbac::RBAC_PERM_COMMAND_BLACKMARKET_SET_DURATION,       Console::No },
        };
        static ChatCommandTable commandTable =
        {
            { "blackmarket", blackmarketCommandTable },
        };
        return commandTable;
    }

    static bool HandleBMSetAuctionDurationCommand(ChatHandler* /*handler*/, const char* args)
    {
        if (!*args)
            return false;
        char* markStr = strtok((char*)args, " ");
        char* durationStr = strtok((char*)nullptr, " ");

        uint32 marketId = markStr ? atoi(markStr) : 0;
        uint32 durationSeconds = durationStr ? atoi(durationStr) : 0;

        if (BlackMarketEntry* entry = sBlackMarketMgr->GetAuctionByID(marketId))
            entry->SetStartTime(durationSeconds + time(nullptr) - sBlackMarketMgr->GetTemplateByID(entry->GetMarketId())->Duration);

        return true;
    }
};

void AddSC_blackmarket_commandscript()
{
    new blackmarket_commandscript();
}
