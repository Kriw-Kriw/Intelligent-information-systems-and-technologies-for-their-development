def diagnostic_solution(env):
    tests = [400, 11000, 'elevated', 'yes']

    env.assert_string(f'(LymphocytesCD4 (count {tests[0]}))')
    env.assert_string(f'(DNAHBV (level {tests[1]}))')
    env.assert_string(f'(ALAT (condition {tests[2]}))')
    env.assert_string(f'(Ultrasound (indications {tests[3]}))')
    env.run()

    for fact in env.facts():
        if "LymphocytesCD4" in fact.template.name:
            print(f"Число лимфоцитов CD4: {fact['count']}")

        elif "DNAHBV" in fact.template.name:
            print(f"Уровень ДНК ВГВ: {fact['level']}")

        elif "ALAT" in fact.template.name:
            print(f"АлАТ: {fact['condition']}")

        elif "Ultrasound" in fact.template.name:
            print(f"Показания к терапии ВГВ: {fact['indications']}")

        elif "Result" in fact.template.name:
            print(f"Диагностическое решение: {fact['result']}")

        else:
            print("Error!")
