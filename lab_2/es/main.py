# Лабораторная работа №2: Часть 3, задание 8
import clips
from loader import loader
from diagnostic_solution import diagnostic_solution


def main():
    env = clips.Environment()
    loader(env)
    diagnostic_solution(env)
    env.clear()


if __name__ == '__main__':
    main()
