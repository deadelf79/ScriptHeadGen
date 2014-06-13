unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TForm1 = class(TForm)
    LeftPanel: TPanel;
    RightPanel: TPanel;
    Label1: TLabel;
    ScriptName: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    AuthorNickname: TEdit;
    ScriptAbout: TMemo;
    Extended: TPanel;
    Button1: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Tools: TScrollBox;
    BeginOrOneline: TRadioGroup;
    CapsLock: TRadioGroup;
    code: TMemo;
    Label4: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    DarkStyle: TCheckBox;
    Label5: TLabel;
    HighlightScriptname: TRadioGroup;
    RUComments: TRadioGroup;
    Tabulation: TRadioGroup;
    Label6: TLabel;
    Panel7: TPanel;
    ScriptVersionMajor: TEdit;
    ScriptSubVersion: TComboBox;
    ScriptVersionMinor: TEdit;
    ScriptVersionBuild: TEdit;
    VersionInName: TRadioGroup;
    SaveHead: TButton;
    Panel8: TPanel;
    SaveSettings: TButton;
    BreakBetween: TRadioGroup;
    ShowTime: TRadioGroup;
    SaveDialog1: TSaveDialog;
    LoadSettings: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DarkStyleClick(Sender: TObject);
    procedure make_code;
    procedure ScriptNameChange(Sender: TObject);
    procedure BeginOrOnelineClick(Sender: TObject);
    procedure CapsLockClick(Sender: TObject);
    procedure AuthorNicknameChange(Sender: TObject);
    procedure HighlightScriptnameClick(Sender: TObject);
    procedure RUCommentsClick(Sender: TObject);
    procedure TabulationClick(Sender: TObject);
    procedure ScriptVersionMajorChange(Sender: TObject);
    procedure ScriptSubVersionChange(Sender: TObject);
    procedure ScriptVersionMinorChange(Sender: TObject);
    procedure ScriptVersionBuildChange(Sender: TObject);
    procedure VersionInNameClick(Sender: TObject);
    procedure BreakBetweenClick(Sender: TObject);
    procedure ScriptAboutChange(Sender: TObject);
    procedure ShowTimeClick(Sender: TObject);
    procedure SaveHeadClick(Sender: TObject);
    procedure SaveSettingsClick(Sender: TObject);
    procedure LoadSettingsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AuthorNicknameChange(Sender: TObject);
begin
  make_code;
end;

procedure TForm1.BeginOrOnelineClick(Sender: TObject);
begin
  make_code;
end;

procedure TForm1.BreakBetweenClick(Sender: TObject);
begin
  make_code;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if extended.Tag=0 then
    begin
      extended.Width:=300;
      if not(form1.WindowState=wsMaximized) then
        form1.Width:=1000;
      extended.Tag:=1;
    end
  else
    begin
      extended.Width:=40;
      if not(form1.WindowState=wsMaximized) then
        form1.width:=1000-(300-40);
      extended.Tag:=0;
    end;
end;

procedure TForm1.CapsLockClick(Sender: TObject);
begin
  make_code;
end;

procedure TForm1.DarkStyleClick(Sender: TObject);
begin
  if darkstyle.Checked then
    begin
      darkstyle.Caption:='Dark style ^_^';
      code.Font.color:=$0028c7a6; //a6c728 - greeny
      code.color:=$00272822; //272822 - darky
    end
  else
    begin
      darkstyle.Caption:='Dark style T_T';
      code.Font.color:=clGreen;
      code.color:=clWhite;
    end;
end;

procedure TForm1.ScriptVersionBuildChange(Sender: TObject);
begin
  make_code;
end;

procedure TForm1.ScriptVersionMajorChange(Sender: TObject);
begin
  make_code;
end;

procedure TForm1.ScriptVersionMinorChange(Sender: TObject);
begin
  make_code;
end;

procedure TForm1.ShowTimeClick(Sender: TObject);
begin
  make_code;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  loadsettings.Click;
  tools.VertScrollBar.Position:=0;
  extended.Width:=40;
  form1.width:=1000-(300-40);
  make_code;
  code.Font.color:=$0028c7a6; //a6c728 - greeny
  code.color:=$00272822; //272822 - darky
end;

procedure TForm1.HighlightScriptnameClick(Sender: TObject);
begin
  make_code;
end;

procedure TForm1.LoadSettingsClick(Sender: TObject);
var new:TextFile;
nickname:string;
index:integer;
begin
  assignfile(new,'settings');
  if Not fileexists('settings') then
     savesettings.Click;
  reset(new);
    readln(new,nickname);
    authornickname.Text:=nickname;
    //
    readln(new,index);
    if index<-1 then
      index:=0;
    if index>RUComments.Items.Count-1 then
      index:=RUComments.ItemIndex;
    RUComments.ItemIndex:=index;
    //
    readln(new,index);
    if index<-1 then
      index:=0;
    if index>beginoroneline.Items.Count-1 then
      index:=beginoroneline.ItemIndex;
    beginoroneline.ItemIndex:=index;
    //
    readln(new,index);
    if index<-1 then
      index:=0;
    if index>capslock.Items.Count-1 then
      index:=capslock.ItemIndex;
    capslock.ItemIndex:=index;
    //
    readln(new,index);
    if index<-1 then
      index:=0;
    if index>highlightscriptname.Items.Count-1 then
      index:=highlightscriptname.ItemIndex;
    highlightscriptname.ItemIndex:=index;
    //
    readln(new,index);
    if index<-1 then
      index:=0;
    if index>tabulation.Items.Count-1 then
      index:=tabulation.ItemIndex;
    tabulation.ItemIndex:=index;
    //
    readln(new,index);
    if index<-1 then
      index:=0;
    if index>versioninname.Items.Count-1 then
      index:=versioninname.ItemIndex;
    versioninname.ItemIndex:=index;
    //
    readln(new,index);
    if index<-1 then
      index:=0;
    if index>breakbetween.Items.Count-1 then
      index:=breakbetween.ItemIndex;
    breakbetween.ItemIndex:=index;
    //
    readln(new,index);
    if index<-1 then
      index:=0;
    if index>showtime.Items.Count-1 then
      index:=showtime.ItemIndex;
    showtime.ItemIndex:=index;
  closefile(new);
  //showmessage('Настройки загружены!');
end;

procedure TForm1.make_code;
var chary:char;
tabby:string;
subversion:string;
make_version_string,make_scriptname_string:string;
index:integer;
begin
  chary:=' ';
  subversion:='';
  case Tabulation.ItemIndex of
    0:tabby:='';
    1:tabby:='  ';
    2:tabby:='    ';
    3:tabby:=chr(9);
  end;
  code.Lines.Clear;
  if BeginOrOneline.ItemIndex=0 then
    code.Lines.Add('=begin')
  else
  chary:='#';
  make_version_string:='';
  //----------------------------------------------------------------------------
  // Make version string to show in/out of Script Name line
  case RUComments.ItemIndex of
    0:begin
      case scriptsubversion.ItemIndex of
        0:subversion:='';
        1:subversion:='(Альфа)';
        2:subversion:='(Бета)';
        3:subversion:='(Гамма)';
        4:subversion:='(Дельта)';
        5:subversion:='(Эпсилон)';
      end;
      make_version_string:=scriptversionmajor.Text+'.'+
      scriptversionminor.Text+'.'+scriptversionbuild.Text+' '+subversion;
    end;
    1:begin
      case scriptsubversion.ItemIndex of
        0:subversion:='';
        1:subversion:='(Alpha)';
        2:subversion:='(Beta)';
        3:subversion:='(Gamma)';
        4:subversion:='(Delta)';
        5:subversion:='(Epsilon)';
      end;
      make_version_string:=scriptversionmajor.Text+'.'+
      scriptversionminor.Text+'.'+scriptversionbuild.Text+' '+subversion;
    end;
  end;
  make_scriptname_string:='';
  //----------------------------------------------------------------------------
  // Make new awesome string name line
  case VersionInName.ItemIndex of
    0:make_scriptname_string:=scriptname.Text;
    1,2:make_scriptname_string:=scriptname.Text+' v.'+make_version_string;
  end;
  // WRITE YOUR CODE HERE...
  //----------------------------------------------------------------------------
  // Some highlights if need
  case showtime.ItemIndex of
    1:begin
      code.Lines.Add(chary+StringOfChar('-',50) );
      code.Lines.Add(chary+'');
    end;
    2:begin
      code.Lines.Add(chary+StringOfChar('=',50) );
      code.Lines.Add(chary+'');
    end;
    3:begin
      code.Lines.Add(chary+StringOfChar('=',50) );
      code.Lines.Add(chary+StringOfChar('-',83) );
      code.Lines.Add(chary+'');
    end;
    4:begin
      code.Lines.Add(chary+StringOfChar('=',50) );
      code.Lines.Add(chary+'='+StringOfChar('+',48)+'=');
      code.Lines.Add(chary+'');
    end;
    5:begin
      code.Lines.Add(chary+'['+StringOfChar('=',48)+']' );
      code.Lines.Add(chary+'['+StringOfChar('\',40)+StringOfChar('/',40)+']');
      code.Lines.Add(chary+'');
    end;
    6:begin
      code.Lines.Add(chary+'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/');
      code.Lines.Add(chary+'');
    end;
    7:begin
      code.Lines.Add(chary+StringOfChar('#',50)+'' );
      code.Lines.Add(chary+'');
    end;
  end;
  case highlightscriptname.ItemIndex of
    1:code.Lines.Add(chary+'');
    2:code.Lines.Add(chary+StringOfChar('-',50) );
    3:code.Lines.Add(chary+StringOfChar('=',50) );
    4:begin
      code.Lines.Add(chary+StringOfChar('-',50) );
      code.Lines.Add(chary+'');
    end;
  end;
  //----------------------------------------------------------------------------
  // Your script name here
  case CapsLock.ItemIndex of
    0:code.Lines.Add(chary+tabby+make_scriptname_string);
    1:code.Lines.Add(chary+tabby+ansiuppercase(make_scriptname_string));
    2:code.Lines.Add(chary+tabby+ansilowercase(make_scriptname_string));
  end;
  //----------------------------------------------------------------------------
  // Some highlight if need
  case highlightscriptname.ItemIndex of
    1:code.Lines.Add(chary+'');
    2:code.Lines.Add(chary+StringOfChar('-',50) );
    3:code.Lines.Add(chary+StringOfChar('=',50) );
    4:begin
      code.Lines.Add(chary+'');
      code.Lines.Add(chary+StringOfChar('-',50) );
    end;
  end;
  //----------------------------------------------------------------------------
  // Your nick name here
  case RUComments.ItemIndex of
    0:code.Lines.Add(chary+tabby+'Автор: '+authornickname.Text);
    1:code.Lines.Add(chary+tabby+'Author: '+authornickname.Text);
  end;
  //----------------------------------------------------------------------------
  // Your script version here
  if not(VersionInName.ItemIndex=1) then
    case RUComments.ItemIndex of
      0:code.Lines.Add(chary+tabby+'Версия: '+make_version_string);
      1:code.Lines.Add(chary+tabby+'Version: '+make_version_string);
    end;
  //----------------------------------------------------------------------------
  // Break between... if need
  case BreakBetween.ItemIndex of
    1:code.Lines.Add(chary+'');
    2:code.Lines.Add(chary+StringOfChar('-',50) );
    3:code.Lines.Add(chary+StringOfChar('=',50) );
  end;
  //----------------------------------------------------------------------------
  // Your abouts is here
  for index := 0 to ScriptAbout.Lines.Count-1 do
    code.Lines.Add(chary+tabby+ScriptAbout.Lines[index]);
  //----------------------------------------------------------------------------
  // Some highlights if need
  case showtime.ItemIndex of
    1:begin
      code.Lines.Add(chary+'');
      code.Lines.Add(chary+StringOfChar('-',50) );
    end;
    2:begin
      code.Lines.Add(chary+'');
      code.Lines.Add(chary+'');
      code.Lines.Add(chary+StringOfChar('=',50) );
    end;
    3:begin
      code.Lines.Add(chary+'');
      code.Lines.Add(chary+StringOfChar('-',83) );
      code.Lines.Add(chary+StringOfChar('=',50) );
    end;
    4:begin
      code.Lines.Add(chary+'');
      code.Lines.Add(chary+'='+StringOfChar('+',48)+'=');
      code.Lines.Add(chary+StringOfChar('=',50) );
    end;
    5:begin
      code.Lines.Add(chary+'');
      code.Lines.Add(chary+'['+StringOfChar('\',40)+StringOfChar('/',40)+']');
      code.Lines.Add(chary+'['+StringOfChar('=',48)+']' );
    end;
    6:begin
      code.Lines.Add(chary+'');
      code.Lines.Add(chary+'/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\');
    end;
    7:begin
      code.Lines.Add(chary+'');
      code.Lines.Add(chary+StringOfChar('#',50)+'' );
    end;
  end;
  // CAN NOT READ OR WRITE RIGHT NOW
  if BeginOrOneline.ItemIndex=0 then
    code.Lines.Add('=end');
end;

procedure TForm1.RUCommentsClick(Sender: TObject);
begin
  make_code;
end;

procedure TForm1.SaveHeadClick(Sender: TObject);
begin
  savedialog1.Execute();
  if savedialog1.FileName<>'' then
    code.Lines.SaveToFile(savedialog1.FileName);
end;

procedure TForm1.SaveSettingsClick(Sender: TObject);
var new:TextFile;
begin
  assignfile(new,'settings');
  rewrite(new);
    writeln(new,authornickname.Text);
    writeln(new,RUComments.ItemIndex);
    writeln(new,beginoroneline.ItemIndex);
    writeln(new,capslock.ItemIndex);
    writeln(new,highlightscriptname.ItemIndex);
    writeln(new,tabulation.ItemIndex);
    writeln(new,versioninname.ItemIndex);
    writeln(new,breakbetween.ItemIndex);
    writeln(new,showtime.ItemIndex);
  closefile(new);
  showmessage('Все настройки сохранены!');
end;

procedure TForm1.ScriptAboutChange(Sender: TObject);
begin
  make_code;
end;

procedure TForm1.ScriptNameChange(Sender: TObject);
begin
  make_code;
end;

procedure TForm1.ScriptSubVersionChange(Sender: TObject);
begin
  make_code;
end;

procedure TForm1.TabulationClick(Sender: TObject);
begin
  make_code;
end;

procedure TForm1.VersionInNameClick(Sender: TObject);
begin
  make_code;
end;

end.
