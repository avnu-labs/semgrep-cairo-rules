import os

rules = ["rules:\n"]
for rule in os.listdir("rules"):
    with open(f"rules/{rule}") as rule:
        lines = rule.readlines()
        rules.extend(lines[1:])

with open("cairo-rules.yaml", "w+") as file:
    file.writelines(rules)
    file.write("\n")
