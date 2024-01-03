(defrule rule-0
    ?count <- (LymphocytesCD4 (count ?cnt&:(< ?cnt 500)))
    =>
    (assert (Result (result nothing)))
)

(defrule rule-1
    ?count <- (LymphocytesCD4 (count ?cnt&:(> ?cnt 500)))
    ?level <- (DNAHBV (level ?lvl&:(< ?lvl 10000)))
    ?condition <- (ALAT (condition ?cond&:(eq ?cond fine)))
    =>
    (assert (Result (result observation)))
)

(defrule rule-2
    ?count <- (LymphocytesCD4 (count ?cnt&:(> ?cnt 500)))
    ?level <- (DNAHBV (level ?lvl&:(> ?lvl 10000)))
    ?condition <- (ALAT (condition ?cond&:(eq ?cond elevated)))
    =>
    (assert (Result (result treatment)))
)

(defrule rule-3
    ?count <- (LymphocytesCD4 (count ?cnt&:(> ?cnt 500)))
    ?level <- (DNAHBV (level ?lvl&:(< ?lvl 10000)))
    ?condition <- (ALAT (condition ?cond&:(eq ?cond elevated)))
    ?indications <- (Ultrasound (indications ?indic&:(eq ?indic yes)))
    =>
    (assert (Result (result treatment)))
)

(defrule rule-4
    ?count <- (LymphocytesCD4 (count ?cnt&:(> ?cnt 500)))
    ?level <- (DNAHBV (level ?lvl&:(< ?lvl 10000)))
    ?condition <- (ALAT (condition ?cond&:(eq ?cond elevated)))
    ?indications <- (Ultrasound (indications ?indic&:(eq ?indic no)))
    =>
    (assert (Result (result observation)))
)

(defrule rule-5
    ?count <- (LymphocytesCD4 (count ?cnt&:(> ?cnt 500)))
    ?level <- (DNAHBV (level ?lvl&:(> ?lvl 10000)))
    ?condition <- (ALAT (condition ?cond&:(eq ?cond fine)))
    ?indications <- (Ultrasound (indications ?indic&:(eq ?indic yes)))
    =>
    (assert (Result (result treatment)))
)

(defrule rule-6
    ?count <- (LymphocytesCD4 (count ?cnt&:(> ?cnt 500)))
    ?level <- (DNAHBV (level ?lvl&:(> ?lvl 10000)))
    ?condition <- (ALAT (condition ?cond&:(eq ?cond fine)))
    ?indications <- (Ultrasound (indications ?indic&:(eq ?indic no)))
    =>
    (assert (Result (result observation)))
)