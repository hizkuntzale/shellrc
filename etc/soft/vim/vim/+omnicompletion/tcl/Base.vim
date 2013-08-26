let b:default = [
\	{'word': 'bell', 'menu': '[Tk]     Ring a displays bell'},
\	{'word': 'bind', 'menu': '[Tk]     Arrange for X events to invoke Tcl scripts'},
\	{'word': 'bindtags', 'menu': '[Tk]     Determine which bindings apply to a window, and order of evaluation'},
\	{'word': 'bitmap', 'menu': '[Tk]     Images that display two colors'},
\	{'word': 'button', 'menu': '[Tk]     Create and manipulate button widgets'},
\	{'word': 'canvas', 'menu': '[Tk]     Create and manipulate canvas widgets'},
\	{'word': 'checkbutton', 'menu': '[Tk]     Create and manipulate checkbutton widgets'},
\	{'word': 'clipboard', 'menu': '[Tk]     Manipulate Tk clipboard'},
\	{'word': 'colors', 'menu': '[Tk]     symbolic color names recognized by Tk'},
\	{'word': 'console', 'menu': '[Tk]     Control the console on systems without a real console'},
\	{'word': 'cursors', 'menu': '[Tk]     mouse cursors available in Tk'},
\	{'word': 'destroy', 'menu': '[Tk]     Destroy one or more windows'},
\	{'word': 'entry', 'menu': '[Tk]     Create and manipulate entry widgets'},
\	{'word': 'event', 'menu': '[Tk]     Miscellaneous event facilities: define virtual events and generate events'},
\	{'word': 'focus', 'menu': '[Tk]     Manage the input focus'},
\	{'word': 'font', 'menu': '[Tk]     Create and inspect fonts.'},
\	{'word': 'frame', 'menu': '[Tk]     Create and manipulate frame widgets'},
\	{'word': 'grab', 'menu': '[Tk]     Confine pointer and keyboard events to a window sub-tree'},
\	{'word': 'grid', 'menu': '[Tk]     Geometry manager that arranges widgets in a grid'},
\	{'word': 'image', 'menu': '[Tk]     Create and manipulate images'},
\	{'word': 'keysyms', 'menu': '[Tk]     keysyms recognized by Tk'},
\	{'word': 'label', 'menu': '[Tk]     Create and manipulate label widgets'},
\	{'word': 'labelframe', 'menu': '[Tk]     Create and manipulate labelframe widgets'},
\	{'word': 'listbox', 'menu': '[Tk]     Create and manipulate listbox widgets'},
\	{'word': 'loadTk', 'menu': '[Tk]     Load Tk into a safe interpreter.'},
\	{'word': 'lower', 'menu': '[Tk]     Change a windows position in the stacking order'},
\	{'word': 'menubutton', 'menu': '[Tk]     Create and manipulate menubutton widgets'},
\	{'word': 'message', 'menu': '[Tk]     Create and manipulate message widgets'},
\	{'word': 'option', 'menu': '[Tk]     Add/retrieve window options to/from the option database'},
\	{'word': 'options', 'menu': '[Tk]     Standard options supported by widgets'},
\	{'word': 'pack', 'menu': '[Tk]     Geometry manager that packs around edges of cavity'},
\	{'word': 'panedwindow', 'menu': '[Tk]     Create and manipulate panedwindow widgets'},
\	{'word': 'photo', 'menu': '[Tk]     Full-color images'},
\	{'word': 'place', 'menu': '[Tk]     Geometry manager for fixed or rubber-sheet placement'},
\	{'word': 'radiobutton', 'menu': '[Tk]     Create and manipulate radiobutton widgets'},
\	{'word': 'raise', 'menu': '[Tk]     Change a windows position in the stacking order'},
\	{'word': 'scale', 'menu': '[Tk]     Create and manipulate scale widgets'},
\	{'word': 'scrollbar', 'menu': '[Tk]     Create and manipulate scrollbar widgets'},
\	{'word': 'selection', 'menu': '[Tk]     Manipulate the X selection'},
\	{'word': 'send', 'menu': '[Tk]     Execute a command in a different application'},
\	{'word': 'spinbox', 'menu': '[Tk]     Create and manipulate spinbox widgets'},
\	{'word': 'tk', 'menu': '[Tk]     Manipulate Tk internal state'},
\	{'word': 'tkerror', 'menu': '[Tk]     Command invoked to process background errors'},
\	{'word': 'tkvars', 'menu': '[Tk]     Variables used or set by Tk'},
\	{'word': 'tkwait', 'menu': '[Tk]     Wait for variable to change or window to be destroyed'},
\	{'word': 'toplevel', 'menu': '[Tk]     Create and manipulate toplevel widgets'},
\	{'word': 'ttk_image', 'menu': '[Tk]     Define an element based on an image'},
\	{'word': 'ttk_vsapi', 'menu': '[Tk]     Define a Microsoft Visual Styles element'},
\	{'word': 'winfo', 'menu': '[Tk]     Return window-related information'},
\	{'word': 'wm', 'menu': '[Tk]     Communicate with window manager'},
\	{'word': 'after', 'menu': '[Tcl]    Execute a command after a time delay'},
\	{'word': 'append', 'menu': '[Tcl]    Append to variable'},
\	{'word': 'apply', 'menu': '[Tcl]    Apply an anonymous function'},
\	{'word': 'array', 'menu': '[Tcl]    Manipulate array variables'},
\	{'word': 'bgerror', 'menu': '[Tcl]    Command invoked to process background errors'},
\	{'word': 'binary', 'menu': '[Tcl]    Insert and extract fields from binary strings'},
\	{'word': 'break', 'menu': '[Tcl]    Abort looping command'},
\	{'word': 'catch', 'menu': '[Tcl]    Evaluate script and trap exceptional returns'},
\	{'word': 'cd', 'menu': '[Tcl]    Change working directory'},
\	{'word': 'chan', 'menu': '[Tcl]    Read, write and manipulate channels'},
\	{'word': 'clock', 'menu': '[Tcl]    Obtain and manipulate dates and times'},
\	{'word': 'close', 'menu': '[Tcl]    Close an open channel'},
\	{'word': 'concat', 'menu': '[Tcl]    Join lists together'},
\	{'word': 'continue', 'menu': '[Tcl]    Skip to the next iteration of a loop'},
\	{'word': 'dde', 'menu': '[Tcl]    Execute a Dynamic Data Exchange command'},
\	{'word': 'dict', 'menu': '[Tcl]    Manipulate dictionaries'},
\	{'word': 'encoding', 'menu': '[Tcl]    Manipulate encodings'},
\	{'word': 'eof', 'menu': '[Tcl]    Check for end of file condition on channel'},
\	{'word': 'error', 'menu': '[Tcl]    Generate an error'},
\	{'word': 'eval', 'menu': '[Tcl]    Evaluate a Tcl script'},
\	{'word': 'exec', 'menu': '[Tcl]    Invoke subprocesses'},
\	{'word': 'exit', 'menu': '[Tcl]    End the application'},
\	{'word': 'expr', 'menu': '[Tcl]    Evaluate an expression'},
\	{'word': 'fblocked', 'menu': '[Tcl]    Test whether the last input operation exhausted all available input'},
\	{'word': 'fconfigure', 'menu': '[Tcl]    Set and get options on a channel'},
\	{'word': 'fcopy', 'menu': '[Tcl]    Copy data from one channel to another'},
\	{'word': 'file', 'menu': '[Tcl]    Manipulate file names and attributes'},
\	{'word': 'fileevent', 'menu': '[Tcl]    Execute a script when a channel becomes readable or writable'},
\	{'word': 'filename', 'menu': '[Tcl]    File name conventions supported by Tcl commands'},
\	{'word': 'flush', 'menu': '[Tcl]    Flush buffered output for a channel'},
\	{'word': 'for', 'menu': '[Tcl]    For loop'},
\	{'word': 'foreach', 'menu': '[Tcl]    Iterate over all elements in one or more lists'},
\	{'word': 'format', 'menu': '[Tcl]    Format a string in the style of sprintf'},
\	{'word': 'gets', 'menu': '[Tcl]    Read a line from a channel'},
\	{'word': 'glob', 'menu': '[Tcl]    Return names of files that match patterns'},
\	{'word': 'global', 'menu': '[Tcl]    Access global variables'},
\	{'word': 'history', 'menu': '[Tcl]    Manipulate the history list'},
\	{'word': 'http', 'menu': '[Tcl]    Client-side implementation of the HTTP/1.1 protocol'},
\	{'word': 'if', 'menu': '[Tcl]    Execute scripts conditionally'},
\	{'word': 'incr', 'menu': '[Tcl]    Increment the value of a variable'},
\	{'word': 'info', 'menu': '[Tcl]    Return information about the state of the Tcl interpreter'},
\	{'word': 'interp', 'menu': '[Tcl]    Create and manipulate Tcl interpreters'},
\	{'word': 'join', 'menu': '[Tcl]    Create a string by joining together list elements'},
\	{'word': 'lappend', 'menu': '[Tcl]    Append list elements onto a variable'},
\	{'word': 'lassign', 'menu': '[Tcl]    Assign list elements to variables'},
\	{'word': 'lindex', 'menu': '[Tcl]    Retrieve an element from a list'},
\	{'word': 'linsert', 'menu': '[Tcl]    Insert elements into a list'},
\	{'word': 'list', 'menu': '[Tcl]    Create a list'},
\	{'word': 'llength', 'menu': '[Tcl]    Count the number of elements in a list'},
\	{'word': 'load', 'menu': '[Tcl]    Load machine code and initialize new commands'},
\	{'word': 'lrange', 'menu': '[Tcl]    Return one or more adjacent elements from a list'},
\	{'word': 'lrepeat', 'menu': '[Tcl]    Build a list by repeating elements'},
\	{'word': 'lreplace', 'menu': '[Tcl]    Replace elements in a list with new elements'},
\	{'word': 'lreverse', 'menu': '[Tcl]    Reverse the order of a list'},
\	{'word': 'lsearch', 'menu': '[Tcl]    See if a list contains a particular element'},
\	{'word': 'lset', 'menu': '[Tcl]    Change an element in a list'},
\	{'word': 'lsort', 'menu': '[Tcl]    Sort the elements of a list'},
\	{'word': 'mathfunc', 'menu': '[Tcl]    Mathematical functions for Tcl expressions'},
\	{'word': 'mathop', 'menu': '[Tcl]    Mathematical operators as Tcl commands'},
\	{'word': 'memory', 'menu': '[Tcl]    Control Tcl memory debugging capabilities'},
\	{'word': 'msgcat', 'menu': '[Tcl]    Tcl message catalog'},
\	{'word': 'namespace', 'menu': '[Tcl]    create and manipulate contexts for commands and variables'},
\	{'word': 'open', 'menu': '[Tcl]    Open a file-based or command pipeline channel'},
\	{'word': 'package', 'menu': '[Tcl]    Facilities for package loading and version control'},
\	{'word': 'pid', 'menu': '[Tcl]    Retrieve process identifiers'},
\	{'word': 'platform', 'menu': '[Tcl]    System identification support code and utilities'},
\	{'word': 'proc', 'menu': '[Tcl]    Create a Tcl procedure'},
\	{'word': 'puts', 'menu': '[Tcl]    Write to a channel'},
\	{'word': 'pwd', 'menu': '[Tcl]    Return the absolute path of the current working directory'},
\	{'word': 're_syntax', 'menu': '[Tcl]    Syntax of Tcl regular expressions'},
\	{'word': 'read', 'menu': '[Tcl]    Read from a channel'},
\	{'word': 'refchan', 'menu': '[Tcl]    Command handler API of reflected channels, version 1'},
\	{'word': 'regexp', 'menu': '[Tcl]    Match a regular expression against a string'},
\	{'word': 'registry', 'menu': '[Tcl]    Manipulate the Windows registry'},
\	{'word': 'regsub', 'menu': '[Tcl]    Perform substitutions based on regular expression pattern matching'},
\	{'word': 'rename', 'menu': '[Tcl]    Rename or delete a command'},
\	{'word': 'return', 'menu': '[Tcl]    Return from a procedure, or set return code of a script'},
\	{'word': 'scan', 'menu': '[Tcl]    Parse string using conversion specifiers in the style of sscanf'},
\	{'word': 'seek', 'menu': '[Tcl]    Change the access position for an open channel'},
\	{'word': 'set', 'menu': '[Tcl]    Read and write variables'},
\	{'word': 'socket', 'menu': '[Tcl]    Open a TCP network connection'},
\	{'word': 'source', 'menu': '[Tcl]    Evaluate a file or resource as a Tcl script'},
\	{'word': 'split', 'menu': '[Tcl]    Split a string into a proper Tcl list'},
\	{'word': 'string', 'menu': '[Tcl]    Manipulate strings'},
\	{'word': 'subst', 'menu': '[Tcl]    Perform backslash, command, and variable substitutions'},
\	{'word': 'switch', 'menu': '[Tcl]    Evaluate one of several scripts, depending on a given value'},
\	{'word': 'Tcl', 'menu': '[Tcl]    Tool Command Language'},
\	{'word': 'tcltest', 'menu': '[Tcl]    Test harness support code and utilities'},
\	{'word': 'tclvars', 'menu': '[Tcl]    Variables used by Tcl'},
\	{'word': 'tell', 'menu': '[Tcl]    Return current access position for an open channel'},
\	{'word': 'time', 'menu': '[Tcl]    Time the execution of a script'},
\	{'word': 'tm', 'menu': '[Tcl]    Facilities for locating and loading of Tcl Modules'},
\	{'word': 'trace', 'menu': '[Tcl]    Monitor variable accesses, command usages and command executions'},
\	{'word': 'unknown', 'menu': '[Tcl]    Handle attempts to use non-existent commands'},
\	{'word': 'unload', 'menu': '[Tcl]    Unload machine code'},
\	{'word': 'unset', 'menu': '[Tcl]    Delete variables'},
\	{'word': 'update', 'menu': '[Tcl]    Process pending events and idle callbacks'},
\	{'word': 'uplevel', 'menu': '[Tcl]    Execute a script in a different stack frame'},
\	{'word': 'upvar', 'menu': '[Tcl]    Create link to variable in a different stack frame'},
\	{'word': 'variable', 'menu': '[Tcl]    create and initialize a namespace variable'},
\	{'word': 'vwait', 'menu': '[Tcl]    Process events until a variable is written'},
\	{'word': 'while', 'menu': '[Tcl]    Execute script repeatedly as long as a condition is met'},
\	]

