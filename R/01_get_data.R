overdraft <- read.csv("http://www.bankofengland.co.uk/boeapps/iadb/fromshowcolumns.asp?csv.x=yes&Datefrom=01/Jan/2018&Dateto=01/Jan/2022&SeriesCodes=IUMODTL&CSVF=TN&UsingCodes=Y&VPD=Y&VFD=N")

credit_card <- read.csv("http://www.bankofengland.co.uk/boeapps/iadb/fromshowcolumns.asp?csv.x=yes&Datefrom=01/Jan/2018&Dateto=01/Jan/2022&SeriesCodes=IUMCCTL&CSVF=TN&UsingCodes=Y&VPD=Y&VFD=N")

write.csv(overdraft, "data/overdraft_raw.csv", row.names = FALSE)
write.csv(credit_card, "data/credit_card_raw.csv", row.names = FALSE)
