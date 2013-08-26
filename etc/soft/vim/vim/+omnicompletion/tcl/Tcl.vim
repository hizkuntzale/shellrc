let b:after = [
\	{'word': 'cancel', 'menu': 'script script script ...'},
\	{'word': 'idle', 'menu': 'script script script ...'},
\	{'word': 'info', 'menu': 'id'},
\	]

let b:array = [
\	{'word': 'anymore', 'menu': 'arrayName searchId'},
\	{'word': 'donesearch', 'menu': 'arrayName searchId'},
\	{'word': 'exists', 'menu': 'arrayName'},
\	{'word': 'get', 'menu': 'arrayName pattern'},
\	{'word': 'names', 'menu': 'arrayName mode pattern'},
\	{'word': 'nextelement', 'menu': 'arrayName searchId'},
\	{'word': 'set', 'menu': 'arrayName list'},
\	{'word': 'size', 'menu': 'arrayName'},
\	{'word': 'startsearch', 'menu': 'arrayName'},
\	{'word': 'statistics', 'menu': 'arrayName'},
\	{'word': 'unset', 'menu': 'arrayName pattern'},
\	]

let b:binary = [
\	{'word': 'format', 'menu': 'formatString arg arg ...'},
\	{'word': 'scan', 'menu': 'string formatString varName varName ...'},
\	]

let b:chan = [
\	{'word': 'blocked', 'menu': 'channelId'},
\	{'word': 'close', 'menu': 'channelId'},
\	{'word': 'configure', 'menu': 'channelId optionName value optionName value...'},
\	{'word': 'copy', 'menu': 'inputChan outputChan -size size -command callback'},
\	{'word': 'create', 'menu': 'mode cmdPrefix'},
\	{'word': 'eof', 'menu': 'channelId'},
\	{'word': 'event', 'menu': 'channelId event script'},
\	{'word': 'flush', 'menu': 'channelId'},
\	{'word': 'gets', 'menu': 'channelId varName'},
\	{'word': 'names', 'menu': 'pattern'},
\	{'word': 'pending', 'menu': 'mode channelId'},
\	{'word': 'postevent', 'menu': 'channelId eventSpec'},
\	{'word': 'puts', 'menu': '-nonewline channelId string'},
\	{'word': 'read', 'menu': 'channelId'},
\	{'word': 'seek', 'menu': 'channelId offset origin'},
\	{'word': 'tell', 'menu': 'channelId'},
\	{'word': 'truncate', 'menu': 'channelId length'},
\	]

let b:chan_sp_configure = [
\	{'word': '-blocking', 'menu': 'boolean'},
\	{'word': '-buffering', 'menu': 'newValue'},
\	{'word': '-buffersize', 'menu': 'newSize'},
\	{'word': '-encoding', 'menu': 'name'},
\	{'word': '-eofchar', 'menu': '{inChar outChar}'},
\	{'word': '-translation', 'menu': '{inMode outMode}'},
\	]

let b:clock = [
\	{'word': 'add', 'menu': 'timeVal count unit... -option value'},
\	{'word': 'clicks', 'menu': '-option'},
\	{'word': 'format', 'menu': 'timeVal -option value...'},
\	{'word': 'microseconds', 'menu': ''},
\	{'word': 'milliseconds', 'menu': ''},
\	{'word': 'scan', 'menu': 'inputString -option value...'},
\	{'word': 'seconds', 'menu': ''},
\	]

let b:clock_sp_seconds = [
\	{'word': '-base', 'menu': 'time'},
\	{'word': '-format', 'menu': 'format'},
\	{'word': '-gmt', 'menu': 'boolean'},
\	{'word': '-locale', 'menu': 'localeName'},
\	{'word': '-timezone', 'menu': 'zoneName'},
\	]

let b:dde = [
\	{'word': 'servername', 'menu': '-force -handler proc -- topic'},
\	{'word': 'execute', 'menu': '-async service topic data'},
\	{'word': 'poke', 'menu': 'service topic item data'},
\	{'word': 'request', 'menu': '-binary service topic item'},
\	{'word': 'services', 'menu': 'service topic'},
\	{'word': 'eval', 'menu': '-async topic cmd arg arg ...'},
\	]

let b:dict = [
\	{'word': 'append', 'menu': 'dictionaryVariable key string ...'},
\	{'word': 'create', 'menu': 'key value ...'},
\	{'word': 'exists', 'menu': 'dictionaryValue key key ...'},
\	{'word': 'filter', 'menu': 'dictionaryValue value globPattern'},
\	{'word': 'for', 'menu': '{keyVar valueVar} dictionaryValue body'},
\	{'word': 'get', 'menu': 'dictionaryValue key ...'},
\	{'word': 'incr', 'menu': 'dictionaryVariable key increment'},
\	{'word': 'info', 'menu': 'dictionaryValue'},
\	{'word': 'keys', 'menu': 'dictionaryValue globPattern'},
\	{'word': 'lappend', 'menu': 'dictionaryVariable key value ...'},
\	{'word': 'merge', 'menu': 'dictionaryValue ...'},
\	{'word': 'remove', 'menu': 'dictionaryValue key ...'},
\	{'word': 'replace', 'menu': 'dictionaryValue key value ...'},
\	{'word': 'set', 'menu': 'dictionaryVariable key key ... value'},
\	{'word': 'size', 'menu': 'dictionaryValue'},
\	{'word': 'unset', 'menu': 'dictionaryVariable key key ...'},
\	{'word': 'update', 'menu': 'dictionaryVariable key varName key varName ... body'},
\	{'word': 'values', 'menu': 'dictionaryValue globPattern'},
\	{'word': 'with', 'menu': 'dictionaryVariable key ... body'},
\	]

let b:encoding = [
\	{'word': 'convertfrom', 'menu': 'encoding data'},
\	{'word': 'convertto', 'menu': 'encoding string'},
\	{'word': 'dirs', 'menu': 'directoryList'},
\	{'word': 'names', 'menu': ''},
\	{'word': 'system', 'menu': 'encoding'},
\	]

let b:exec = [
\	{'word': '-ignorestderr', 'menu': ''},
\	{'word': '-keepnewline', 'menu': ''},
\	]

let b:fconfigure = [
\	{'word': '-blocking', 'menu': 'boolean'},
\	{'word': '-buffering', 'menu': 'newValue'},
\	{'word': '-buffersize', 'menu': 'newSize'},
\	{'word': '-encoding', 'menu': 'name'},
\	{'word': '-eofchar', 'menu': '{inChar outChar}'},
\	{'word': '-translation', 'menu': '{inMode outMode}'},
\	]

let b:file = [
\	{'word': 'atime', 'menu': 'name time'},
\	{'word': 'attributes', 'menu': 'name option value option value...'},
\	{'word': 'channels', 'menu': 'pattern'},
\	{'word': 'copy', 'menu': '-force -- source source ... targetDir'},
\	{'word': 'delete', 'menu': '-force -- pathname pathname ... '},
\	{'word': 'dirname', 'menu': 'name'},
\	{'word': 'executable', 'menu': 'name'},
\	{'word': 'exists', 'menu': 'name'},
\	{'word': 'extension', 'menu': 'name'},
\	{'word': 'isdirectory', 'menu': 'name'},
\	{'word': 'isfile', 'menu': 'name'},
\	{'word': 'join', 'menu': 'name name ...'},
\	{'word': 'link', 'menu': '-linktype linkName target'},
\	{'word': 'lstat', 'menu': 'name varName'},
\	{'word': 'mkdir', 'menu': 'dir dir ...'},
\	{'word': 'mtime', 'menu': 'name time'},
\	{'word': 'nativename', 'menu': 'name'},
\	{'word': 'normalize', 'menu': 'name'},
\	{'word': 'owned', 'menu': 'name'},
\	{'word': 'pathtype', 'menu': 'name'},
\	{'word': 'readable', 'menu': 'name'},
\	{'word': 'readlink', 'menu': 'name'},
\	{'word': 'rename', 'menu': '-force -- source source ... targetDir'},
\	{'word': 'rootname', 'menu': 'name'},
\	{'word': 'separator', 'menu': 'name'},
\	{'word': 'size', 'menu': 'name'},
\	{'word': 'split', 'menu': 'name'},
\	{'word': 'stat', 'menu': 'name varName'},
\	{'word': 'system', 'menu': 'name'},
\	{'word': 'tail', 'menu': 'name'},
\	{'word': 'type', 'menu': 'name'},
\	{'word': 'volumes', 'menu': ''},
\	{'word': 'writable', 'menu': 'name'},
\	]

let b:glob = [
\	{'word': '-directory', 'menu': 'directory'},
\	{'word': '-join', 'menu': ''},
\	{'word': '-nocomplain', 'menu': ''},
\	{'word': '-path', 'menu': 'pathPrefix'},
\	{'word': '-tails', 'menu': ''},
\	{'word': '-types', 'menu': 'typeList'},
\	]

let b:history = [
\	{'word': 'add', 'menu': 'command exec'},
\	{'word': 'change', 'menu': 'newValue event'},
\	{'word': 'clear', 'menu': ''},
\	{'word': 'event', 'menu': 'event'},
\	{'word': 'info', 'menu': 'count'},
\	{'word': 'keep', 'menu': 'count'},
\	{'word': 'nextid', 'menu': ''},
\	{'word': 'redo', 'menu': 'event'},
\	]

let b:http = [
\	{'word': 'config', 'menu': 'options'},
\	{'word': 'geturl', 'menu': 'url options'},
\	{'word': 'formatQuery', 'menu': 'key value key value ...'},
\	{'word': 'reset', 'menu': 'token why'},
\	{'word': 'wait', 'menu': 'token'},
\	{'word': 'data', 'menu': 'token'},
\	{'word': 'error', 'menu': 'token'},
\	{'word': 'status', 'menu': 'token'},
\	{'word': 'code', 'menu': 'token'},
\	{'word': 'ncode', 'menu': 'token'},
\	{'word': 'size', 'menu': 'token'},
\	{'word': 'meta', 'menu': 'token'},
\	{'word': 'cleanup', 'menu': 'token'},
\	{'word': 'register', 'menu': 'proto port command'},
\	{'word': 'unregister', 'menu': 'proto'},
\	]

let b:http_ns_config = [
\	{'word': '-accept', 'menu': 'mimetypes'},
\	{'word': '-proxyhost', 'menu': 'hostname'},
\	{'word': '-proxyport', 'menu': 'number'},
\	{'word': '-proxyfilter', 'menu': 'command'},
\	{'word': '-urlencoding', 'menu': 'encoding'},
\	{'word': '-useragent', 'menu': 'string'},
\	]

let b:http_ns_geturl = [
\	{'word': '-binary', 'menu': 'boolean'},
\	{'word': '-blocksize', 'menu': 'size'},
\	{'word': '-channel', 'menu': 'name'},
\	{'word': '-command', 'menu': 'callback'},
\	{'word': '-handler', 'menu': 'callback'},
\	{'word': '-headers', 'menu': 'keyvaluelist'},
\	{'word': '-keepalive', 'menu': 'boolean'},
\	{'word': '-method', 'menu': 'type'},
\	{'word': '-myaddr', 'menu': 'address'},
\	{'word': '-progress', 'menu': 'callback'},
\	{'word': '-protocol', 'menu': 'version'},
\	{'word': '-query', 'menu': 'query'},
\	{'word': '-queryblocksize', 'menu': 'size'},
\	{'word': '-querychannel', 'menu': 'channelID'},
\	{'word': '-queryprogress', 'menu': 'callback'},
\	{'word': '-strict', 'menu': 'boolean'},
\	{'word': '-timeout', 'menu': 'milliseconds'},
\	{'word': '-type', 'menu': 'mime-type'},
\	{'word': '-validate', 'menu': 'boolean'},
\	]

let b:info = [
\	{'word': 'args', 'menu': 'procname'},
\	{'word': 'body', 'menu': 'procname'},
\	{'word': 'cmdcount', 'menu': ''},
\	{'word': 'commands', 'menu': 'pattern'},
\	{'word': 'complete', 'menu': 'command'},
\	{'word': 'default', 'menu': 'procname arg varname'},
\	{'word': 'exists', 'menu': 'varName'},
\	{'word': 'frame', 'menu': 'number'},
\	{'word': 'functions', 'menu': 'pattern'},
\	{'word': 'globals', 'menu': 'pattern'},
\	{'word': 'hostname', 'menu': ''},
\	{'word': 'level', 'menu': 'number'},
\	{'word': 'library', 'menu': ''},
\	{'word': 'loaded', 'menu': 'interp'},
\	{'word': 'locals', 'menu': 'pattern'},
\	{'word': 'nameofexecutable', 'menu': ''},
\	{'word': 'patchlevel', 'menu': ''},
\	{'word': 'procs', 'menu': 'pattern'},
\	{'word': 'script', 'menu': 'filename'},
\	{'word': 'sharedlibextension', 'menu': ''},
\	{'word': 'tclversion', 'menu': ''},
\	{'word': 'vars', 'menu': 'pattern'},
\	]

let b:interp = [
\	{'word': 'bgerror', 'menu': 'path cmdPrefix'},
\	{'word': 'exists', 'menu': 'path'},
\	{'word': 'expose', 'menu': 'path hiddenName exposedCmdName'},
\	{'word': 'issafe', 'menu': 'path'},
\	{'word': 'marktrusted', 'menu': 'path'},
\	]

let b:interp_sp_bgerror = [
\	{'word': '-safe', 'menu': '-- path'},
\	]

let b:interp_sp_marktrusted = [
\	{'word': '-command', 'menu': ''},
\	{'word': '-granularity', 'menu': ''},
\	{'word': '-milliseconds', 'menu': ''},
\	{'word': '-seconds', 'menu': ''},
\	{'word': '-value', 'menu': ''},
\	]

let b:lsearch = [
\	{'word': '-exact', 'menu': ''},
\	{'word': '-glob', 'menu': ''},
\	{'word': '-regexp', 'menu': ''},
\	{'word': '-sorted', 'menu': ''},
\	{'word': '-all', 'menu': ''},
\	{'word': '-inline', 'menu': ''},
\	{'word': '-not', 'menu': ''},
\	{'word': '-start', 'menu': 'index'},
\	{'word': '-ascii', 'menu': ''},
\	{'word': '-dictionary', 'menu': ''},
\	{'word': '-integer', 'menu': ''},
\	{'word': '-nocase', 'menu': ''},
\	{'word': '-real', 'menu': ''},
\	{'word': '-decreasing', 'menu': ''},
\	{'word': '-increasing', 'menu': ''},
\	{'word': '-index', 'menu': 'indexList'},
\	{'word': '-subindices', 'menu': ''},
\	]

let b:lsort = [
\	{'word': '-ascii', 'menu': ''},
\	{'word': '-dictionary', 'menu': ''},
\	{'word': '-integer', 'menu': ''},
\	{'word': '-real', 'menu': ''},
\	{'word': '-command', 'menu': 'command'},
\	{'word': '-increasing', 'menu': ''},
\	{'word': '-decreasing', 'menu': ''},
\	{'word': '-indices', 'menu': ''},
\	{'word': '-index', 'menu': 'indexList'},
\	{'word': '-nocase', 'menu': ''},
\	{'word': '-unique', 'menu': ''},
\	]

let b:memory = [
\	{'word': 'active', 'menu': 'file'},
\	{'word': 'break_on_malloc', 'menu': 'count'},
\	{'word': 'info', 'menu': ''},
\	{'word': 'init', 'menu': '[on|off]'},
\	{'word': 'objs', 'menu': 'file'},
\	{'word': 'onexit', 'menu': 'file'},
\	{'word': 'tag', 'menu': 'string'},
\	{'word': 'trace', 'menu': '[on|off]'},
\	{'word': 'trace_on_at_malloc', 'menu': 'count'},
\	{'word': 'validate', 'menu': '[on|off]'},
\	]

let b:msgcat = [
\	{'word': 'mc', 'menu': 'src-string arg arg ...'},
\	{'word': 'mcmax', 'menu': 'src-string src-string ...'},
\	{'word': 'mclocale', 'menu': 'newLocale'},
\	{'word': 'mcpreferences', 'menu': ''},
\	{'word': 'mcload', 'menu': 'dirname'},
\	{'word': 'mcset', 'menu': 'locale src-string translate-string'},
\	{'word': 'mcmset', 'menu': 'locale src-trans-list'},
\	{'word': 'mcunknown', 'menu': 'locale src-string'},
\	]

let b:namespace = [
\	{'word': 'children', 'menu': 'namespace pattern'},
\	{'word': 'code', 'menu': 'script'},
\	{'word': 'current', 'menu': ''},
\	{'word': 'delete', 'menu': 'namespace namespace ...'},
\	{'word': 'ensemble', 'menu': 'exists command'},
\	{'word': 'eval', 'menu': 'namespace arg arg ...'},
\	{'word': 'exists', 'menu': 'namespace'},
\	{'word': 'export', 'menu': '-clear pattern pattern ...'},
\	{'word': 'forget', 'menu': 'pattern pattern ...'},
\	{'word': 'import', 'menu': '-force pattern pattern ...'},
\	{'word': 'inscope', 'menu': 'namespace script arg ...'},
\	{'word': 'origin', 'menu': 'command'},
\	{'word': 'parent', 'menu': 'namespace'},
\	{'word': 'path', 'menu': 'namespaceList'},
\	{'word': 'qualifiers', 'menu': 'string'},
\	{'word': 'tail', 'menu': 'string'},
\	{'word': 'upvar', 'menu': 'namespace otherVar myVar otherVar myVar ...'},
\	{'word': 'unknown', 'menu': 'script'},
\	{'word': 'which', 'menu': '-command -variable name'},
\	]

let b:namespace_sp_ensemble = [
\	{'word': '-map', 'menu': ''},
\	{'word': '-prefixes', 'menu': ''},
\	{'word': '-subcommands', 'menu': ''},
\	{'word': '-unknown', 'menu': ''},
\	{'word': '-command', 'menu': ''},
\	{'word': '-namespace', 'menu': ''},
\	]

let b:open = [
\	{'word': '-mode', 'menu': 'baud,parity,data,stop'},
\	{'word': '-handshake', 'menu': 'type'},
\	{'word': '-queue', 'menu': ''},
\	{'word': '-timeout', 'menu': 'msec'},
\	{'word': '-ttycontrol', 'menu': '{signal boolean signal boolean ...}'},
\	{'word': '-ttystatus', 'menu': ''},
\	{'word': '-xchar', 'menu': '{xonChar xoffChar}'},
\	{'word': '-pollinterval', 'menu': 'msec'},
\	{'word': '-sysbuffer', 'menu': '{inSize outSize}'},
\	{'word': '-lasterror', 'menu': ''},
\	]

let b:package = [
\	{'word': 'forget', 'menu': 'package package ...'},
\	{'word': 'ifneeded', 'menu': 'package version script'},
\	{'word': 'names', 'menu': ''},
\	{'word': 'present', 'menu': '-exact package version'},
\	{'word': 'provide', 'menu': 'package version'},
\	{'word': 'require', 'menu': '-exact package version'},
\	{'word': 'unknown', 'menu': 'command'},
\	{'word': 'vcompare', 'menu': 'version1 version2'},
\	{'word': 'versions', 'menu': 'package'},
\	{'word': 'vsatisfies', 'menu': 'version requirement...'},
\	{'word': 'prefer', 'menu': 'latest|stable'},
\	]

let b:packagens = [
\	{'word': '-name', 'menu': 'packageName'},
\	{'word': '-version', 'menu': 'packageVersion'},
\	{'word': '-load', 'menu': 'filespec'},
\	{'word': '-source', 'menu': 'filespec'},
\	]

let b:pkgMkIndex = [
\	{'word': '-direct', 'menu': ''},
\	{'word': '-lazy', 'menu': ''},
\	{'word': '-load', 'menu': 'pkgPat'},
\	{'word': '-verbose', 'menu': ''},
\	]

let b:platform = [
\	{'word': 'generic', 'menu': ''},
\	{'word': 'identify', 'menu': ''},
\	{'word': 'patterns', 'menu': 'identifier'},
\	]

let b:regexp = [
\	{'word': '-about', 'menu': ''},
\	{'word': '-expanded', 'menu': ''},
\	{'word': '-indices', 'menu': ''},
\	{'word': '-line', 'menu': ''},
\	{'word': '-linestop', 'menu': ''},
\	{'word': '-lineanchor', 'menu': ''},
\	{'word': '-nocase', 'menu': ''},
\	{'word': '-all', 'menu': ''},
\	{'word': '-inline', 'menu': ''},
\	{'word': '-start', 'menu': 'index'},
\	]

let b:registry = [
\	{'word': 'broadcast', 'menu': 'keyName -timeout milliseconds'},
\	{'word': 'delete', 'menu': 'keyName valueName'},
\	{'word': 'get', 'menu': 'keyName valueName'},
\	{'word': 'keys', 'menu': 'keyName pattern'},
\	{'word': 'set', 'menu': 'keyName valueName data type'},
\	{'word': 'type', 'menu': 'keyName valueName'},
\	{'word': 'values', 'menu': 'keyName pattern'},
\	]

let b:regsub = [
\	{'word': '-all', 'menu': ''},
\	{'word': '-expanded', 'menu': ''},
\	{'word': '-line', 'menu': ''},
\	{'word': '-linestop', 'menu': ''},
\	{'word': '-lineanchor', 'menu': ''},
\	{'word': '-nocase', 'menu': ''},
\	{'word': '-start', 'menu': 'index'},
\	]

let b:return = [
\	{'word': '-errorcode', 'menu': 'list'},
\	{'word': '-errorinfo', 'menu': 'info'},
\	{'word': '-level', 'menu': 'level'},
\	{'word': '-options', 'menu': 'options'},
\	]

let b:safe = [
\	{'word': 'interpCreate', 'menu': 'slave options...'},
\	{'word': 'interpInit', 'menu': 'slave options...'},
\	{'word': 'interpConfigure', 'menu': 'slave options...'},
\	{'word': 'interpDelete', 'menu': 'slave'},
\	{'word': 'interpFindInAccessPath', 'menu': 'slave directory'},
\	{'word': 'interpAddToAccessPath', 'menu': 'slave directory'},
\	{'word': 'setLogCmd', 'menu': 'cmd arg...'},
\	]

let b:safe_ns_setLogCmd = [
\	{'word': '-accessPath', 'menu': 'directoryList'},
\	{'word': '-statics', 'menu': 'boolean'},
\	{'word': '-noStatics', 'menu': ''},
\	{'word': '-nested', 'menu': 'boolean'},
\	{'word': '-nestedLoadOk', 'menu': ''},
\	{'word': '-deleteHook', 'menu': 'script'},
\	]

let b:socket = [
\	{'word': '-myaddr', 'menu': 'addr'},
\	{'word': '-myport', 'menu': 'port'},
\	{'word': '-async', 'menu': ''},
\	{'word': '-error', 'menu': ''},
\	{'word': '-sockname', 'menu': ''},
\	{'word': '-peername', 'menu': ''},
\	]

let b:string = [
\	{'word': 'bytelength', 'menu': 'string'},
\	{'word': 'compare', 'menu': '-nocase -length int string1 string2'},
\	{'word': 'equal', 'menu': '-nocase -length int string1 string2'},
\	{'word': 'first', 'menu': 'needleString haystackString startIndex'},
\	{'word': 'index', 'menu': 'string charIndex'},
\	{'word': 'is', 'menu': 'class -strict -failindex varname string'},
\	{'word': 'last', 'menu': 'needleString haystackString lastIndex'},
\	{'word': 'length', 'menu': 'string'},
\	{'word': 'map', 'menu': '-nocase mapping string'},
\	{'word': 'match', 'menu': '-nocase pattern string'},
\	{'word': 'range', 'menu': 'string first last'},
\	{'word': 'repeat', 'menu': 'string count'},
\	{'word': 'replace', 'menu': 'string first last newstring'},
\	{'word': 'reverse', 'menu': 'string'},
\	{'word': 'tolower', 'menu': 'string first last'},
\	{'word': 'totitle', 'menu': 'string first last'},
\	{'word': 'toupper', 'menu': 'string first last'},
\	{'word': 'trim', 'menu': 'string chars'},
\	{'word': 'trimleft', 'menu': 'string chars'},
\	{'word': 'trimright', 'menu': 'string chars'},
\	{'word': 'wordend', 'menu': 'string charIndex'},
\	{'word': 'wordstart', 'menu': 'string charIndex'},
\	]

let b:switch = [
\	{'word': '-exact', 'menu': ''},
\	{'word': '-glob', 'menu': ''},
\	{'word': '-regexp', 'menu': ''},
\	{'word': '-nocase', 'menu': ''},
\	{'word': '-matchvar', 'menu': 'varName'},
\	{'word': '-indexvar', 'menu': 'varName'},
\	]

let b:tcltest = [
\	{'word': '-constraints', 'menu': 'list'},
\	{'word': '-setup', 'menu': 'script'},
\	{'word': '-body', 'menu': 'script'},
\	{'word': '-cleanup', 'menu': 'script'},
\	{'word': '-match', 'menu': 'patternList'},
\	{'word': '-result', 'menu': 'expectedValue'},
\	{'word': '-output', 'menu': 'expectedValue'},
\	{'word': '-errorOutput', 'menu': 'expectedValue'},
\	{'word': '-returnCodes', 'menu': 'expectedCodeList'},
\	{'word': '-singleproc', 'menu': 'boolean'},
\	{'word': '-debug', 'menu': 'level'},
\	{'word': '-verbose', 'menu': 'level'},
\	{'word': '-preservecore', 'menu': 'level'},
\	{'word': '-limitconstraints', 'menu': 'boolean'},
\	{'word': '-tmpdir', 'menu': 'directory'},
\	{'word': '-testdir', 'menu': 'directory'},
\	{'word': '-file', 'menu': 'patternList'},
\	{'word': '-notfile', 'menu': 'patternList'},
\	{'word': '-relateddir', 'menu': 'patternList'},
\	{'word': '-asidefromdir', 'menu': 'patternList'},
\	{'word': '-skip', 'menu': 'patternList'},
\	{'word': '-load', 'menu': 'script'},
\	{'word': '-loadfile', 'menu': 'filename'},
\	{'word': '-outfile', 'menu': 'filename'},
\	{'word': '-errfile', 'menu': 'filename'},
\	{'word': 'test', 'menu': 'name description optionList'},
\	{'word': 'loadTestedCommands', 'menu': ''},
\	{'word': 'makeDirectory', 'menu': 'name directory'},
\	{'word': 'removeDirectory', 'menu': 'name directory'},
\	{'word': 'makeFile', 'menu': 'contents name directory'},
\	{'word': 'removeFile', 'menu': 'name directory'},
\	{'word': 'viewFile', 'menu': 'name directory'},
\	{'word': 'cleanupTests', 'menu': 'runningMultipleTests'},
\	{'word': 'runAllTests', 'menu': ''},
\	{'word': 'configure', 'menu': 'option value option value ...'},
\	{'word': 'customMatch', 'menu': 'mode command'},
\	{'word': 'testConstraint', 'menu': 'constraint value'},
\	{'word': 'outputChannel', 'menu': 'channelID'},
\	{'word': 'errorChannel', 'menu': 'channelID'},
\	{'word': 'interpreter', 'menu': 'interp'},
\	{'word': 'debug', 'menu': 'level'},
\	{'word': 'errorFile', 'menu': 'filename'},
\	{'word': 'limitConstraints', 'menu': 'boolean'},
\	{'word': 'loadFile', 'menu': 'filename'},
\	{'word': 'loadScript', 'menu': 'script'},
\	{'word': 'match', 'menu': 'patternList'},
\	{'word': 'matchDirectories', 'menu': 'patternList'},
\	{'word': 'matchFiles', 'menu': 'patternList'},
\	{'word': 'outputFile', 'menu': 'filename'},
\	{'word': 'preserveCore', 'menu': 'level'},
\	{'word': 'singleProcess', 'menu': 'boolean'},
\	{'word': 'skip', 'menu': 'patternList'},
\	{'word': 'skipDirectories', 'menu': 'patternList'},
\	{'word': 'skipFiles', 'menu': 'patternList'},
\	{'word': 'temporaryDirectory', 'menu': 'directory'},
\	{'word': 'testsDirectory', 'menu': 'directory'},
\	{'word': 'verbose', 'menu': 'level'},
\	{'word': 'bytestring', 'menu': 'string'},
\	{'word': 'normalizeMsg', 'menu': 'msg'},
\	{'word': 'normalizePath', 'menu': 'pathVar'},
\	{'word': 'workingDirectory', 'menu': 'dir'},
\	]

let b:trace = [
\	{'word': 'add', 'menu': 'variable name ops commandPrefix'},
\	{'word': 'remove', 'menu': 'variable name opList commandPrefix'},
\	{'word': 'info', 'menu': 'variable name'},
\	{'word': 'variable', 'menu': 'name ops command'},
\	{'word': 'vdelete', 'menu': 'name ops command'},
\	{'word': 'vinfo', 'menu': 'name'},
\	]

let b:unload = [
\	{'word': '-nocomplain', 'menu': ''},
\	{'word': '-keeplibrary', 'menu': ''},
\	]

