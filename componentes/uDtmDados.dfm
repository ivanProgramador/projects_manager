object dtmDados: TdtmDados
  Height = 292
  Width = 640
  object AdoConexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Aa123456;Persist Security Info=True' +
      ';User ID=sa;Initial Catalog=projects_manager;Data Source=127.0.0' +
      '.1'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 24
  end
  object qryUsuarios: TADOQuery
    Connection = AdoConexao
    Parameters = <>
    Left = 136
    Top = 24
  end
  object dsUsuarios: TDataSource
    DataSet = qrySelectUsuarios
    Left = 232
    Top = 24
  end
  object qrySelectUsuarios: TADOQuery
    Active = True
    Connection = AdoConexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      '  id_colaborador,'
      '  codigo_colaborador,'
      '  nome_colaborador,'
      '  email_colaborador,'
      '  cargo_colaborador,'
      '  situacao_colaborador'
      ''
      ' FROM dbo.colaboradores')
    Left = 336
    Top = 24
    object qrySelectUsuarioscodigo_colaborador: TIntegerField
      FieldName = 'codigo_colaborador'
    end
    object qrySelectUsuariosnome_colaborador: TStringField
      FieldName = 'nome_colaborador'
      Size = 80
    end
    object qrySelectUsuariosemail_colaborador: TStringField
      FieldName = 'email_colaborador'
      Size = 80
    end
    object qrySelectUsuarioscargo_colaborador: TStringField
      FieldName = 'cargo_colaborador'
      Size = 80
    end
    object qrySelectUsuariossituacao_colaborador: TStringField
      FieldName = 'situacao_colaborador'
      Size = 80
    end
    object qrySelectUsuariosid_colaborador: TAutoIncField
      FieldName = 'id_colaborador'
      ReadOnly = True
    end
  end
  object qryProjetos: TADOQuery
    Connection = AdoConexao
    Parameters = <>
    Left = 40
    Top = 104
  end
  object qrySelectProjetos: TADOQuery
    Active = True
    Connection = AdoConexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  * FROM dbo.Projetos')
    Left = 136
    Top = 104
    object qrySelectProjetosid_projeto: TAutoIncField
      FieldName = 'id_projeto'
      ReadOnly = True
    end
    object qrySelectProjetoscodigo_projeto: TIntegerField
      FieldName = 'codigo_projeto'
    end
    object qrySelectProjetosnome_projeto: TStringField
      FieldName = 'nome_projeto'
      Size = 80
    end
    object qrySelectProjetosdata_criacao: TStringField
      FieldName = 'data_criacao'
      Size = 80
    end
    object qrySelectProjetosdata_conclusao: TStringField
      FieldName = 'data_conclusao'
      Size = 80
    end
    object qrySelectProjetosstatus_projeto: TStringField
      FieldName = 'status_projeto'
      Size = 80
    end
  end
  object dsProjetos: TDataSource
    DataSet = qrySelectProjetos
    Left = 240
    Top = 104
  end
  object qryTarefas: TADOQuery
    Connection = AdoConexao
    Parameters = <>
    Left = 40
    Top = 184
  end
  object qrySelectTarefas: TADOQuery
    Active = True
    Connection = AdoConexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      '    T.id_tarefa,'
      '    C.nome_colaborador AS Responsavel,'
      '    T.DataInicial,'
      '    T.DataFinal,'
      '    P.nome_projeto AS projeto,'
      '    T.Situacao,'
      '    T.Prioridade'
      'FROM dbo.Tarefas T'
      'LEFT JOIN dbo.Projetos P ON P.id_projeto = T.ProjetoId'
      
        'LEFT JOIN dbo.colaboradores C ON C.id_colaborador = T.Colaborado' +
        'rId'
      'ORDER BY T.id_tarefa DESC')
    Left = 128
    Top = 184
  end
  object dsTarefas: TDataSource
    DataSet = qrySelectTarefas
    Left = 240
    Top = 184
  end
  object qryDashBoard: TADOQuery
    Connection = AdoConexao
    Parameters = <>
    Left = 328
    Top = 184
  end
end
