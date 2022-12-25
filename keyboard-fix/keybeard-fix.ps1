# из-за бага винды при перезапуске может
# появится лишняя англ en-US раскладка,
# даже если она не используется.
# спопоб избавится от нее - добавить и удалить ее в параметрах системы.

$LanguageList = Get-WinUserLanguageList

$LanguageList.Add("en-US")
Set-WinUserLanguageList $LanguageList -Force

$LanguageList.Remove($LanguageList[-1])
Set-WinUserLanguageList $LanguageList -Force