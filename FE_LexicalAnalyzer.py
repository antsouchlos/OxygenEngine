def sizeStr(str = ""):
    i = 0
    for c in str:
        i += 1

    return i

def getIso(str = "", subStr = ''):
    result = ""

    b = 0
    for c in str:
        if c == subStr:
            if b:
                break
            else:
                b = 1

        else:
            if b:
                result += c

    return result
        
def getToCh(str = "", ch = ''):
    result = ""

    for c in str:
        if c == ch:
            break
        else:
            result += c

    return result

def getToStr(str = "", subStr = ""):
    result = ""

    i = 0
    b = 1
    while i < sizeStr(str) - sizeStr(subStr) + 1:
        subStr2 = ""
        
        subi = i
        while subi < i + sizeStr(subStr):
            subStr2 += str[subi]
            subi += 1

        print(subStr2)
        
        if subStr2 == subStr:
            b = 0
            break

        result += str[i]
        
        i += 1

    if b:
        result = str

    return result

def findStr(str = "", subStr = ""):
    result = 0

    i = 0
    while i < sizeStr(str) - sizeStr(subStr) + 1:
        subStr2 = ""
        
        subi = i
        while subi < i + sizeStr(subStr):
            subStr2 += str[subi]
            subi += 1

        if subStr2 == subStr:
            result = i
            break
        
        i += 1

    return result

def smplRepFStr(str = "", start = 0, end = 0, repStr = ""):
    result = ""

    end += 1

    i = 0
    b = 1
    while i < sizeStr(str):
        if i == start:
            i = end
            result += repStr
            b = 0

        if i < sizeStr(str):
            result += str[i]

        i += 1

    if b or end - start > sizeStr(str):
        result = str

    return result

def cplxRepFStr(str = "", subStr = "", repStr = ""):
    return smplRepFStr(str, findStr(str, subStr), findStr(str, subStr) + sizeStr(subStr) -1, repStr)
    
def getEnclosed(str = "", sub1 = "", sub2 = ""):
    result = ""

    openCount = -1

    b = 0
    i = 0
    while i < sizeStr(str) - sizeStr(sub2) + 1 and sizeStr(str) > sizeStr(sub2):
        subStr = ""

        if i < sizeStr(str) - sizeStr(sub1):
            subi1 = i
            while subi1 < i + sizeStr(sub1):
                subStr += str[subi1]
                subi1 += 1

        if subStr == sub1:
            if openCount < 0:
                openCount = 1;
                b = 1
            else:
                openCount += 1

        subStr = ""

        subi2 = i
        while subi2 < i + sizeStr(sub2):
            subStr += str[subi2]
            subi2 += 1

        if subStr == sub2:
            openCount -= 1

        if openCount == 0:
            break

        if b:
            result += str[i]
        
        i += 1

    if sizeStr(result) > 0:
        result = cplxRepFStr(result, sub1)
    else:
        result = str

    if sub1 == sub2:
        result = str

    return result

def countCh(str = "", ch = ''):
    result = 0

    for c in str:
        if c == ch:
            result += 1

    return result

def countStr(str = "", subStr = ""):
    result = 0

    i = 0
    while i < sizeStr(str) - sizeStr(subStr) + 1:
        subStr2 = ""
        
        subi = i
        while subi < i + sizeStr(subStr):
            subStr2 += str[subi]
            subi += 1

        if subStr2 == subStr:
            result += 1

        i += 1

    return result

class test:
    x = 0
    x = 1
    x = 3

    def test_test(self):
        print("test")
