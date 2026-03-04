unit uController;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,

  uModel,
  uEndpoints;

type
  TController = class(TComponent)
  private
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    { Public declarations }
    function POST(EndPoint: TPEndpoint;Json: String): String;
    function GET(EndPoint: TPEndpoint): String; overload;
    function GET(EndPoint: TPEndpoint;Params: String): String; overload;
    function PUT(EndPoint: TPEndpoint;Json: String): String;
    function DELETE(EndPoint: TPEndpoint;Params: String): String;
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

(*****************************************************************************
 * O Controller faz a conexão entre as views e o modulo de dados! A View não *
 * sabe quem é o fornecedor de dados 'uModel', só o Controller sabe.         *
 * E vise versa, o uModel também não conhece nenuma view, o fluxo fica dessa *
 * forma [View ◄-► Controller ◄-► Model]                                     *
 *****************************************************************************
 * MÉTODOS DE ACESSO AO MODELO DE DADOS - unit uModel.pas                    *
 * Recebe por eles o que a view pedir, e pede para o "Model.<metodo>"        *
 * devolvendo o resultado para a view pelo "result".                         *
 *****************************************************************************)
function TController.GET(EndPoint: TPEndpoint): String;
begin
  Result := Modelo.GET(EndPoint);
end;

function TController.GET(EndPoint: TPEndpoint; Params: String): String;
begin
  Result := Modelo.GET(EndPoint,Params);
end;

function TController.POST(EndPoint: TPEndpoint; Json: String): String;
begin
  Result := Modelo.POST(EndPoint,Json);
end;

function TController.PUT(EndPoint: TPEndpoint; Json: String): String;
begin
  Result := Modelo.PUT(EndPoint,Json);
end;

function TController.DELETE(EndPoint: TPEndpoint; Params: String): String;
begin
  Result := Modelo.DELETE(EndPoint,Params);
end;
(*****************************************************************************)

end.
