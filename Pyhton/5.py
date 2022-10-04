n = int(input())
hours = n % (60 * 24) // 60 
minytes = n % 60
print(hours , minytes)
