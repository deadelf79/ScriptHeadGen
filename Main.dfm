object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088' '#1086#1092#1086#1088#1084#1083#1077#1085#1080#1103' '#1079#1072#1075#1086#1083#1086#1074#1082#1072' '#1089#1082#1088#1080#1087#1090#1072' '#1076#1083#1103' RGSS'
  ClientHeight = 461
  ClientWidth = 984
  Color = clBtnFace
  Constraints.MinHeight = 500
  Constraints.MinWidth = 760
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Font.Quality = fqAntialiased
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object LeftPanel: TPanel
    Left = 0
    Top = 0
    Width = 249
    Height = 461
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'LeftPanel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    Font.Quality = fqAntialiased
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 249
      Height = 20
      Align = alTop
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1082#1088#1080#1087#1090#1072':'
      ExplicitWidth = 130
    end
    object Label2: TLabel
      Left = 0
      Top = 48
      Width = 249
      Height = 20
      Align = alTop
      Caption = #1053#1080#1082' '#1072#1074#1090#1086#1088#1072' ('#1080#1083#1080' '#1085#1077#1089#1082#1086#1083#1100#1082#1080#1093'):'
      ExplicitWidth = 205
    end
    object Label3: TLabel
      Left = 0
      Top = 144
      Width = 249
      Height = 20
      Align = alTop
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Font.Quality = fqAntialiased
      ParentFont = False
      ExplicitWidth = 73
    end
    object Label6: TLabel
      Left = 0
      Top = 96
      Width = 249
      Height = 20
      Align = alTop
      Caption = #1042#1077#1088#1089#1080#1103':'
      ExplicitWidth = 53
    end
    object ScriptName: TEdit
      Left = 0
      Top = 20
      Width = 249
      Height = 28
      Align = alTop
      TabOrder = 0
      Text = 'Rectangles Super Script'
      OnChange = ScriptNameChange
    end
    object AuthorNickname: TEdit
      Left = 0
      Top = 68
      Width = 249
      Height = 28
      Align = alTop
      TabOrder = 1
      Text = 'MyBeatifulName123'
      OnChange = AuthorNicknameChange
    end
    object ScriptAbout: TMemo
      Left = 0
      Top = 164
      Width = 249
      Height = 250
      Align = alClient
      Lines.Strings = (
        'It makes some rectangles, bro')
      TabOrder = 2
      OnChange = ScriptAboutChange
    end
    object Panel7: TPanel
      Left = 0
      Top = 116
      Width = 249
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel7'
      ShowCaption = False
      TabOrder = 3
      object ScriptVersionMajor: TEdit
        Left = 0
        Top = 0
        Width = 41
        Height = 28
        Align = alLeft
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 0
        Text = '1'
        OnChange = ScriptVersionMajorChange
      end
      object ScriptSubVersion: TComboBox
        Left = 129
        Top = 0
        Width = 120
        Height = 28
        Align = alClient
        ItemIndex = 0
        TabOrder = 1
        Text = #1056#1045#1051#1048#1047
        OnChange = ScriptSubVersionChange
        Items.Strings = (
          #1056#1045#1051#1048#1047
          #1072#1083#1100#1092#1072
          #1073#1077#1090#1072
          #1075#1072#1084#1084#1072
          #1076#1077#1083#1100#1090#1072
          #1101#1087#1089#1080#1083#1086#1085)
      end
      object ScriptVersionMinor: TEdit
        Left = 41
        Top = 0
        Width = 40
        Height = 28
        Align = alLeft
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 2
        Text = '5'
        OnChange = ScriptVersionMinorChange
      end
      object ScriptVersionBuild: TEdit
        Left = 81
        Top = 0
        Width = 48
        Height = 28
        Align = alLeft
        MaxLength = 4
        NumbersOnly = True
        TabOrder = 3
        Text = '23'
        OnChange = ScriptVersionBuildChange
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 414
      Width = 249
      Height = 47
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'Panel8'
      ShowCaption = False
      TabOrder = 4
      object SaveHead: TButton
        Left = 0
        Top = 0
        Width = 249
        Height = 24
        Align = alTop
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1090#1077#1082#1089#1090
        TabOrder = 0
        OnClick = SaveHeadClick
      end
      object SaveSettings: TButton
        Left = 0
        Top = 24
        Width = 169
        Height = 23
        Align = alLeft
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1080
        TabOrder = 1
        OnClick = SaveSettingsClick
      end
      object LoadSettings: TButton
        Left = 169
        Top = 24
        Width = 80
        Height = 23
        Align = alClient
        Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
        TabOrder = 2
        OnClick = LoadSettingsClick
      end
    end
  end
  object Extended: TPanel
    Left = 249
    Top = 0
    Width = 300
    Height = 461
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Extended'
    ShowCaption = False
    TabOrder = 1
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 300
      Height = 42
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel1'
      ShowCaption = False
      TabOrder = 0
      object Label5: TLabel
        Left = 40
        Top = 0
        Width = 260
        Height = 42
        Align = alClient
        Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1085#1099#1077' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' ('#1076#1083#1103' '#1086#1087#1099#1090#1085#1099#1093' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081')'
        WordWrap = True
        ExplicitWidth = 212
        ExplicitHeight = 40
      end
      object Button1: TButton
        Left = 0
        Top = 0
        Width = 40
        Height = 42
        Align = alLeft
        Caption = '>>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        Font.Quality = fqAntialiased
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 42
      Width = 40
      Height = 419
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Font.Quality = fqAntialiased
      ParentFont = False
      ShowCaption = False
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 40
      Top = 42
      Width = 260
      Height = 419
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel3'
      ShowCaption = False
      TabOrder = 2
      object Tools: TScrollBox
        Left = 0
        Top = 0
        Width = 260
        Height = 419
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
        object BeginOrOneline: TRadioGroup
          Left = 0
          Top = 99
          Width = 243
          Height = 99
          Align = alTop
          Caption = #1042#1080#1076' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          Font.Quality = fqAntialiased
          ItemIndex = 1
          Items.Strings = (
            '=begin...=end'
            '# '#1086#1076#1085#1072' '#1089#1090#1088#1086#1082#1072)
          ParentFont = False
          TabOrder = 0
          OnClick = BeginOrOnelineClick
        end
        object CapsLock: TRadioGroup
          Left = 0
          Top = 198
          Width = 243
          Height = 105
          Align = alTop
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1082#1088#1080#1087#1090#1072
          ItemIndex = 0
          Items.Strings = (
            #1050#1072#1082' '#1077#1089#1090#1100
            #1055#1056#1054#1055#1048#1057#1053#1067#1052#1048
            #1089#1090#1088#1086#1095#1085#1099#1084#1080)
          TabOrder = 1
          OnClick = CapsLockClick
        end
        object HighlightScriptname: TRadioGroup
          Left = 0
          Top = 303
          Width = 243
          Height = 190
          Align = alTop
          Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1089#1082#1088#1080#1087#1090#1072
          ItemIndex = 0
          Items.Strings = (
            #1085#1077' '#1085#1072#1076#1086
            #1055#1091#1089#1090#1099#1084#1080' '#1072#1073#1079#1072#1094#1072#1084#1080
            #1054#1076#1080#1085#1072#1088#1085#1086#1081' '#1083#1080#1085#1080#1077#1081
            #1044#1074#1086#1081#1085#1086#1081' '#1083#1080#1085#1080#1077#1081
            #1054#1076#1080#1085#1072#1088#1085#1086#1081' '#1089' '#1087#1091#1089#1090#1099#1084#1080' '#1072#1073#1079#1072#1094#1072#1084#1080)
          TabOrder = 2
          WordWrap = True
          OnClick = HighlightScriptnameClick
        end
        object RUComments: TRadioGroup
          Left = 0
          Top = 0
          Width = 243
          Height = 99
          Hint = #1042#1053#1048#1052#1040#1053#1048#1045'! '#1053#1077' '#1087#1077#1088#1077#1074#1086#1076#1080#1090' '#1090#1077#1082#1089#1090#1099'!'
          Align = alTop
          Caption = #1071#1079#1099#1082' '#1072#1074#1090#1086#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1077#1074':'
          ItemIndex = 0
          Items.Strings = (
            #1088#1091#1089#1089#1082#1080#1081
            #1072#1085#1075#1083#1080#1081#1089#1082#1080#1081)
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = RUCommentsClick
        end
        object Tabulation: TRadioGroup
          Left = 0
          Top = 493
          Width = 243
          Height = 144
          Align = alTop
          Caption = #1042#1099#1088#1072#1074#1085#1080#1074#1072#1085#1080#1077':'
          ItemIndex = 2
          Items.Strings = (
            #1087#1083#1086#1089#1082#1086#1077
            #1076#1074#1072' '#1087#1088#1086#1073#1077#1083#1072
            #1095#1077#1090#1099#1088#1077' '#1087#1088#1086#1073#1077#1083#1072
            #1090#1072#1073#1091#1083#1103#1094#1080#1103)
          TabOrder = 4
          OnClick = TabulationClick
        end
        object VersionInName: TRadioGroup
          Left = 0
          Top = 637
          Width = 243
          Height = 105
          Align = alTop
          Caption = #1042#1077#1088#1089#1080#1103' '#1089#1082#1088#1080#1087#1090#1072' '#1074' '#1085#1072#1079#1074#1072#1085#1080#1080
          ItemIndex = 0
          Items.Strings = (
            #1085#1077#1090
            #1090#1086#1083#1100#1082#1086' '#1074' '#1085#1072#1079#1074#1072#1085#1080#1080
            #1074' '#1085#1072#1079#1074#1072#1085#1080#1080' '#1080' '#1086#1087#1080#1089#1072#1085#1080#1080)
          TabOrder = 5
          OnClick = VersionInNameClick
        end
        object BreakBetween: TRadioGroup
          Left = 0
          Top = 742
          Width = 243
          Height = 144
          Align = alTop
          Caption = #1054#1090#1076#1077#1083#1103#1090#1100' '#1086#1087#1080#1089#1072#1085#1080#1077
          ItemIndex = 1
          Items.Strings = (
            #1085#1077' '#1085#1072#1076#1086
            #1087#1091#1089#1090#1099#1084' '#1072#1073#1079#1072#1094#1077#1084
            #1086#1076#1080#1085#1072#1088#1085#1086#1081' '#1083#1080#1085#1080#1077#1081
            #1076#1074#1086#1081#1085#1086#1081' '#1083#1080#1085#1080#1077#1081)
          TabOrder = 6
          OnClick = BreakBetweenClick
        end
        object ShowTime: TRadioGroup
          Left = 0
          Top = 886
          Width = 243
          Height = 197
          Align = alTop
          Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077
          ItemIndex = 1
          Items.Strings = (
            #1085#1077' '#1085#1072#1076#1086
            #1086#1076#1080#1085#1072#1088#1085#1086#1081' '#1083#1080#1085#1080#1077#1081
            #1076#1074#1086#1081#1085#1086#1081' '#1083#1080#1085#1080#1077#1081
            #1091#1079#1086#1088#1086#1084' 1'
            #1091#1079#1086#1088#1086#1084' 2'
            #1091#1079#1086#1088#1086#1084' 3'
            #1079#1080#1075#1079#1072#1075#1086#1084
            #1088#1077#1096#1105#1090#1082#1072#1084#1080)
          TabOrder = 7
          OnClick = ShowTimeClick
        end
      end
    end
  end
  object RightPanel: TPanel
    Left = 549
    Top = 0
    Width = 435
    Height = 461
    Align = alClient
    BevelOuter = bvNone
    Caption = 'RightPanel'
    TabOrder = 2
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 435
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel4'
      ShowCaption = False
      TabOrder = 0
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 200
        Height = 25
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Panel5'
        ShowCaption = False
        TabOrder = 0
        object Label4: TLabel
          Left = 0
          Top = 0
          Width = 200
          Height = 25
          Align = alClient
          Alignment = taCenter
          Caption = #1043#1086#1090#1086#1074#1099#1081' '#1074#1080#1076':'
          ExplicitWidth = 91
          ExplicitHeight = 20
        end
      end
      object Panel6: TPanel
        Left = 200
        Top = 0
        Width = 235
        Height = 25
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel6'
        ShowCaption = False
        TabOrder = 1
        object DarkStyle: TCheckBox
          Left = 0
          Top = 0
          Width = 235
          Height = 25
          Align = alClient
          Caption = 'Dark style ^_^'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          Font.Quality = fqAntialiased
          ParentFont = False
          State = cbChecked
          TabOrder = 0
          OnClick = DarkStyleClick
        end
      end
    end
    object code: TMemo
      Left = 0
      Top = 25
      Width = 435
      Height = 436
      Align = alClient
      Color = clWhite
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Font.Quality = fqAntialiased
      Lines.Strings = (
        'Code')
      ParentDoubleBuffered = False
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 1
      WantTabs = True
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.rb'
    FileName = 'Somename'
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1092#1072#1081#1083#1099'|*.txt|'#1057#1082#1088#1080#1087#1090#1099' RUBY|*.rb;*.rbw'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing, ofDontAddToRecent]
    Title = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1075#1086#1090#1086#1074#1091#1102' '#1096#1072#1087#1082#1091
    Left = 56
    Top = 312
  end
end
