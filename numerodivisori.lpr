program numerodivisori;

{$mode objfpc}{$H+}

uses
MyMath,stampa, Mytype;
var
  conta,n,istampa:longint;
  File_out:textfile;

{$R *.res}

begin
  AssignFile(File_out,MyType_Tex_Fname_Num_Divisori);
  Rewrite(File_out);
  Stampa_stampatitolo(File_out,'Numero divisori','A000005');
  Stampa_stampauno_Semplificata(File_out,'Numero divisori',MyType_Max_Riga);
  istampa:=1;
  for n:=1 to MyType_Max_Numero do
    begin
      conta:=MyMathThau(n);
  //    writeln(n,'  ',conta);

        if istampa <MyType_Max_Riga
  then
      begin
           istampa:=istampa+1;
           write(File_out,conta,'&');
      end
  else
      begin
           istampa:=1;
           writeln(File_out,conta,'\\');
      end;
end;
  if istampa<>1 then   writeln(File_out,'\\');

   Stampa_chiusuralong(File_out);
  CloseFile(File_out);
end.

