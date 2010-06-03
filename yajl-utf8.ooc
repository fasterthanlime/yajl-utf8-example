use yajl

import yajl/Yajl, io/File
import structs/[HashMap,ArrayList]

testParsing: func (s: String) -> ValueList {
    parse(s, ValueList)
}

main: func {
    list := testParsing(File new("jp.json") read())
    for(v in list) {
        v value as String println()
    }
}



