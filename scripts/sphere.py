# sphere.py
import math

def is_in_sphere(x, y, z):
    if math.sqrt(x**2+y**2+z**2) < 1.5:
        return 1
    return 0

# Generate setblock commands and write to file
commands = []
for x in range(-5, 5):
    for y in range(-5, 5):
        for z in range(-5, 5):
            if is_in_sphere(x, y, z):
                commands.append(f"execute positioned ~{x} ~{y} ~{z} unless block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ air replace")

# Write commands to a .mcfunction file
with open("sphere.mcfunction", "w") as f:
    for cmd in commands:
        f.write(cmd + "\n")

print(f"Generated {len(commands)} commands and saved to sphere.mcfunction")