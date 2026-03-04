unit uAppMessage;

interface

uses Forms, Windows;

   function AppMsgYesNoCancel(MSG: String): Integer;
   function AppMsgYesNo(MSG: String): Boolean;
   function AppMsgOKCancel(MSG: String): Boolean;
   procedure AppMsgOK(MSG: String);
   procedure AppMsgError(MSG: String);

implementation

function AppMsgYesNoCancel(MSG: String): Integer;
begin
   Result := Application.MessageBox(Pchar(MSG),PChar(Application.Title),
            MB_ICONQUESTION + MB_DEFBUTTON1 + MB_YESNOCANCEL);
end;

function AppMsgYesNo(MSG: String): Boolean;
begin
   Result := Application.MessageBox(Pchar(MSG),PChar(Application.Title),
            MB_ICONQUESTION + MB_DEFBUTTON2 + MB_YESNO) = IDYES;
end;

procedure AppMsgOK(MSG: String);
begin
   Application.MessageBox(Pchar(MSG),PChar(Application.Title),
      MB_ICONINFORMATION + MB_OK);
end;

function AppMsgOKCancel(MSG: String):Boolean;
begin
   Result := Application.MessageBox(Pchar(MSG),PChar(Application.Title),
         MB_ICONINFORMATION + MB_OKCANCEL) = IDOK;
end;

procedure AppMsgError(MSG: String);
begin
   Application.MessageBox(Pchar(MSG),PChar(Application.Title),
      MB_ICONERROR + MB_OK);
end;

end.
