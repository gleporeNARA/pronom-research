with open('ba.txt', 'r') as myfile:
  l = myfile.readlines()
  #print (l)
  
def detect_column_indexes( list_of_lines ):
    indexes=[0]
    transitions= [col.count(' ')==len(list_of_lines) for col in zip(*list_of_lines)]
    last=False
    for i, x in enumerate(transitions):
        if not x and last:
            indexes.append(i)
        last=x
    indexes.append( len(list_of_lines[0])+1 )
    return indexes

def split_line_by_indexes( indexes, line ):
    tokens=[]
    for i1,i2 in zip(indexes[:-1], indexes[1:]): #pairs
        tokens.append( line[i1:i2].rstrip() )
    return tokens

indexes= detect_column_indexes( l )
parsed= [split_line_by_indexes(indexes, line) for line in l] 
#print (indexes)
print (parsed)
print (type(parsed))
print (type(l))
