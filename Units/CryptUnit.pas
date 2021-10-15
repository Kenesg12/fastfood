unit CryptUnit;

interface

function Encrypt(What: String): String;
function DeCrypt(What: String): String;
const
 key: string = 'sh6asqz9k';


implementation

function Encrypt(What: String): String;
var i,j,sim,ki:integer;
begin
ki:=0;
Result:='';
for i:=1 to length(What) do     //Öèêë øèôğîàâíèÿ
  Begin
   if ki=length(key) then ki:=1 else ki:=ki+1;
   sim:=byte(What[i]);
    for j := 0 to ki do
     sim:=(sim+j) xor byte(key[ki]);
    Result:=Result+Chr(sim);     //À ÂÎÒ ÑÄÅÑÜ ÓÆÅ ØÈÔÓĞÅÌ İÒÎÒ ÑÈÌÂÎË
  End;
    
end;

function DeCrypt(What: String): String;
var i,ki,j,sim:Integer;
begin
   Result:='';
   ki:=0;
 for I := 1 to Length(What) do
  begin
    if ki=Length(key) then ki:=1 else ki:=ki+1;
    sim:=byte(What[i]);
    for j := ki downto 0 do
      sim:=(sim xor byte(key[ki]))-j;
    Result:=Result+Chr(sim);  //ÂÎÒ ÑÄÅÑÜ ÓÆÅ ÄÅØÈÔÓĞÅÌ ÊÀÆÄÛÉ ÑÈÌÂÎË
  end;   
end;
end.
