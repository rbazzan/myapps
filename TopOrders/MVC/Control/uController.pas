unit uController;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,

  uModel;

type
  TController = class(TComponent)
  private
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

  end;

implementation


{ TController }

constructor TController.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TController.Destroy;
begin

  inherited;
end;

end.
