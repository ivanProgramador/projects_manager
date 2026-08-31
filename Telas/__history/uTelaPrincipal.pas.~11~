unit uTelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  {trazendo o aruivo da unit para dento da view principal parar que ue possa usar
   a tela que foi declarada dentro do arquivo
  }
  uUsuarios;

type
  TfrmTelaPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    tmCadastros: TMenuItem;
    tmUsuarios: TMenuItem;
    procedure tmUsuariosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaPrincipal: TfrmTelaPrincipal;

implementation

{$R *.dfm}



procedure TfrmTelaPrincipal.tmUsuariosClick(Sender: TObject);

begin

  {definindo uma instancia da classe e usando o meotod crate dela no onclick }

  frmUsuarios := TfrmUsuarios.Create(Self);

   {aqui eu tento mostrar os formulario quando o onclick for acionado}

    try

      frmUsuarios.ShowModal;

    finally
      {se não der certo ele limpa a amemoria que o objeto estava usando }

      FreeAndNil(frmUsuarios);

    end;
end;

end.
