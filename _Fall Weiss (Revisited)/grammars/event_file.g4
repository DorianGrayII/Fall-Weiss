grammar event_file;

event_list : event* EOF;

event : LINE_COMMENT* event_start statement_list event_end;

LeftParen:    '(';
RightParen:   ')';
LeftBracket:  '[';
RightBracket: ']';
LeftBrace:    '{';
RightBrace:   '}';

HASH: '#';
EQ:   '=';
fragment SEMICOLON: ';';

NEWLINE : [\r\n]+ -> skip;
Newline : ('\r' '\n'? | '\n') -> skip;

event_start : LeftBrace NEWLINE;
event_end : RightBrace NEWLINE;

INTEGER : [0-9]+;
DecNumber :  '0' | NonZeroDecDigit DecDigit*;
NonZeroDecDigit: [1-9];
DecDigit       : [0-9];

LINE_COMMENT : SEMICOLON (~ [\n\r])* -> skip;

EOL : ('\r' '\n' | '\n' | '\r');
/*
WS  : [ \r\n\t]+ -> skip;
*/
WS: [ \t]+ -> skip;


statement_list : statement*;

statement: LINE_COMMENT |
           name_statement |
           popup_statement |
           image_statement |
           sound_statement |
           flag_statement |
           type_statement |
           ai_statement |
           level_statement |
           gv_statement |
           link_statement |
           trigger_statement |
           country_statement |
           display_statement |
           decision_statement;

name_statement  : HASH 'NAME' EQ WS event_name;
popup_statement : HASH 'POPUP' EQ WS popup_msg;
image_statement : HASH 'IMAGE' EQ WS image_name;
sound_statement : HASH 'SOUND' EQ WS sound_name;
flag_statement  : HASH 'FLAG' EQ WS bool_number EOL;
type_statement  : HASH 'TYPE' EQ WS type_number EOL;
ai_statement    : HASH 'AI' EQ WS ai_number EOL;
level_statement : HASH 'LEVEL' EQ WS level_number EOL;
gv_statement    : HASH 'GV' EQ WS '[' gv_min ',' gv_max ']' EOL;
link_statement  : HASH 'LINK' EQ WS link_number '[' bool_number ']' EOL;
trigger_statement : HASH 'TRIGGER' EQ WS trigger_number EOL;
country_statement : HASH 'COUNTRY_ID' EQ WS country_id EOL;
display_statement : HASH 'DISPLAY_ORDER' EQ WS bool_number EOL;
decision_statement: HASH 'DECISION' EQ WS decision_number EOL;

decision_number : ( DecDigit ) | ( NonZeroDecDigit DecDigit ) | ( NonZeroDecDigit DecDigit DecDigit );
country_id : ( DecDigit ) | ( NonZeroDecDigit DecDigit ) | ( NonZeroDecDigit DecDigit DecDigit );
trigger_number : ( DecDigit ) | ( NonZeroDecDigit DecDigit ) | '100';
bool_number : '0' | '1';
link_number : DecNumber;
gv_min : ( DecDigit ) | ( NonZeroDecDigit DecDigit );
gv_max : ( DecDigit ) | ( NonZeroDecDigit DecDigit ) | '100';
level_number : '-1' | '0' | '1' | '2' | '3' | '4';
ai_number    : '0' | '1' | '2' | '3' | '4' | '5' | '6';
type_number  : '0' | '1' | '2' | '3';
sound_name : string;
image_name : string;
popup_msg : string;
event_name : string;
string : STRING? EOL;

STRING : [a-zA-Z0-9,;:'.* \t!<>{}()[\]@?=_"`+\-/#%$^]+;