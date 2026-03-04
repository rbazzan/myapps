unit uModel;

interface

uses
  System.SysUtils, System.Classes, REST.Types, REST.Client,
   System.JSON, System.Variants,
  Data.Bind.Components, Data.Bind.ObjectScope, Data.DB,
  FireDAC.Comp.Client,

  uConversor,
  uEndpoints;

type
  //Controller ◄-► Model
  TModelo = class(TDataModule)
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
  private
    { Private declarations }
    function Execute(Endpoint,Json: String; Method: TRESTRequestMethod): String;overload;
    function Execute(Endpoint:String; Method: TRESTRequestMethod): String;overload;
  public
    { Public declarations }
    function POST(EndPoint: TPEndpoint;Json: String): String;
    function GET(EndPoint: TPEndpoint): String; overload;
    function GET(EndPoint: TPEndpoint;Params: String): String; overload;
    function PUT(EndPoint: TPEndpoint;Json: String): String;
    function DELETE(EndPoint: TPEndpoint;Params: String): String;
  end;

var
  Modelo: TModelo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


{ TModelo }

function TModelo.Execute(Endpoint: String; Method: TRESTRequestMethod): String;
begin
   (* Faz o pedido sem parâmetro *)
   RESTClient.BaseURL := Endpoint;
   RESTRequest.Method := Method;
   RESTRequest.Body.ClearBody;
   RESTRequest.Execute;
   Result := RESTResponse.Content;
end;

function TModelo.Execute(Endpoint, Json: String; Method: TRESTRequestMethod): String;
begin
   (* Faz o pedido com parâmetro *)
   RESTClient.BaseURL := Endpoint;
   RESTRequest.Method := Method;
   RESTRequest.Body.ClearBody;
   RESTRequest.Body.Add(Json, ctAPPLICATION_JSON);
   RESTRequest.Execute;
   Result := RESTResponse.Content;
end;

(* Faz todos os Get's sem parametro *)
function TModelo.GET(EndPoint: TPEndpoint): String;
begin
   Result := Execute(GetEndPoint(EndPoint),rmGET);
end;

(* Faz todos os Get's com parametro *)
function TModelo.GET(EndPoint: TPEndpoint;Params: String): String;
begin
   Result := Execute(GetEndPoint(EndPoint) + '/' + Params,rmGET);
end;

(* Faz todos os Insert's passando o Json *)
function TModelo.POST(EndPoint: TPEndpoint; Json: String): String;
begin
   Result := Execute(GetEndPoint(EndPoint) + '/' + Json,rmPOST);
end;

(* Faz todos os Updates's passando o Json *)
function TModelo.PUT(EndPoint: TPEndpoint; Json: String): String;
begin
   Result := Execute(GetEndPoint(EndPoint) + '/' + Json,rmPUT);
end;

(* Faz todos os Delete's passando o id do registro *)
function TModelo.DELETE(EndPoint: TPEndpoint;Params: String): String;
begin
   Result := Execute(GetEndPoint(EndPoint) + '/' + Params,rmDELETE);
end;

end.
