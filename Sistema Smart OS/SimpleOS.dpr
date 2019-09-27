program SimpleOS;

uses
  System.StartUpCopy,
  FMX.Forms,
  Form.Principal in 'Forms\Form.Principal.pas' {formPrincipal},
  modulo.conexao in 'DataModule\modulo.conexao.pas' {modulo_conexao: TDataModule},
  UClasse.Log.Erro in 'Classes\UClasse.Log.Erro.pas',
  UClasse.Query in 'Classes\UClasse.Query.pas',
  Interfaces in 'Classes\Interfaces\Interfaces.pas',
  UClasse.Entity.Modelo in 'Classes\Entity\UClasse.Entity.Modelo.pas',
  UClasse.Entity.Modelo.Table in 'Classes\Entity\UClasse.Entity.Modelo.Table.pas',
  UCapturar.Erros in 'Biblioteca\UCapturar.Erros.pas',
  UClasse.Calcular.Juros in 'Biblioteca\UClasse.Calcular.Juros.pas',
  UClasse.ObertValorPorExtenso in 'Biblioteca\UClasse.ObertValorPorExtenso.pas',
  UClasse.Obter.Data.Hora.PorExtenso in 'Biblioteca\UClasse.Obter.Data.Hora.PorExtenso.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(Tmodulo_conexao, modulo_conexao);
  Application.Run;
end.
