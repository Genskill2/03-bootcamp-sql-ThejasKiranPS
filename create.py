def clean(string):
    string = string.split('|')
    for index, val in enumerate(string):
        string[index]=val.strip()
        if 'primary key' in string[index]:
            string[index]= f"INTEGER {string[index]}"
    return string[1:-1]

def createTable(tableName,columns,types):
   columns=clean(columns)
   types= clean(types)
   referenceList=' '
   command=F'CREATE TABLE {tableName} ('
   for index,val in enumerate(types):
       if 'foreign' not in val:
           command+=f" {columns[index]} {val},"
       else:
           command+=f" {columns[index]} INTEGER,"
           referenceList+= f'FOREIGN KEY({columns[index]}) {references(val.split()[-1])},'
   return command[:-1]+referenceList[:-1] + ');'

def references(string):
    keys=string.split('.')
    return f"REFERENCES {keys[0]}({keys[1]})"

def readFile():
    lines = []
    with open("create.txt") as file_in:
        for line in file_in:
            lines.append(line)
    i=0
    while i<len(lines)/3:
        x=i*3
        tn=lines[x][:-1]
        c=lines[x+1]
        t=lines[x+2]
        print(createTable(tn,c,t))
        i+=1
readFile()
