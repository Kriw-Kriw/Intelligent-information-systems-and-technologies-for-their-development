

def loader(env):
    facts = r'es\source\facts\facts.clp'
    rules = r'es\source\rules\rules.clp'
    load_list = (facts, rules)
    for elem in load_list:
        env.load(elem)
