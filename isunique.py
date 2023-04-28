string = "abcdefgbh"

iterations = 0
found = False
for i in range(len(string)):
    for j in range(i+1, len(string)):
        iterations += 1
        print(string[i]+" == "+string[j])
        if string[i] == string[j]:
            found = True
            break

    if found == True:
        break

print("string: "+string)
print("found?: "+str(found))
print("iterations: "+str(iterations))
