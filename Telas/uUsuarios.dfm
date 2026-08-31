object frmUsuarios: TfrmUsuarios
  Left = 0
  Top = 0
  Caption = 'CADASTRO DE USUARIOS'
  ClientHeight = 249
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object lblNome: TJvLabel
    Left = 16
    Top = 24
    Width = 53
    Height = 21
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -16
    HotTrackFont.Name = 'Segoe UI'
    HotTrackFont.Style = []
  end
  object lblLogin: TJvLabel
    Left = 16
    Top = 53
    Width = 49
    Height = 21
    Caption = 'Login:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -16
    HotTrackFont.Name = 'Segoe UI'
    HotTrackFont.Style = []
  end
  object JvLabel1: TJvLabel
    Left = 16
    Top = 82
    Width = 53
    Height = 21
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -16
    HotTrackFont.Name = 'Segoe UI'
    HotTrackFont.Style = []
  end
  object lblTipo: TJvLabel
    Left = 16
    Top = 130
    Width = 40
    Height = 21
    Caption = 'Tipo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -16
    HotTrackFont.Name = 'Segoe UI'
    HotTrackFont.Style = []
  end
  object edtNome: TJvEdit
    Left = 88
    Top = 24
    Width = 121
    Height = 23
    TabOrder = 0
    Text = ''
  end
  object edtLogin: TJvEdit
    Left = 88
    Top = 53
    Width = 121
    Height = 23
    TabOrder = 1
    Text = ''
  end
  object edtSenha: TJvEdit
    Left = 88
    Top = 82
    Width = 121
    Height = 23
    TabOrder = 2
    Text = ''
  end
  object cboTipo: TJvComboBox
    Left = 88
    Top = 128
    Width = 121
    Height = 23
    Style = csDropDownList
    TabOrder = 3
    Text = 'USUARIO'
    Items.Strings = (
      'GESTOR'
      'USUARIO')
    ItemIndex = 1
  end
  object btnCadastrar: TJvBitBtn
    Left = 16
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 4
    OnClick = btnCadastrarClick
  end
  object btnAtualizar: TJvBitBtn
    Left = 239
    Top = 176
    Width = 146
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 5
  end
  object JvBitBtn2: TJvBitBtn
    Left = 430
    Top = 176
    Width = 146
    Height = 25
    Caption = 'Excluir'
    TabOrder = 6
  end
  object gridUsuarios: TJvDrawGrid
    Left = 239
    Top = 24
    Width = 337
    Height = 120
    TabOrder = 7
    OnDrawCell = gridUsuariosDrawCell
    DrawButtons = False
    ColWidths = (
      64
      64
      64
      64
      73)
  end
end
