USE [master]
GO
/****** Object:  Database [db_Tind4S]    Script Date: 30-Oct-19 10:45:49 AM ******/
CREATE DATABASE [db_Tind4S]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_Tind4S', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\db_Tind4S.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_Tind4S_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\db_Tind4S_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [db_Tind4S] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_Tind4S].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_Tind4S] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_Tind4S] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_Tind4S] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_Tind4S] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_Tind4S] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_Tind4S] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_Tind4S] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_Tind4S] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_Tind4S] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_Tind4S] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_Tind4S] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_Tind4S] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_Tind4S] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_Tind4S] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_Tind4S] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_Tind4S] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_Tind4S] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_Tind4S] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_Tind4S] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_Tind4S] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_Tind4S] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_Tind4S] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_Tind4S] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_Tind4S] SET  MULTI_USER 
GO
ALTER DATABASE [db_Tind4S] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_Tind4S] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_Tind4S] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_Tind4S] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_Tind4S] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_Tind4S] SET QUERY_STORE = OFF
GO
USE [db_Tind4S]
GO
/****** Object:  User [userTind4s]    Script Date: 30-Oct-19 10:45:49 AM ******/
CREATE USER [userTind4s] FOR LOGIN [userTind4s] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[TB_Emprestimo]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Emprestimo](
	[ID_Emprestimo] [int] IDENTITY(1,1) NOT NULL,
	[ID_Equipamento] [int] NOT NULL,
	[Dt_Retirada] [varchar](22) NOT NULL,
	[ID_Locatario_Saida] [int] NOT NULL,
	[ID_Locador_Saida] [int] NOT NULL,
	[Dt_PrevistaDevolucao] [varchar](22) NULL,
	[Dt_EfetivaDevolucao] [varchar](22) NULL,
	[ID_Locatario_Devolucao] [int] NULL,
	[ID_Locador_Devolucao] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Emprestimo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Equipamento]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Equipamento](
	[ID_Equipamento] [int] IDENTITY(1,1) NOT NULL,
	[Nm_Equipamento] [varchar](30) NOT NULL,
	[Nr_Equipamento] [int] NOT NULL,
	[Ds_Tipo] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Equipamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Funcionalidade]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Funcionalidade](
	[ID_Funcionalidade] [int] IDENTITY(1,1) NOT NULL,
	[Ds_Funcionalidade] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Funcionalidade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Locatario]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Locatario](
	[ID_Locatario] [int] IDENTITY(1,1) NOT NULL,
	[Nm_Locatario] [varchar](100) NULL,
	[RA_Locatario] [varchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Locatario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Permissao]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Permissao](
	[ID_Funcionalidade] [int] NOT NULL,
	[ID_Usuario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Funcionalidade] ASC,
	[ID_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Usuario]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Usuario](
	[ID_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[Nm_Usuario] [varchar](100) NOT NULL,
	[Ds_Prontuario] [varchar](30) NOT NULL,
	[Ds_Senha] [varchar](30) NOT NULL,
	[Dt_Cadastro] [varchar](22) NOT NULL,
	[Dt_UltimoLogin] [varchar](22) NOT NULL,
	[Dt_Desativacao] [varchar](22) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Ds_Prontuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_Emprestimo] ADD  DEFAULT ('-') FOR [Dt_PrevistaDevolucao]
GO
ALTER TABLE [dbo].[TB_Emprestimo] ADD  DEFAULT ('-') FOR [Dt_EfetivaDevolucao]
GO
ALTER TABLE [dbo].[TB_Locatario] ADD  DEFAULT ('-') FOR [Nm_Locatario]
GO
ALTER TABLE [dbo].[TB_Locatario] ADD  DEFAULT ('-') FOR [RA_Locatario]
GO
ALTER TABLE [dbo].[TB_Usuario] ADD  DEFAULT ('-') FOR [Dt_Desativacao]
GO
ALTER TABLE [dbo].[TB_Emprestimo]  WITH CHECK ADD  CONSTRAINT [Fk_ID_Equipamento_Equipamento] FOREIGN KEY([ID_Equipamento])
REFERENCES [dbo].[TB_Equipamento] ([ID_Equipamento])
GO
ALTER TABLE [dbo].[TB_Emprestimo] CHECK CONSTRAINT [Fk_ID_Equipamento_Equipamento]
GO
ALTER TABLE [dbo].[TB_Emprestimo]  WITH CHECK ADD  CONSTRAINT [Fk_ID_Locador_Devolucao_Usuario] FOREIGN KEY([ID_Locador_Devolucao])
REFERENCES [dbo].[TB_Usuario] ([ID_Usuario])
GO
ALTER TABLE [dbo].[TB_Emprestimo] CHECK CONSTRAINT [Fk_ID_Locador_Devolucao_Usuario]
GO
ALTER TABLE [dbo].[TB_Emprestimo]  WITH CHECK ADD  CONSTRAINT [Fk_ID_Locador_Saida_Usuario] FOREIGN KEY([ID_Locador_Saida])
REFERENCES [dbo].[TB_Usuario] ([ID_Usuario])
GO
ALTER TABLE [dbo].[TB_Emprestimo] CHECK CONSTRAINT [Fk_ID_Locador_Saida_Usuario]
GO
ALTER TABLE [dbo].[TB_Emprestimo]  WITH CHECK ADD  CONSTRAINT [Fk_ID_Locatario_Devolucao_Locatario] FOREIGN KEY([ID_Locatario_Devolucao])
REFERENCES [dbo].[TB_Locatario] ([ID_Locatario])
GO
ALTER TABLE [dbo].[TB_Emprestimo] CHECK CONSTRAINT [Fk_ID_Locatario_Devolucao_Locatario]
GO
ALTER TABLE [dbo].[TB_Emprestimo]  WITH CHECK ADD  CONSTRAINT [Fk_ID_Locatario_Locatario] FOREIGN KEY([ID_Locatario_Saida])
REFERENCES [dbo].[TB_Locatario] ([ID_Locatario])
GO
ALTER TABLE [dbo].[TB_Emprestimo] CHECK CONSTRAINT [Fk_ID_Locatario_Locatario]
GO
ALTER TABLE [dbo].[TB_Permissao]  WITH CHECK ADD  CONSTRAINT [FK_Id_Func] FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[TB_Usuario] ([ID_Usuario])
GO
ALTER TABLE [dbo].[TB_Permissao] CHECK CONSTRAINT [FK_Id_Func]
GO
ALTER TABLE [dbo].[TB_Permissao]  WITH CHECK ADD  CONSTRAINT [FK_Permissao_Func] FOREIGN KEY([ID_Funcionalidade])
REFERENCES [dbo].[TB_Funcionalidade] ([ID_Funcionalidade])
GO
ALTER TABLE [dbo].[TB_Permissao] CHECK CONSTRAINT [FK_Permissao_Func]
GO
/****** Object:  StoredProcedure [dbo].[sp_Del_Equipamento]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Del_Equipamento](@pID_Equipamento int) AS 
BEGIN
	Delete From TB_Equipamento
	WHERE ID_Equipamento=@pID_Equipamento
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_Del_PermissoesUsuario]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Del_PermissoesUsuario](@pID_Usuario int)
AS 
BEGIN
	Delete From TB_Permissao
	Where ID_Usuario = @pID_Usuario
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Del_Usuario]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Del_Usuario](@pID_Usuario int)
AS 
BEGIN
	UPDATE TB_Usuario
	SET Dt_Desativacao = FORMAT(GETDATE(), 'dd.MM.yyyy - HH:mm:ss')
	WHERE ID_Usuario = @pID_Usuario
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Grid_EmprestimosAbertos]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_Grid_EmprestimosAbertos] As 
Begin
	Select Emp.ID_Emprestimo As ID, CONCAT(Equip.Nm_Equipamento, ' ' , Equip.Nr_Equipamento) As Item, Locat.Nm_Locatario As Locatario, U.Nm_Usuario As Locador, Emp.Dt_Retirada As DataSaida, Emp.Dt_PrevistaDevolucao As DataPrevista  
	From TB_Emprestimo As Emp 
	Inner Join TB_Equipamento As Equip On Equip.ID_Equipamento = Emp.ID_Equipamento
	Inner Join TB_Locatario As Locat On Locat.ID_Locatario = Emp.ID_Locatario_Saida
	Inner join TB_Usuario As U On U.ID_Usuario = Emp.ID_Locador_Saida
	Where Emp.Dt_EfetivaDevolucao = '-';
End;
GO
/****** Object:  StoredProcedure [dbo].[sp_Grid_Equipamento]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[sp_Grid_Equipamento] (@pNm_Equipamento varchar(30), @pNr_Equipamento Int, @pDs_Tipo varchar(10)) AS 
BEGIN
	If(@pNr_Equipamento <= 0 or @pNr_Equipamento = Null)
	Begin
		Select  E.ID_Equipamento, E.Nm_Equipamento, E.Nr_Equipamento, E.Ds_Tipo
		From TB_Equipamento as E
		Where (E.Ds_Tipo Like '%' + @pDs_Tipo + '%') 
		And (E.Nm_Equipamento Like '%' + @pNm_Equipamento + '%')	
	End
	Else
	Begin
		Select  E.ID_Equipamento, E.Nm_Equipamento, E.Nr_Equipamento, E.Ds_Tipo
		From TB_Equipamento as E
		Where (E.Ds_Tipo Like '%' + @pDs_Tipo + '%') 
		And (E.Nm_Equipamento Like '%' + @pNm_Equipamento + '%')
		And (E.Nr_Equipamento = @pNr_Equipamento)
	End

END;



GO
/****** Object:  StoredProcedure [dbo].[sp_Grid_Equipamento_Disponivel]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_Grid_Equipamento_Disponivel] (@pDs_Tipo Varchar(10)) As 
Begin
	Select E.ID_Equipamento As ID, CONCAT(E.Nm_Equipamento,' ', E.Nr_Equipamento) As Nome
	From TB_Equipamento as E
	Where E.ID_Equipamento Not In(Select M.ID_Equipamento
								  From TB_Emprestimo As M
								  Where M.Dt_EfetivaDevolucao = '-' Or M.Dt_EfetivaDevolucao = Null)	
	And E.Ds_Tipo = @pDs_Tipo
End;



GO
/****** Object:  StoredProcedure [dbo].[sp_Grid_Equipamento_Emprestado]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_Grid_Equipamento_Emprestado] (@pDs_Tipo Varchar(10)) As 
Begin
	Select E.ID_Equipamento As ID, CONCAT(E.Nm_Equipamento,' ', E.Nr_Equipamento) As Nome
	From TB_Emprestimo as M	
	Inner Join TB_Equipamento as E On E.ID_Equipamento = M.ID_Equipamento 	 
	Where E.Ds_Tipo = @pDs_Tipo
	And M.Dt_EfetivaDevolucao = '-'
End;

GO
/****** Object:  StoredProcedure [dbo].[sp_Grid_Locatario]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_Grid_Locatario] (@pNm_Locatario Varchar(100), @pRA_Locatario Varchar(12)) As
Begin
	Select L.ID_Locatario As ID, L.Nm_Locatario As Nome, L.RA_Locatario As RA
	From TB_Locatario As L
	Where (L.Nm_Locatario Like '%' + @pNm_Locatario + '%')
	And (L.RA_Locatario Like '%' + @pRA_Locatario + '%')
	Order By L.ID_Locatario;
End;
GO
/****** Object:  StoredProcedure [dbo].[sp_Grid_Usuario]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[sp_Grid_Usuario] (@pNm_Usuario varchar(100), @pDs_Prontuario varchar(30)) AS 
BEGIN
Select U.ID_Usuario as ID, U.Nm_Usuario as Nome, U.Ds_Prontuario as 'Login'
From TB_Usuario as U
Where (U.Nm_Usuario Like '%' + @pNm_Usuario + '%') 
And (U.Ds_Prontuario Like '%' + @pDs_Prontuario + '%')
And (U.Dt_Desativacao = '-')
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_Ins_Equipamento]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Ins_Equipamento](@pNm_Equipamento Varchar(30), @pNr_Equipamento Int, @pDs_Tipo varchar(10)) AS 
BEGIN
	INSERT INTO TB_Equipamento(Nm_Equipamento, Nr_Equipamento, Ds_Tipo)
		VALUES(@pNm_Equipamento, @pNr_Equipamento, @pDs_Tipo)
END;


GO
/****** Object:  StoredProcedure [dbo].[sp_Ins_Locatario]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_Ins_Locatario] (@pNm_Locatario Varchar(100), @pRA_Locatario Varchar(12)) As
Begin
	Insert Into TB_Locatario (Nm_Locatario, RA_Locatario) Values (@pNm_Locatario, @pRA_Locatario);
	Select @@IDENTITY As ID
End;
GO
/****** Object:  StoredProcedure [dbo].[sp_Ins_NovoEmprestimo]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_Ins_NovoEmprestimo] (@pID_Equipamento Int, @pDt_Retirada Varchar(22), @pID_Locatario_Saida Int, @pID_Locador_Saida Int, @pDt_PrevistaDevolucao Varchar(22)) As
Begin
	Insert Into TB_Emprestimo (ID_Equipamento, Dt_Retirada, ID_Locatario_Saida, ID_Locador_Saida, Dt_PrevistaDevolucao) 
		Values(@pID_Equipamento, @pDt_Retirada, @pID_Locatario_Saida, @pID_Locador_Saida, @pDt_PrevistaDevolucao);		
End;


GO
/****** Object:  StoredProcedure [dbo].[sp_Ins_PermissoesUsuario]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Ins_PermissoesUsuario]( @pID_Usuario int, @pID_Funcionalidade int) AS 
BEGIN
INSERT INTO TB_Permissao(ID_Funcionalidade , ID_Usuario)
VALUES(@pID_Funcionalidade, @pID_Usuario)
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_Ins_Usuario]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Ins_Usuario](@pNm_Usuario varchar(100), @pDs_Prontuario varchar(30), @pDs_Senha varchar(30)) AS 
BEGIN
Declare @data varchar(20);
Set @data = FORMAT(GETDATE(), 'dd.MM.yyyy - HH:mm:ss');

INSERT INTO TB_Usuario(Nm_Usuario, Ds_Prontuario, Ds_Senha, Dt_Cadastro, Dt_UltimoLogin)
VALUES(@pNm_Usuario, @pDs_Prontuario, @pDs_Senha, @data, @data)
Select @@IDENTITY As ID;
END;


GO
/****** Object:  StoredProcedure [dbo].[sp_Sel_Emprestimo]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_Sel_Emprestimo] (@pID_Emprestimo Int) As 
Begin
	Select Emp.ID_Equipamento As ID, Emp.Dt_EfetivaDevolucao, Emp.Dt_PrevistaDevolucao, Emp.Dt_Retirada, Emp.ID_Locador_Devolucao, 
			Emp.ID_Locador_Saida, Emp.ID_Locatario_Devolucao, Emp.ID_Locatario_Saida, CONCAT(Equip.Nm_Equipamento, ' ', Equip.Nr_Equipamento) As NomeEquipamento,
			Equip.Ds_Tipo, Locat.Nm_Locatario, Locat.RA_Locatario, U.Nm_Usuario As Nm_Locador, U.Ds_Prontuario As RA_Locador
	From TB_Emprestimo as Emp 	
	Inner Join TB_Equipamento As Equip On Equip.ID_Equipamento = Emp.ID_Equipamento
	Inner Join TB_Locatario As Locat On Locat.ID_Locatario = Emp.ID_Locatario_Saida
	Inner join TB_Usuario As U On U.ID_Usuario = Emp.ID_Locador_Saida
	Where Emp.ID_Emprestimo = @pID_Emprestimo;
End;
GO
/****** Object:  StoredProcedure [dbo].[sp_Sel_Equipamento]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_Sel_Equipamento] (@pId_Equipamento int) AS 
BEGIN
Select E.Nm_Equipamento As Nome, E.Nr_Equipamento As Numero, E.Ds_Tipo As Tipo
From TB_Equipamento as E
Where E.ID_Equipamento = @pId_Equipamento;
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_Sel_Funcionalidades]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[sp_Sel_Funcionalidades] AS 
BEGIN
Select F.ID_Funcionalidade as 'ID', F.Ds_Funcionalidade as 'Descricao'
From TB_Funcionalidade as F
END;


GO
/****** Object:  StoredProcedure [dbo].[sp_Sel_ID_EmprestimoAberto]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_Sel_ID_EmprestimoAberto] (@pID_Equipamento Int) As 
Begin
	Select E.ID_Emprestimo as ID
	From TB_Emprestimo as E 
	Where E.ID_Equipamento = @pID_Equipamento
	And E.Dt_EfetivaDevolucao = '-';
End;
GO
/****** Object:  StoredProcedure [dbo].[sp_Sel_PermissoesUsuario]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Sel_PermissoesUsuario](@pID_Usuario int)
AS 
BEGIN
	Select ID_Funcionalidade as ID
	From TB_Permissao
	Where ID_Usuario = @pID_Usuario
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_Sel_Usuario]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[sp_Sel_Usuario] (@pId_Usuario int) AS 
BEGIN
Select U.Nm_Usuario as Nome, U.Ds_Prontuario as 'Login', U.Ds_Senha as Senha, U.Dt_Cadastro as DataCadastro,
	U.Dt_UltimoLogin as UltimoLogin
From TB_Usuario as U
Where U.ID_Usuario = @pId_Usuario;
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_Set_DataLogin]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Set_DataLogin](@pId_Usuario int) AS 
BEGIN

Update tb_Usuario
Set Dt_UltimoLogin = FORMAT(GETDATE(), 'dd.MM.yyyy hh:mm:ss')
Where ID_Usuario = @pId_Usuario;
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_Upd_Emprestimo]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_Upd_Emprestimo] (@pID_Locador_Devolucao Int, @pID_Locatario_Devolucao Int, @pDt_EfetivaDevolucao Varchar(22), @pID_Emprestimo Int) As 
Begin
	Update TB_Emprestimo Set Dt_EfetivaDevolucao = @pDt_EfetivaDevolucao, ID_Locador_Devolucao = @pID_Locador_Devolucao, ID_Locatario_Devolucao = @pID_Locatario_Devolucao
	Where ID_Emprestimo = @pID_Emprestimo
End;

GO
/****** Object:  StoredProcedure [dbo].[sp_Upd_Equipamento]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Upd_Equipamento](@pNm_Equipamento varchar(30), @pDs_Tipo varchar(10), @pNr_Equipamento int, @pID_Equipamento int) AS 
BEGIN
	UPDATE TB_Equipamento
	SET Ds_Tipo=@pDs_Tipo, Nm_Equipamento=@pNm_Equipamento, Nr_Equipamento=@pNr_Equipamento
	WHERE ID_Equipamento=@pID_Equipamento
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_Upd_Usuario]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Upd_Usuario](@pNm_Usuario varchar(100), @pDs_Prontuario varchar(30), @pDs_Senha varchar(30), @pID_Usuario int) AS 
BEGIN
	UPDATE TB_Usuario
	SET Nm_Usuario = @pNm_Usuario, Ds_Prontuario = @pDs_Prontuario, Ds_Senha = @pDs_Senha
	WHERE ID_Usuario = @pID_Usuario
END;


GO
/****** Object:  StoredProcedure [dbo].[sp_ValidarLogin]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_ValidarLogin] (@pLogin Varchar(30), @pSenha varchar(30))
As
Begin 
Select U.Id_Usuario As ID, U.Nm_Usuario As Nome, U.Dt_Cadastro As DataCadastro, U.Dt_UltimoLogin As UltimoLogin  --FORMAT(GETDATE(), 'dd.MM.yyyy hh:mm:ss')
From tb_Usuario as U
Where U.Ds_Prontuario = @pLogin 
And U.Ds_Senha = @pSenha
And U.Dt_Desativacao = '-'
End;



GO
/****** Object:  StoredProcedure [dbo].[sp_ValidarProntuario]    Script Date: 30-Oct-19 10:45:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ValidarProntuario](@pDs_Prontuario varchar(30))
AS 
BEGIN
	Select ID_Usuario as ID
	From TB_Usuario
	Where Ds_Prontuario = @pDs_Prontuario
END;

GO
USE [master]
GO
ALTER DATABASE [db_Tind4S] SET  READ_WRITE 
GO
