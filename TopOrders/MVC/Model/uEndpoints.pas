unit uEndpoints;

interface

type
  TPEndpoint = (
                tpProduto_Post,
                tpProduto_Get,
                tpProduto_Put,
                tpProduto_Delete
                );

const
  URL_EndPoint   = 'https://localhosto:5372';

  Produto_Post   = '/produto';
  Produto_Get    = '/produto';
  Produto_Put    = '/produto';
  Produto_Delete = '/produto';

  function GetEndpoint(Endpoint: TPEndpoint): String;

implementation

function GetEndpoint(Endpoint: TPEndpoint): String;
begin
   case Endpoint of
       tpProduto_Post: Result := Produto_Post;
        tpProduto_Get: Result := Produto_Get;
        tpProduto_Put: Result := Produto_Put;
     tpProduto_Delete: Result := Produto_Delete;
   end;

   Result := URL_EndPoint + '/' + Result;
end;

end.
