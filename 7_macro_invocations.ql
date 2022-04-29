import cpp

from MacroInvocation minv
where minv.getMacroName() in ["ntohs", "ntohl", "ntohll"]
select minv, "macro invocations"
