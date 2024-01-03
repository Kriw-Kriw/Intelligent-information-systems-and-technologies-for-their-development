# Лабораторная работа №1: Вариант 20
import clips


if __name__ == '__main__':

    function_string = """
            (deffunction sum_expression ($?x)
                (bind ?result 0)
                (loop-for-count (?counter 1 (length$ ?x)) do
                    (if (and (integerp (nth$ ?counter $?x)) (<> (nth$ ?counter $?x) 0))
                        then
                            (bind ?result (+ (** (+ (nth$ ?counter $?x) (/ 1 (nth$ ?counter $?x))) 10) ?result))
                            (printout t "argument " nth$ ?counter $?x " checked" crlf)
                        else
                            (printout t "argument " nth$ ?counter $?x " is not valid" crlf)
                    )
                )
                (return ?result)
            )
            """

    env = clips.Environment()
    env.build(function_string)
    deffunction = env.find_function('sum_expression')

    # список аргументов
    x = [5, 5]

    # передача списка в функцию
    result = deffunction(x)
    print(result)
