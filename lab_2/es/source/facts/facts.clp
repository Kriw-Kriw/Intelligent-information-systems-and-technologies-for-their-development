(deftemplate LymphocytesCD4 "Число лимфоцитов CD4"
    (slot count (type NUMBER) (range 0 ?VARIABLE))
)

(deftemplate DNAHBV "Уровень ДНК ВГВ (Вируса Гепатита B)"
    (slot level (type NUMBER) (range 0 ?VARIABLE))
)

(deftemplate ALAT "Аланинаминотрансфераза"
    (slot condition (type SYMBOL) (allowed-symbols fine elevated))
)

(deftemplate Ultrasound "УЗИ и Биопсия печени (по возможности)"
    (slot indications (type SYMBOL) (allowed-symbols yes no))
)

(deftemplate Result "Лечение/Наблюдение"
    (slot result (type SYMBOL) (allowed-symbols treatment observation nothing))
)
