SyntaxHighlighter.brushes.Tcl = function()
{
	// Copyright 2010 jtuki. http://jtuki.blogspot.com/
	// Note:
	// 	Just a simple Tcl brush for SyntaxHighlighter.
	
	var keywords =	'source package require ' +
			'set unset proc namespace return variable ' +
			'if elseif else switch ' +
			'while foreach for break continue ' +
			'error catch exec incr ' +
			'eval upvar uplevel info interp after vwait ' +
			'time trace binary scan';
					
	var commands =	'expr format ' +
			'string array list lindex llength lrange lreplace lsort ' +
			'regexp regsub subst ' +
			'file tell seek join split open close ' +
			'puts gets read';

	var subcommands = 'cancel idle info anymore donesearch exists names' +
			'nextelement startsearch size -maxlen -wrapchar -strict' +
			'match unknown provide';

	this.regexList = [
		{ regex: /#.*$/gm, css: 'comments' },
		{ regex: /\$\w+/gm, css: 'value' },
		{ regex: SyntaxHighlighter.regexLib.doubleQuotedString, css: 'string' },
		{ regex: new RegExp(this.getKeywords(keywords), 'gm'), css: 'keyword' },
		{ regex: new RegExp(this.getKeywords(commands), 'gm'), css: 'functions' },
		{ regex: new RegExp(this.getKeywords(subcommands), 'gm'), css: 'color1' },
		{ regex: /\+|\|\||&&|-|\*|\//gm, css: 'constants bold' },
		{ regex: /\d/gm, css: 'constants' }
		];
};

SyntaxHighlighter.brushes.Tcl.prototype = new SyntaxHighlighter.Highlighter();
SyntaxHighlighter.brushes.Tcl.aliases = ['Tcl', 'tcl'];
