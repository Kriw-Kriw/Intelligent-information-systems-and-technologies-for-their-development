import os
def loader(env):
    facts = os.path.abspath(r'source\facts\facts.clp')
    rules = os.path.abspath(r'source\rules\rules.clp')
    load_list = (facts, rules)
    for elem in load_list:
        env.load(elem)
