USE [SOWEBDB]
GO
/****** Object:  Table [dbo].[test]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[RoleID] [int] NOT NULL,
	[ResourceID] [int] NOT NULL,
	[PermissionType] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysUserResource]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUserResource](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ResourceID] [int] NOT NULL,
	[PermissionType] [smallint] NOT NULL,
	[IsInherited] [smallint] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SysUserResource] ON
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID], [PermissionType], [IsInherited]) VALUES (566, 11, 1, 1, -1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID], [PermissionType], [IsInherited]) VALUES (567, 11, 7, 1, -1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID], [PermissionType], [IsInherited]) VALUES (568, 11, 8, 1, -1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID], [PermissionType], [IsInherited]) VALUES (569, 11, 9, 1, -1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID], [PermissionType], [IsInherited]) VALUES (570, 11, 16, 1, -1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID], [PermissionType], [IsInherited]) VALUES (571, 11, 18, 1, -1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID], [PermissionType], [IsInherited]) VALUES (572, 11, 19, 1, -1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID], [PermissionType], [IsInherited]) VALUES (573, 11, 20, 1, -1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID], [PermissionType], [IsInherited]) VALUES (574, 11, 1, 1, 1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID], [PermissionType], [IsInherited]) VALUES (575, 11, 16, 1, 1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID], [PermissionType], [IsInherited]) VALUES (576, 11, 7, -1, 1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID], [PermissionType], [IsInherited]) VALUES (577, 11, 18, -1, 1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID], [PermissionType], [IsInherited]) VALUES (578, 11, 19, -1, 1)
INSERT [dbo].[SysUserResource] ([ID], [UserID], [ResourceID], [PermissionType], [IsInherited]) VALUES (579, 11, 20, -1, 1)
SET IDENTITY_INSERT [dbo].[SysUserResource] OFF
/****** Object:  Table [dbo].[SysUserLog]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysUserLog](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SessionGUID] [varchar](64) NULL,
	[UserID] [int] NOT NULL,
	[LoginName] [varchar](100) NULL,
	[LoginTime] [datetime] NULL,
	[LogoutTime] [datetime] NULL,
	[IPAddress] [varchar](50) NULL,
 CONSTRAINT [PK_SYSUSERLOG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SysUserLog] ON
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (1, N'3916f7d5-97fa-4ca0-9e0e-66e5a3de1af2', 11, N'jack', CAST(0x0000A71D00E9BEEB AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (2, N'a85c8469-75ca-4593-b25c-e8f5339ee66b', 11, N'jack', CAST(0x0000A71D00EC7368 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (3, N'54bf1f07-c948-4b93-9237-2ff51030f430', 11, N'Jack', CAST(0x0000A71D015DD858 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (4, N'6cfb9ba9-3a49-4717-8f6d-d387fa4b5d14', 11, N'Jack', CAST(0x0000A71D015E808E AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (5, N'f832d01e-d2d8-4257-ac39-fabd6478e756', 11, N'Jack', CAST(0x0000A71D015FE772 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (6, N'a03ab2a1-6dab-42b9-a20b-a74d4bcc62df', 11, N'Jack', CAST(0x0000A71D01625B19 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (7, N'2c7af05e-e64b-44c4-96b8-93771752a8e4', 11, N'Jack', CAST(0x0000A71D01627161 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (8, N'c0b8ef30-d19c-4eb5-a206-5a0f860065e6', 11, N'Jack', CAST(0x0000A71D0162F3B8 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (9, N'5e275446-0d38-48d2-8789-0bd3f6f2948f', 11, N'Jack', CAST(0x0000A71D0163FC60 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (10, N'd831cc4f-a9be-4527-946b-1dca10c508b2', 11, N'Jack', CAST(0x0000A71D01652B9E AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (11, N'bb2c6c9b-1853-4c5c-95cd-1f0b396a39ba', 11, N'Jack', CAST(0x0000A71D0165BE28 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (12, N'9dc4928c-792c-46ed-9018-d01816c194ae', 11, N'Jack', CAST(0x0000A71D0166C09D AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (13, N'5f259e52-ea4d-46f9-9b1b-1bac8e22ff39', 11, N'Jack', CAST(0x0000A71D01676CBC AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (14, N'9649b77f-20ea-43ca-ac0f-f0544aac8f8a', 11, N'Jack', CAST(0x0000A71D01679233 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (15, N'3d397138-1677-4784-b52e-b230687299e7', 11, N'Jack', CAST(0x0000A71D0167DBE5 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (16, N'703e5ac5-e4ca-43b9-96b2-6c1785dd5c1f', 11, N'Jack', CAST(0x0000A71D0167F72B AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (17, N'6e4c491b-1a1c-4fd2-a793-e64dd9149221', 11, N'Jack', CAST(0x0000A71D01688101 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (18, N'6ed4df3d-5046-4589-b50d-edc7181baec6', 11, N'Jack', CAST(0x0000A71D0169402A AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (19, N'068f20a4-a0ac-4d60-8012-de9ca170f04d', 11, N'Jack', CAST(0x0000A71D01696FD2 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (20, N'562f1993-dae6-4163-9a27-d09dadbec3fc', 11, N'Jack', CAST(0x0000A71D016AA477 AS DateTime), CAST(0x0000A71D016AA88C AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (21, N'a1608f9e-076f-49a1-82c7-4f0bcfdd301a', 11, N'Jack', CAST(0x0000A71D016CF927 AS DateTime), CAST(0x0000A71D016D3B0A AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (22, N'6475c460-4f21-49bb-a523-0b87a8572706', 11, N'Jack', CAST(0x0000A71D016D48CF AS DateTime), CAST(0x0000A71D016DA430 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (23, N'5e953862-3fe1-4245-a593-e3fd35f45c97', 11, N'Jack', CAST(0x0000A71D016E370D AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (24, N'd375b56b-b60f-4b4b-a5e4-9de19a2c0d71', 11, N'Jack', CAST(0x0000A71D016FC2D3 AS DateTime), CAST(0x0000A71D016FDFF4 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (25, N'85d24cb3-cde6-49f6-8039-644c61e5594f', 11, N'Jack', CAST(0x0000A71D016FE467 AS DateTime), CAST(0x0000A71D016FEBD5 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (26, N'50bfbed6-443b-4f7e-9827-47b280a81203', 11, N'Jack', CAST(0x0000A71E01171725 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (27, N'1371e148-67da-40bb-982a-a8faf4a5a071', 11, N'Jack', CAST(0x0000A7200094B4D4 AS DateTime), CAST(0x0000A7200094BC7B AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (28, N'5a3dabe1-1834-441b-ac23-4ef8675f8100', 11, N'Jack', CAST(0x0000A7200094D1CB AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (29, N'd319247a-48e5-473c-bc5e-8f1c84eb952e', 25, N'admin', CAST(0x0000A7200096A39D AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (30, N'f9b8503a-4f0a-4c38-a8eb-6f1cef1dda38', 25, N'admin', CAST(0x0000A720009871CE AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (31, N'3c92e194-ffd5-4ce2-b615-9c362a75629c', 25, N'admin', CAST(0x0000A7200099596C AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (32, N'8eb75b72-f03a-49f2-91e2-a6c8bdc0fba6', 25, N'admin', CAST(0x0000A720009A50DF AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (33, N'b1247a5b-e631-4e16-b452-51fc72d4bb4c', 25, N'admin', CAST(0x0000A720009AA608 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (34, N'50552658-09ff-4a67-b8e7-a17d80c4c3e8', 11, N'Jack', CAST(0x0000A72000BC6AE7 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (35, N'3c3d14ce-77ae-451e-9ca6-c5d423dc4341', 25, N'admin', CAST(0x0000A72000C20B69 AS DateTime), CAST(0x0000A72000C21182 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (36, N'81da5a34-455d-43d6-acee-1813daf23f2b', 25, N'admin', CAST(0x0000A72000C26351 AS DateTime), CAST(0x0000A72000C26943 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (37, N'63768751-3a77-44db-8d3c-bf21b90d609e', 11, N'Jack', CAST(0x0000A72000DF77FF AS DateTime), CAST(0x0000A72000DF7F29 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (38, N'8782e3e4-41d5-45ea-a5bb-0d6b435d2a3d', 11, N'Jack', CAST(0x0000A72000ED05BF AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (39, N'caef7b08-2533-4169-9ae2-40b977366bbc', 11, N'Jack', CAST(0x0000A72000EFF49C AS DateTime), CAST(0x0000A72000EFFAAA AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (40, N'b13734ee-7156-458b-abdf-45930378edc0', 25, N'admin', CAST(0x0000A72000F16DDF AS DateTime), CAST(0x0000A72000F175DF AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (41, N'642d49c3-1393-47d9-841e-b803b390eaf1', 25, N'admin', CAST(0x0000A72000F18253 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (42, N'acc184af-51a5-4c1c-9ed5-1ef98730e05e', 11, N'Jack', CAST(0x0000A72000F24A2A AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (43, N'07846620-7c04-4324-aa55-204cb1458aa0', 11, N'Jack', CAST(0x0000A72000F556D0 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (44, N'f47bce14-de9b-4b60-99f0-c782fafe700b', 11, N'Jack', CAST(0x0000A72000F791FB AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (45, N'e43215f6-9cf0-4a64-8f52-c689efa55e89', 11, N'Jack', CAST(0x0000A72000F84ED8 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (46, N'103d45e1-08ef-4376-be4a-a2739262a021', 11, N'Jack', CAST(0x0000A72000F8F36E AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (47, N'cc850c0b-b4ec-45a2-b5dc-930907ff7e47', 11, N'Jack', CAST(0x0000A72000FC4059 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (48, N'77c2a898-a6a1-42da-baaa-2bf0fb05daaf', 11, N'Jack', CAST(0x0000A72000FD67A8 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (49, N'9e0ed01c-2b73-4a2a-a988-11c42bfff057', 11, N'Jack', CAST(0x0000A72001037404 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (50, N'bba478dc-80d0-4055-8d8f-4ff39b29e462', 11, N'Jack', CAST(0x0000A720011586DC AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (51, N'7c3c3c58-030b-4cf8-b47d-4108a065c0ac', 11, N'Jack', CAST(0x0000A7200115E8C3 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (52, N'c1fa59ed-bc3f-4022-9987-78e928ca48f1', 11, N'Jack', CAST(0x0000A72001183542 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (53, N'4432734f-82ae-47d1-af7a-31e312a39ccc', 11, N'Jack', CAST(0x0000A72001192412 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (54, N'512645a4-003a-4101-b025-2ee7a36a5c65', 11, N'Jack', CAST(0x0000A720011970E3 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (55, N'bddc70b7-d570-40db-8a91-e2011c683fdf', 11, N'Jack', CAST(0x0000A720011B5513 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (56, N'316b3081-0cbe-45c9-b066-e4c2a66eb724', 11, N'Jack', CAST(0x0000A720012072C7 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (57, N'80ecb980-daae-4b81-832e-0359fe68562a', 11, N'Jack', CAST(0x0000A7200153C7D5 AS DateTime), CAST(0x0000A7200153E203 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (58, N'da1faf53-0622-4a45-89a9-d6cf099263d5', 11, N'Jack', CAST(0x0000A720015403E4 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (59, N'd84235d6-54d2-4017-bae2-dfb5d6a86277', 11, N'Jack', CAST(0x0000A72001544C15 AS DateTime), CAST(0x0000A720015462CC AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (60, N'0b8a7b72-8680-4c25-87ad-80c0a84fb4ca', 11, N'Jack', CAST(0x0000A720015615AF AS DateTime), CAST(0x0000A72001567689 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (61, N'b0b66c75-f159-4147-84fa-72e5c00dee5f', 11, N'Jack', CAST(0x0000A720015680AD AS DateTime), CAST(0x0000A720015746BB AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (62, N'0a13d4a6-ff0d-42f1-b15a-ef8b87134091', 11, N'Jack', CAST(0x0000A7200157CF6D AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (63, N'2b087520-fb41-48f6-9786-71a780bb528d', 11, N'Jack', CAST(0x0000A7200159320C AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (64, N'18e1e816-9bc2-4dea-8e80-62c44750f6eb', 11, N'Jack', CAST(0x0000A720015A5492 AS DateTime), CAST(0x0000A720015A8E2A AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (65, N'7a751632-c7c5-4d17-8a61-cc73b2957d4d', 11, N'Jack', CAST(0x0000A720015B32E5 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (66, N'1336ebcb-5e07-429c-94bf-99200d9b3095', 11, N'Jack', CAST(0x0000A72001605BF2 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (67, N'c3bbad0a-21d2-466d-b615-6ba37fe2bd38', 11, N'Jack', CAST(0x0000A72001609263 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (68, N'c73f8c74-1536-41f4-9657-84852e07e72d', 11, N'Jack', CAST(0x0000A7200160D5AE AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (69, N'5ee85b13-d686-4376-919d-663594baed91', 11, N'Jack', CAST(0x0000A7200161BA8F AS DateTime), CAST(0x0000A72001628B24 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (70, N'77ee5a3f-c166-48c6-8488-1e3c8af9e311', 11, N'Jack', CAST(0x0000A7200162929B AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (71, N'c6a2d6a7-f38c-4e4f-a70b-b9f6c837904d', 11, N'Jack', CAST(0x0000A7200165C601 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (72, N'bbbc0821-f13a-4a13-8ee9-933c80909017', 11, N'Jack', CAST(0x0000A7200165FD42 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (73, N'e97077f2-e648-4aaa-a0e7-6e874aa95595', 11, N'Jack', CAST(0x0000A720016B0AA7 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (74, N'2b2c446c-fc64-4fef-97d2-e619fe5896f5', 11, N'Jack', CAST(0x0000A720016C096C AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (75, N'baa1622d-da42-4b93-80f6-51a7464467f2', 11, N'Jack', CAST(0x0000A720016D259C AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (76, N'4c6ab203-9c48-4f07-b628-7dfc74e20973', 11, N'Jack', CAST(0x0000A720016F095E AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (77, N'c6ea70ae-6a8e-4709-a216-2c80c49bba4a', 11, N'Jack', CAST(0x0000A72001706024 AS DateTime), CAST(0x0000A7200171DD62 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (78, N'11e62eb0-8d45-4712-8e41-ae332fd18020', 11, N'Jack', CAST(0x0000A7200171E573 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (79, N'd2777653-df1b-4662-bb11-7a6ce393f224', 11, N'Jack', CAST(0x0000A72001734EFF AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (80, N'b98bc369-3fef-4a9e-93f4-0380acaeefb4', 11, N'Jack', CAST(0x0000A720017369B3 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (81, N'b4ce4bbe-52b5-4e36-9df7-8048378fdf6a', 11, N'Jack', CAST(0x0000A7200173D366 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (82, N'2aa10a11-e8c3-4a4d-b652-5dc733dd34b7', 11, N'Jack', CAST(0x0000A72001772A97 AS DateTime), CAST(0x0000A72001775814 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (83, N'31c33dbc-5044-40b6-a449-a4e8f0db3dae', 11, N'Jack', CAST(0x0000A7200177C064 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (84, N'f6077c41-0302-40aa-9ea3-3399832c5c8c', 11, N'Jack', CAST(0x0000A72001787B0F AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (85, N'e6e077a6-1f8a-433e-bf5d-b8016646c28d', 11, N'Jack', CAST(0x0000A720017915AB AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (86, N'6c5bf86a-5777-4770-9e15-58a069d92e96', 11, N'Jack', CAST(0x0000A720017AE77A AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (87, N'51d96de2-6183-4b90-ac0b-b7c15bbf5f15', 11, N'Jack', CAST(0x0000A721008A27EA AS DateTime), CAST(0x0000A721008A4FA9 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (88, N'03d3f501-7804-4300-bca9-d7613dd5d1e2', 11, N'Jack', CAST(0x0000A721008A531F AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (89, N'7e57cfe9-f858-4b26-9297-87262b0790af', 11, N'Jack', CAST(0x0000A721009A1F5C AS DateTime), CAST(0x0000A721009A5126 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (90, N'0400e721-ef9c-442b-a073-866053b207d7', 11, N'Jack', CAST(0x0000A721009A552B AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (91, N'c518148e-7731-460a-8b6f-50020d285ebc', 11, N'Jack', CAST(0x0000A721009B514C AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (92, N'3f8b7491-b24b-4fd7-b2bc-719b3b03b2ae', 11, N'Jack', CAST(0x0000A721009BAC19 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (93, N'01accc08-aeef-4d3f-bfd7-90a445cbe898', 11, N'Jack', CAST(0x0000A721009C1E82 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (94, N'036dea44-0c9e-4a42-b167-404c9b64978c', 11, N'Jack', CAST(0x0000A72100B40528 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (95, N'101ae06f-6a94-4a68-97c2-ba93d524c3dc', 11, N'Jack', CAST(0x0000A72100BADD24 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (96, N'a2631948-1c27-441b-acea-02f3de6ea307', 11, N'Jack', CAST(0x0000A72100BB30C2 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (97, N'5e0e8cbc-e281-462e-bdcd-efb040370b9b', 11, N'Jack', CAST(0x0000A72100C5F245 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (98, N'6dc40ee2-817b-4a7a-808b-d8b612cf401b', 11, N'Jack', CAST(0x0000A72100EAE60A AS DateTime), CAST(0x0000A72100EB2CDA AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (99, N'8101a954-49f9-49a7-a487-6c3846724a27', 11, N'Jack', CAST(0x0000A72100EB314B AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (100, N'529d22dc-dc86-4987-94a9-6d66283ac13f', 11, N'Jack', CAST(0x0000A72100F8650D AS DateTime), NULL, N'127.0.0.1')
GO
print 'Processed 100 total records'
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (101, N'c31f4800-0ed0-4ab5-aa4f-84e7ed925f9b', 11, N'Jack', CAST(0x0000A72100FDA301 AS DateTime), CAST(0x0000A72100FDBF25 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (102, N'00878b67-3767-4259-b1d5-629cd7a05eeb', 25, N'admin', CAST(0x0000A72100FDC39B AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (103, N'c4fd26df-54f5-403d-a23d-a82b378418a9', 11, N'Jack', CAST(0x0000A72100FF3A40 AS DateTime), CAST(0x0000A72100FF42E2 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (104, N'f3165ad7-c59e-4ee5-b1b7-580cceafe1ad', 25, N'admin', CAST(0x0000A72100FF472F AS DateTime), CAST(0x0000A72100FF6AA9 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (105, N'13ff6d39-06bd-4f5e-bb59-6600c299c221', 25, N'admin', CAST(0x0000A72100FF6F7D AS DateTime), CAST(0x0000A721010179FA AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (106, N'72157186-98d5-4bd3-bbf5-32eabd8e3e8b', 25, N'admin', CAST(0x0000A72101017E1D AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (107, N'10dd62f8-f9d2-4e3d-9043-3410d7382508', 11, N'Jack', CAST(0x0000A721015DB9D5 AS DateTime), CAST(0x0000A721015DDBF8 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (108, N'f6012bca-7d77-46f1-b18c-81d0f29a8aef', 25, N'admin', CAST(0x0000A721015DE027 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (109, N'fb01f8c2-cf0c-434e-9149-11c20fe05d6b', 25, N'admin', CAST(0x0000A721015F2812 AS DateTime), CAST(0x0000A721015F9DBE AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (110, N'15aeafd8-9a1a-4d3f-9645-0154313bed00', 25, N'admin', CAST(0x0000A72101604512 AS DateTime), CAST(0x0000A7210163FBE5 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (111, N'2ca4df86-673a-4432-92bc-872541be9012', 11, N'Jack', CAST(0x0000A72101648731 AS DateTime), CAST(0x0000A7210164C13E AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (112, N'08399db6-5af8-4161-8cbd-51e3957e8ed3', 11, N'Jack', CAST(0x0000A7210164C808 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (113, N'03cf30a3-b73d-44b4-8e99-fdfc8e01daee', 11, N'Jack', CAST(0x0000A7210164E642 AS DateTime), CAST(0x0000A72101666F7F AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (114, N'48a0a4db-2c3c-4dd4-9782-aabcbec0ccf8', 11, N'Jack', CAST(0x0000A721016676AC AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (115, N'54265830-aa97-4712-8096-a61d127581bb', 11, N'Jack', CAST(0x0000A7210167143D AS DateTime), CAST(0x0000A7210167202C AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (116, N'0eb9c678-d89c-4389-8d22-c6de851ee122', 11, N'Jack', CAST(0x0000A72101672401 AS DateTime), CAST(0x0000A72101672E0E AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (117, N'907eb3a0-22e5-4427-995e-ba0e06b7caa7', 11, N'Jack', CAST(0x0000A721016735B7 AS DateTime), CAST(0x0000A721016794EA AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (118, N'98c77c24-040e-46f4-903d-fc6f735fb520', 25, N'admin', CAST(0x0000A72101679845 AS DateTime), CAST(0x0000A7210167ACF2 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (119, N'ac097013-7e0e-4aca-b81d-d6f65e3a925a', 11, N'Jack', CAST(0x0000A721016ACAA2 AS DateTime), CAST(0x0000A721016BB6CD AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (120, N'e86c1287-994b-4eb0-84a9-c1ddf806460c', 11, N'Jack', CAST(0x0000A721016BBE86 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (121, N'7538ff70-f546-4c41-acea-e5c69b7e8ca7', 11, N'Jack', CAST(0x0000A721016C0D31 AS DateTime), CAST(0x0000A721016CA20E AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (122, N'610a4570-47dd-4cfb-aa14-0e69a32c158e', 11, N'Jack', CAST(0x0000A721016CA6C4 AS DateTime), CAST(0x0000A721016CCF61 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (123, N'096a89e9-10b2-424d-9336-34b705237893', 11, N'Jack', CAST(0x0000A721016CD391 AS DateTime), CAST(0x0000A721016D055F AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (124, N'fa34a18c-e288-4b5a-89bd-a9ad2db2f6a6', 11, N'Jack', CAST(0x0000A721016D0957 AS DateTime), CAST(0x0000A721016D1A70 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (125, N'6f38b938-35e0-49f4-8ed6-4e3786c1f856', 11, N'Jack', CAST(0x0000A721016D224F AS DateTime), CAST(0x0000A721016D3F0E AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (126, N'c7a3bd45-6b18-4b1c-90ea-b249c0153eb5', 11, N'Jack', CAST(0x0000A721016E0BA6 AS DateTime), CAST(0x0000A721016E1C61 AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (127, N'1ccc65b3-ea53-4257-9319-43ae8e117cd9', 11, N'Jack', CAST(0x0000A721016E4D5B AS DateTime), CAST(0x0000A721016EB0CD AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (128, N'eb557174-f1bd-407c-b988-67d70d2a3f3b', 11, N'Jack', CAST(0x0000A721016EB486 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (129, N'21788d06-e93b-4675-b5a0-6b75116b087b', 11, N'Jack', CAST(0x0000A721017E44AC AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (130, N'61c2c7e9-d6f7-4b04-b59d-ed819b765be0', 11, N'Jack', CAST(0x0000A721017F738C AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (131, N'567cf3a0-d0fc-47a3-8c71-45615d37f629', 11, N'Jack', CAST(0x0000A722008C7721 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (132, N'019fbcae-22bd-41fe-a2aa-92efede81448', 11, N'Jack', CAST(0x0000A72200911146 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (133, N'474d22df-2269-4ceb-a90c-84f4ff78c84f', 11, N'Jack', CAST(0x0000A7220097D414 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (134, N'd9c224c4-ced0-47de-b32f-a5f55ea958a3', 11, N'Jack', CAST(0x0000A72200A6087E AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (135, N'e29bfb6e-41b7-4a76-b041-59ebcca5f076', 11, N'Jack', CAST(0x0000A72200A64EA9 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (136, N'6d1ae70a-d40b-4c7c-afd2-829f9486196d', 11, N'Jack', CAST(0x0000A72200A70A5E AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (137, N'2ccc91a8-7d29-4af4-a660-99b56beea2c8', 11, N'Jack', CAST(0x0000A72200C53052 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (138, N'05c9c153-5cd0-41d4-9338-f0d72443a62c', 11, N'Jack', CAST(0x0000A72200E190DE AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (139, N'b526cb25-3a10-42d0-b69b-45c7d584aaea', 11, N'Jack', CAST(0x0000A72200EB2C56 AS DateTime), CAST(0x0000A72200EB40FE AS DateTime), N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (140, N'6b6088e1-baa0-4cbe-81ce-df2b0aa7b876', 25, N'admin', CAST(0x0000A72200EB45A0 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (141, N'd5b8c814-2f8c-448e-9565-7cd2b33223f9', 25, N'admin', CAST(0x0000A72200EC1B50 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (142, N'8280cde0-093f-4b1a-8e40-88d53b4721b7', 11, N'Jack', CAST(0x0000A7220156AE5E AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (143, N'00dedf5e-48d0-49b5-9390-637474b59b61', 11, N'Jack', CAST(0x0000A72201606D37 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (144, N'fe9ffab5-b1b1-4d92-ac56-e7d78d88ee8d', 11, N'Jack', CAST(0x0000A72201633F0D AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (145, N'8d005195-bb94-4eb0-a8d8-e9984d42f3bb', 11, N'Jack', CAST(0x0000A72201687F80 AS DateTime), NULL, N'127.0.0.1')
INSERT [dbo].[SysUserLog] ([ID], [SessionGUID], [UserID], [LoginName], [LoginTime], [LogoutTime], [IPAddress]) VALUES (146, N'edd6c8c3-104f-4e2a-8e41-7cfbeac682c1', 11, N'Jack', CAST(0x0000A722016B47B6 AS DateTime), NULL, N'127.0.0.1')
SET IDENTITY_INSERT [dbo].[SysUserLog] OFF
/****** Object:  Table [dbo].[SysUser]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[LoginName] [varchar](50) NULL,
	[AccountType] [smallint] NOT NULL,
	[Status] [tinyint] NULL,
	[Password] [varchar](200) NULL,
	[PasswordFormat] [smallint] NULL,
	[PasswordSalt] [varchar](200) NULL,
	[EMail] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SysUser] ON
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (1, N'秦三', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (2, N'魏琼', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (3, N'马波', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (4, N'李颖', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (5, N'张恒丰', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (6, N'路天明', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (7, N'陈盖茨', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (8, N'白菲特', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (9, N'张明', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (10, N'李杰', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (11, N'飞羽', N'Jack', 0, 0, N'J+tzS6TvxyXZvFrDrq3VgJ21b4s=', 3, N'wMOs1giDWmRm730Jl/bPU6qbD0WRX9jkDCyofG+s+ZA=', NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (12, N'雪莉', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (13, N'杰米', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (14, N'旺财', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (15, N'大汉', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (16, N'小威', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (17, N'崔红', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (18, N'柴静', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (24, N'testuser', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysUser] ([ID], [UserName], [LoginName], [AccountType], [Status], [Password], [PasswordFormat], [PasswordSalt], [EMail]) VALUES (25, N'管理员', N'admin', -1, 0, N'L4iJim0FbyWHm43Rqu0wpqBVsHHMrQLjnWWQ1AqP80c=', 5, N'z6w4rNpjs7kDZZ5Wjx3B/PjDQ7w51mbDtvHgC0EOFfs=', NULL)
SET IDENTITY_INSERT [dbo].[SysUser] OFF
/****** Object:  Table [dbo].[SysRoleUser]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRoleUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[UserID] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SysRoleUser] ON
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (1, 8, 1)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (2, 7, 2)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (3, 4, 3)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (4, 3, 4)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (5, 2, 5)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (6, 1, 6)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (7, 9, 7)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (8, 9, 8)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (9, 10, 11)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (10, 10, 12)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (11, 11, 9)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (12, 11, 10)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (13, 12, 13)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (14, 12, 14)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (15, 13, 15)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (16, 13, 16)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (17, 14, 17)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (18, 2, 18)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (24, 1, 1)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (31, 23, 11)
INSERT [dbo].[SysRoleUser] ([ID], [RoleID], [UserID]) VALUES (29, 2, 6)
SET IDENTITY_INSERT [dbo].[SysRoleUser] OFF
/****** Object:  Table [dbo].[SysRoleResource]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRoleResource](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[ResourceID] [int] NOT NULL,
	[PermissionType] [smallint] NOT NULL,
 CONSTRAINT [PK_SYSROLERESOURCEPRIVILEGE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SysRoleResource] ON
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (63, 23, 1, 1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (64, 23, 16, 1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (65, 23, 7, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (66, 23, 18, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (67, 23, 19, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (68, 23, 20, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (74, 25, 1, 1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (75, 25, 15, 1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (76, 25, 2, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (77, 25, 4, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (78, 25, 5, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (79, 25, 6, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (80, 25, 7, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (81, 25, 8, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (82, 25, 9, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (83, 25, 10, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (84, 25, 13, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (85, 25, 18, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (86, 25, 19, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (87, 25, 20, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (88, 25, 21, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (89, 25, 23, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (90, 25, 34, -1)
INSERT [dbo].[SysRoleResource] ([ID], [RoleID], [ResourceID], [PermissionType]) VALUES (91, 25, 35, -1)
SET IDENTITY_INSERT [dbo].[SysRoleResource] OFF
/****** Object:  Table [dbo].[SysRole]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysRole](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleCode] [varchar](50) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SysRole] ON
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (1, N'employees', N'普通员工')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (2, N'CXO', N'部门总监')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (3, N'hrmanager', N'人事经理')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (4, N'director', N'主管总监')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (7, N'deputygeneralmanager', N'副总经理')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (8, N'generalmanager', N'总经理')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (9, N'salesmate', N'业务员(Sales)')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (10, N'techmate', N'打样员(Tech)')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (11, N'merchandiser', N'跟单员(Made)')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (12, N'qcmate', N'质检员(QC)')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (13, N'expressmate', N'包装员(Express)')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (14, N'finacemanager', N'财务经理')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (22, N'Storage', N'库管')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (23, N'jiancha', N'监察员')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (24, N'archieve', N'归档员')
INSERT [dbo].[SysRole] ([ID], [RoleCode], [RoleName]) VALUES (25, N'dsfa455', N'testrole')
SET IDENTITY_INSERT [dbo].[SysRole] OFF
/****** Object:  Table [dbo].[SysResource]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysResource](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ResourceTypeID] [smallint] NOT NULL,
	[ResourceName] [nvarchar](50) NOT NULL,
	[ParentID] [int] NOT NULL,
	[StyleClass] [nvarchar](200) NULL,
	[UrlAction] [nvarchar](50) NULL,
	[DataAction] [varchar](20) NULL,
	[OrderNum] [smallint] NULL,
	[CanNotBeDeleted] [smallint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SysResource] ON
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (1, 1, N'基础数据系统', 0, N'fa fa-gift fa-lg', NULL, NULL, 1, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (2, 2, N'用户数据', 1, NULL, N'user/list', NULL, 1, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (4, 5, N'新增', 2, NULL, NULL, N'add', 1, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (5, 5, N'编辑', 2, NULL, NULL, N'edit', 2, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (6, 5, N'删除', 2, NULL, NULL, N'delete', 3, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (7, 2, N'角色数据', 1, NULL, N'role/list', NULL, 2, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (8, 5, N'新增', 7, NULL, NULL, N'add', 1, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (9, 5, N'编辑', 7, NULL, NULL, N'edit', 2, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (10, 5, N'删除', 7, NULL, NULL, N'delete', 3, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (11, 2, N'角色用户维护', 1, NULL, N'roleuser/list', NULL, 3, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (13, 5, N'添加', 11, NULL, NULL, N'add', 1, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (15, 5, N'删除', 11, NULL, NULL, N'delete', 2, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (16, 2, N'资源数据', 1, NULL, N'resource/list', NULL, 4, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (18, 5, N'新增', 16, NULL, NULL, N'add', 1, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (19, 5, N'编辑', 16, NULL, NULL, N'edit', 2, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (20, 5, N'删除', 16, NULL, NULL, N'delete', 3, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (21, 2, N'角色授权', 1, NULL, N'permission/role', NULL, 5, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (23, 5, N'保存', 21, NULL, NULL, N'save', 1, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (25, 1, N'流程管理系统', 0, N'fa fa-globe fa-lg', NULL, NULL, 2, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (26, 2, N'流程定义', 25, NULL, N'workflow/process', NULL, 1, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (27, 2, N'表单定义', 25, NULL, N'workflow/form', NULL, 2, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (28, 2, N'流程实例', 25, NULL, N'workflow/processinstance', NULL, 3, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (29, 2, N'活动实例', 25, NULL, N'workflow/activityinstance', NULL, 4, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (30, 1, N'日志审核系统', 0, N'fa fa-car fa-lg', NULL, NULL, 3, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (31, 2, N'异常日志', 30, NULL, N'log/exception', NULL, 1, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (32, 2, N'登录日志', 30, NULL, N'log/login', NULL, 2, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (33, 2, N'操作日志', 30, NULL, N'log/operation', NULL, 3, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (34, 2, N'用户授权', 1, NULL, N'permission/user', NULL, 6, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (35, 5, N'保存', 34, NULL, NULL, N'save', 1, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (36, 1, N'测试数据', 0, N'fa fa-asterisk fa-lg', N'', NULL, 4, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (38, 2, N'testform', 36, N'', N'profile/index', NULL, 0, 0)
INSERT [dbo].[SysResource] ([ID], [ResourceTypeID], [ResourceName], [ParentID], [StyleClass], [UrlAction], [DataAction], [OrderNum], [CanNotBeDeleted]) VALUES (40, 5, N'新增', 38, N'', N'', NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[SysResource] OFF
/****** Object:  Table [dbo].[SysMessage]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysMessage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MsgType] [int] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Status] [tinyint] NOT NULL,
	[MsgGUID] [varchar](100) NULL,
	[SenderID] [int] NOT NULL,
	[Sender] [nvarchar](50) NOT NULL,
	[SendTime] [datetime] NULL,
	[RecieverID] [int] NULL,
	[Reciever] [nvarchar](50) NULL,
	[RecievedTime] [datetime] NULL,
	[AppName] [nvarchar](50) NULL,
	[AppInstanceID] [int] NULL,
	[FormRef] [varchar](50) NULL,
	[FormCode] [varchar](50) NULL,
	[FormText] [nvarchar](100) NULL,
 CONSTRAINT [PK_SYSMESSAGE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SysEmployee]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysEmployee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DeptID] [int] NOT NULL,
	[EmpCode] [varchar](50) NOT NULL,
	[EmpName] [nvarchar](50) NOT NULL,
	[UserID] [int] NULL,
	[Mobile] [varchar](20) NULL,
	[EMail] [varchar](100) NULL,
	[ManagerID] [int] NULL,
	[Remark] [nvarchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SysEmployee] ON
INSERT [dbo].[SysEmployee] ([ID], [DeptID], [EmpCode], [EmpName], [UserID], [Mobile], [EMail], [ManagerID], [Remark]) VALUES (1, 2, N'0001', N'小明', 6, NULL, NULL, 5, NULL)
INSERT [dbo].[SysEmployee] ([ID], [DeptID], [EmpCode], [EmpName], [UserID], [Mobile], [EMail], [ManagerID], [Remark]) VALUES (2, 2, N'0002', N'张经理', 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysEmployee] ([ID], [DeptID], [EmpCode], [EmpName], [UserID], [Mobile], [EMail], [ManagerID], [Remark]) VALUES (3, 3, N'0003', N'金经理', 18, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SysEmployee] OFF
/****** Object:  Table [dbo].[SysDepartment]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysDepartment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DeptCode] [varchar](50) NOT NULL,
	[DeptName] [nvarchar](100) NOT NULL,
	[ParentID] [int] NOT NULL,
	[Description] [nvarchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SysDepartment] ON
INSERT [dbo].[SysDepartment] ([ID], [DeptCode], [DeptName], [ParentID], [Description]) VALUES (1, N'CP', N'若驰科技', 0, NULL)
INSERT [dbo].[SysDepartment] ([ID], [DeptCode], [DeptName], [ParentID], [Description]) VALUES (2, N'TH', N'技术部', 1, NULL)
INSERT [dbo].[SysDepartment] ([ID], [DeptCode], [DeptName], [ParentID], [Description]) VALUES (3, N'HR', N'人事部', 1, NULL)
INSERT [dbo].[SysDepartment] ([ID], [DeptCode], [DeptName], [ParentID], [Description]) VALUES (4, N'FN', N'财务部', 1, NULL)
SET IDENTITY_INSERT [dbo].[SysDepartment] OFF
/****** Object:  UserDefinedFunction [dbo].[SplitInts]    Script Date: 01/09/2022 21:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Besley, SlickOne Team>
-- Create date: <2017-01-11>
-- Description:	<字符串分割函数>
--- http://stackoverflow.com/questions/11102358/how-to-pass-an-array-into-a-sql-server-stored-procedure
-- =============================================
CREATE FUNCTION [dbo].[SplitInts]
(
   @List      VARCHAR(MAX),
   @Delimiter VARCHAR(255)
)
RETURNS TABLE
AS
  RETURN ( SELECT Item = CONVERT(INT, Item) FROM
      ( SELECT Item = x.i.value('(./text())[1]', 'varchar(max)')
        FROM ( SELECT [XML] = CONVERT(XML, '<i>'
        + REPLACE(@List, @Delimiter, '</i><i>') + '</i>').query('.')
          ) AS a CROSS APPLY [XML].nodes('i') AS x(i) ) AS y
      WHERE Item IS NOT NULL
  );
GO
/****** Object:  StoredProcedure [dbo].[pr_com_TotalCountQuery]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=============================================
--用途：分页存储过程(对有主键的表效率极高)
--说明：
功能描述:  通用存储过程-获取分页数据  
参数说明：
调试记录： 
=============================================
修改历史：
修 改 人：   
修改日期：
修改说明： 
=============================================*/
create PROCEDURE [dbo].[pr_com_TotalCountQuery]
	@sql	nvarchar(max),
	@rowsCount  int output
AS 

BEGIN

	SET NOCOUNT ON

	DECLARE @strSQLCount nvarchar(max)
	DECLARE @params nvarchar(500)
	SET @strSQLCount = 'SELECT 
		@total = COUNT(1)
		FROM (' +
			@sql
			+ ')TXYZ139MG129'

	SET @params = '@total int OUTPUT'
	EXEC sp_executesql @strSQLCount, @params, @total=@rowsCount OUTPUT

	RETURN @rowsCount

END
GO
/****** Object:  StoredProcedure [dbo].[pr_com_TotalCount]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=============================================
--用途：分页存储过程(对有主键的表效率极高)
--说明：
功能描述:  通用存储过程-获取分页数据  
参数说明：
调试记录： 
=============================================
修改历史：
修 改 人：   
修改日期：
修改说明： 
=============================================*/

create PROCEDURE [dbo].[pr_com_TotalCount]
	@tblName	nvarchar(255),		--表名称
	@strWhere	nvarchar(1024) = '',--查询条件, 不加Where 关键字
	@rowsCount  int output
AS 

BEGIN

	SET NOCOUNT ON

	DECLARE @strSQL nvarchar(4000)
	DECLARE @strSQLCount nvarchar(2000)
	DECLARE @params nvarchar(500)

	IF (@strWhere = '')
		BEGIN
			SET @strSQLCount = 'SELECT @total=COUNT(1) '
						+ ' FROM [' + @tblName + ']'
		END
	ELSE
		BEGIN
			SET @strSQLCount = 'SELECT @total=COUNT(1) '
						+ ' FROM [' + @tblName + ']'
						+ ' WHERE ' + @strWhere
		END
	
	SET @params = '@total int OUTPUT'
	EXEC sp_executesql @strSQLCount, @params, @total=@rowsCount OUTPUT

	RETURN @rowsCount

END
GO
/****** Object:  StoredProcedure [dbo].[pr_com_QuerySQLPaged]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Stored Procedure

create PROCEDURE  [dbo].[pr_com_QuerySQLPaged]      
     @Query nvarchar(MAX), --SQL语句    
     @PageSize int, --每页大小   
     @CurrentPage  int ,  --当前页码   
     @Field nvarchar(40)='', --排序字段   
     @Order nvarchar(10) = 'asc ' --排序顺序   
AS    
    declare @PageCount int,
	        @TempSize int,    
			@TempNum int,  
			@strSQL varchar(max),
			@strField varchar(40),   
			@strFielddesc varchar(40),
			@Tempindex int 

    --0,1都做第一页处理
	if (@currentPage = 0)
		set @currentPage = 1

    set @TempNum = @CurrentPage * @PageSize    
	set @strField = ''
	set @strFielddesc = ''

	--计算总页数
	declare @strCountSQL nvarchar(MAX)
	set @strCountSQL = 'SELECT @total=COUNT(1) FROM (' + @Query + ')T'

	--总记录数
	DECLARE @rowsCount int
	DECLARE @params nvarchar(500)
	SET @params = '@total int OUTPUT'
	EXEC sp_executesql @strCountSQL, @params, @total=@rowsCount OUTPUT

	--根据总记录数，计算页数
	SET @PageCount = ceiling(convert(float, @rowsCount) / convert(float, @PageSize))

	--超过最后一页，显示尾页
    if(@CurrentPage>=@PageCount)    
        set @TempSize=@rowsCount-(@PageCount-1)*@PageSize    
    else  
        set @TempSize=@PageSize  

	SET @Tempindex=Charindex('projcode',@Query,0)
    if( @Tempindex>0 and @Tempindex<Charindex('from',@Query,0))
	begin
		if(@Field<>'' and @Field<>'projcode')
		begin
			set @strField = ',projcode ';
			set	@strFielddesc =',projcode desc ';
		end 
	end 

	--分页SQL
    if(@Order='desc')    
    begin    
      set @strSQL = '
            select *   
            from (   
                    select top '+CONVERT(varchar(10),@TempSize)+' *   
                    from (  
                            select top '+CONVERT(varchar(10),@TempNum)+' *   
                            from ('+@Query+') as t0   
                            order by '+@Field+' desc '+@strField+'  
                    ) as t1   
                    order by '+@Field+@strFielddesc+' 
            ) as t2   
            order by '+@Field+' desc' +@strField   
    end    
    else    
    begin    
      set @strSQL = '
            select *   
            from (  
                    select top '+CONVERT(varchar(10),@TempSize)+' *   
                    from (  
                            select top '+ CONVERT(varchar(10), @TempNum ) + ' *   
                            from ('+@Query+') as t0  
                            order by '+@Field+' asc '+@strField +'
                    ) as t1   
                    order by '+@Field+' desc  '+@strFielddesc+' 
            ) as t2   
            order by '+@Field +@strField  
    end  
    exec(@strSQL)
GO
/****** Object:  UserDefinedFunction [dbo].[func_splitstring]    Script Date: 01/09/2022 21:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[func_splitstring] ( @stringToSplit nvarchar(4000) )
RETURNS
 @returnList TABLE ([ID] int)
AS
BEGIN

 DECLARE @name NVARCHAR(255)
 DECLARE @pos INT

 WHILE CHARINDEX(',', @stringToSplit) > 0
 BEGIN
  SELECT @pos  = CHARINDEX(',', @stringToSplit)  
  SELECT @name = SUBSTRING(@stringToSplit, 1, @pos-1)
  

  INSERT INTO @returnList 
  SELECT CONVERT(INT,  @name)

  SELECT @stringToSplit = SUBSTRING(@stringToSplit, @pos+1, LEN(@stringToSplit)-@pos)
 END

 INSERT INTO @returnList
 SELECT @stringToSplit

 RETURN
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_Split]    Script Date: 01/09/2022 21:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_Split]
(
@SourceSql nvarchar(max),--源分隔字符串
@StrSeprate varchar(10)--分隔符
)
returns @temp table(ID nvarchar(max))
as 
begin
	declare @i int
	set @SourceSql=rtrim(ltrim(@SourceSql))
	set @i=charindex(@StrSeprate,@SourceSql)
	while @i>=1
	begin
		insert @temp values(left(@SourceSql,@i-1))
		set @SourceSql=substring(@SourceSql,@i+1,len(@SourceSql)-@i)
		set @i=charindex(@StrSeprate,@SourceSql)
	end
	if @SourceSql<>'\'
	insert @temp values(@SourceSql)
	return 
end
GO
/****** Object:  Table [dbo].[EavEntityDef]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EavEntityDef](
	[ID] [int] NOT NULL,
	[EntityTitle] [nvarchar](100) NOT NULL,
	[EntityName] [nvarchar](100) NOT NULL,
	[EntityCode] [varchar](100) NULL,
	[TemplateContent] [nvarchar](max) NULL,
	[HTMLContent] [nvarchar](max) NULL,
	[Description] [nvarchar](1000) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (1, N'请假申请', N'员工请假表单', N'ApplyLeaveForm', NULL, NULL, N'填写请假信息，填写审核意见。', CAST(0x0000A53800000000 AS DateTime), NULL)
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (2, N'报销申请', N'财务报销表单', N'ApplyExpenseAccountForm', NULL, NULL, NULL, CAST(0x0000A53D00B89504 AS DateTime), NULL)
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (8, N'title', N'name', N'code', NULL, NULL, N'description', CAST(0x0000A53F015D5B5E AS DateTime), NULL)
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (12, N'titel2', N'name2', N'code2', N'<div style="z-index: 44;" class="span12 ui-sortable" id="selected-content">
                    <div style="z-index: 45;" class="row-fluid" id="form-title-div">
                        <input value="titel2" class="input-large span12" placeholder="请输入表单标题..." id="txtFormTitle" onclick="kmaster.popupEntityDef();" type="text">
                    </div>
                    <div style="z-index: 46;" class="row-fluid">
                        <div style="z-index: 47;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1001" style="z-index: 7;" class="droppedField">
                        <label class="control-label">姓名</label>
                        <input name="txtname" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;EntityDefID&quot;:12,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;姓名&quot;,&quot;AttrCode&quot;:&quot;txtname&quot;,&quot;AttrDataType&quot;:&quot;1&quot;,&quot;FieldInputType&quot;:1,&quot;IsMandatory&quot;:false}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
                        <div style="z-index: 48;" class="span6 well droppedFields ui-droppable"></div>
                    </div>
                    <div style="z-index: 49;" class="row-fluid">
                        <div class="span12 well action-bar droppedFields ui-droppable" style="min-height: 80px; z-index: 50;"></div>
                    </div>
                </div>', N'', N'desc', CAST(0x0000A53F016142DA AS DateTime), NULL)
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (32, N'差旅报销单', N'差旅报销表单', N'CLBXBCA80', N'<div style="z-index: 76;" class="span12 ui-sortable" id="selected-content">
                    <div style="z-index: 77;" class="row-fluid" id="form-title-div">
                        <input value="差旅报销单" class="input-large span12" placeholder="请输入表单标题..." id="txtFormTitle" onclick="kmaster.popupEntityDef();" type="text">
                    </div>
                    <div style="z-index: 78;" class="row-fluid">
                        <div style="z-index: 79;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1001" style="z-index: 75;" class="droppedField">
                        <label class="control-label">出差说明</label>
                        <input name="CCSMU12" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:88,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;出差说明&quot;,&quot;AttrCode&quot;:&quot;CCSMU12&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
                        <div style="z-index: 80;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1002" style="z-index: 74;" class="date droppedField">
                        <label class="control-label">开始日期</label>
                        <input name="KSRJQ51" class="ctrl-date form_datetime" size="16" value="2015-06-15 14:45" readonly="" type="text">
                        
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:89,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1002&quot;,&quot;AttrName&quot;:&quot;开始日期&quot;,&quot;AttrCode&quot;:&quot;KSRJQ51&quot;,&quot;AttrDataType&quot;:4,&quot;FieldInputType&quot;:7,&quot;Format&quot;:&quot;YYYY/MM/DD&quot;,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
                    </div>
                    
                <div style="z-index: 71;" class="row-fluid"><div style="z-index: 72;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1003" style="z-index: 70;" class="droppedField">
                        <label class="control-label">类别</label>
                        <select name="LBX85" class="ctrl-combobox"><option>火车</option><option>飞机</option><option>轮船</option><option></option></select>
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:90,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1003&quot;,&quot;AttrName&quot;:&quot;类别&quot;,&quot;AttrCode&quot;:&quot;LBX85&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:3,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
<div style="z-index: 73;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1004" style="z-index: 68;" class="droppedField">
                        <label class="control-label" style="vertical-align:top">金额范围</label>
                        <div class="ctrl-radiogroup" style="display: inline-block; z-index: 69;"><span style="display:block;"><input name="JEFWB35" value="1000以内" type="radio">1000以内</span><span style="display:block;"><input name="JEFWB35" value="5000以内" type="radio">5000以内</span><span style="display:block;"><input name="JEFWB35" value="超过5000" type="radio">超过5000</span></div>
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:91,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1004&quot;,&quot;AttrName&quot;:&quot;金额范围&quot;,&quot;AttrCode&quot;:&quot;JEFWB35&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:5,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
</div><div style="z-index: 65;" class="row-fluid"><div style="z-index: 66;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1005" style="z-index: 63;" class="droppedField">
                        <label class="control-label" style="vertical-align:top">备注</label>
                        <div class="ctrl-checkboxgroup" style="display: inline-block; z-index: 64;"><span style="display:block;"><input name="BZT14" value="三次以内出差" type="checkbox">三次以内出差</span><span style="display:block;"><input name="BZT14" value="员工旅游奖励" type="checkbox">员工旅游奖励</span><span style="display:block;"><input name="BZT14" value="客户拜访" type="checkbox">客户拜访</span></div>
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:93,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1005&quot;,&quot;AttrName&quot;:&quot;备注&quot;,&quot;AttrCode&quot;:&quot;BZT14&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:4,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
<div style="z-index: 67;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1006" style="z-index: 62;" class="droppedField">
                        <label class="control-label">金额</label>
                        <input name="JEJ41" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:94,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1006&quot;,&quot;AttrName&quot;:&quot;金额&quot;,&quot;AttrCode&quot;:&quot;JEJ41&quot;,&quot;AttrDataType&quot;:2,&quot;FieldInputType&quot;:1,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
</div><div style="z-index: 81;" class="row-fluid">
                        <div class="span12 well action-bar droppedFields ui-droppable" style="min-height: 80px; z-index: 82;"></div>
                    </div></div>', N'
                    
                    <div style="z-index: 78;" class="row-fluid">
                        <div style="z-index: 79;" class="span6 droppedFields"><div id="CTRL-DIV-1001" style="z-index: 75;" class="droppedField">
                        <label class="control-label">出差说明</label>
                        <input name="CCSMU12" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:88,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;出差说明&quot;,&quot;AttrCode&quot;:&quot;CCSMU12&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
                        <div style="z-index: 80;" class="span6 droppedFields"><div id="CTRL-DIV-1002" style="z-index: 74;" class="date droppedField">
                        <label class="control-label">开始日期</label>
                        <input name="KSRJQ51" class="ctrl-date form_datetime" size="16" value="2015-06-15 14:45" readonly="" type="text">
                        
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:89,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1002&quot;,&quot;AttrName&quot;:&quot;开始日期&quot;,&quot;AttrCode&quot;:&quot;KSRJQ51&quot;,&quot;AttrDataType&quot;:4,&quot;FieldInputType&quot;:7,&quot;Format&quot;:&quot;YYYY/MM/DD&quot;,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
                    </div>
                    
                <div style="z-index: 71;" class="row-fluid"><div style="z-index: 72;" class="span6 droppedFields"><div id="CTRL-DIV-1003" style="z-index: 70;" class="droppedField">
                        <label class="control-label">类别</label>
                        <select name="LBX85" class="ctrl-combobox"><option>火车</option><option>飞机</option><option>轮船</option><option></option></select>
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:90,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1003&quot;,&quot;AttrName&quot;:&quot;类别&quot;,&quot;AttrCode&quot;:&quot;LBX85&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:3,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
<div style="z-index: 73;" class="span6 droppedFields"><div id="CTRL-DIV-1004" style="z-index: 68;" class="droppedField">
                        <label class="control-label" style="vertical-align:top">金额范围</label>
                        <div class="ctrl-radiogroup" style="display: inline-block; z-index: 69;"><span style="display:block;"><input name="JEFWB35" value="1000以内" type="radio">1000以内</span><span style="display:block;"><input name="JEFWB35" value="5000以内" type="radio">5000以内</span><span style="display:block;"><input name="JEFWB35" value="超过5000" type="radio">超过5000</span></div>
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:91,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1004&quot;,&quot;AttrName&quot;:&quot;金额范围&quot;,&quot;AttrCode&quot;:&quot;JEFWB35&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:5,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
</div><div style="z-index: 65;" class="row-fluid"><div style="z-index: 66;" class="span6 droppedFields"><div id="CTRL-DIV-1005" style="z-index: 63;" class="droppedField">
                        <label class="control-label" style="vertical-align:top">备注</label>
                        <div class="ctrl-checkboxgroup" style="display: inline-block; z-index: 64;"><span style="display:block;"><input name="BZT14" value="三次以内出差" type="checkbox">三次以内出差</span><span style="display:block;"><input name="BZT14" value="员工旅游奖励" type="checkbox">员工旅游奖励</span><span style="display:block;"><input name="BZT14" value="客户拜访" type="checkbox">客户拜访</span></div>
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:93,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1005&quot;,&quot;AttrName&quot;:&quot;备注&quot;,&quot;AttrCode&quot;:&quot;BZT14&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:4,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
<div style="z-index: 67;" class="span6 droppedFields"><div id="CTRL-DIV-1006" style="z-index: 62;" class="droppedField">
                        <label class="control-label">金额</label>
                        <input name="JEJ41" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:94,&quot;EntityDefID&quot;:32,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1006&quot;,&quot;AttrName&quot;:&quot;金额&quot;,&quot;AttrCode&quot;:&quot;JEJ41&quot;,&quot;AttrDataType&quot;:2,&quot;FieldInputType&quot;:1,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
</div><div style="z-index: 81;" class="row-fluid">
                        <div class="span12 action-bar droppedFields" style="min-height: 80px; z-index: 82;"></div>
                    </div>', N'dafspojh', CAST(0x0000A55701280A97 AS DateTime), CAST(0x0000A56A00B0E7CE AS DateTime))
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (34, N'title354', N'form325', N'form325P62', N'<div style="z-index: 44;" class="span12 ui-sortable" id="selected-content"><div style="z-index: 45;" class="row-fluid" id="form-title-div"><input value="title354" class="input-large span12" placeholder="请输入表单标题..." id="txtFormTitle" onclick="kmaster.popupEntityDef();" type="text"></div><div style="z-index: 46;" class="row-fluid"><div style="z-index: 47;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1001" style="z-index: 7;" class="droppedField">
                        <label class="control-label">etrewtr</label>
                        <input name="etrewtrC66" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:95,&quot;EntityDefID&quot;:34,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;etrewtr&quot;,&quot;AttrCode&quot;:&quot;etrewtrC66&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;ConditionKey&quot;:&quot;&quot;,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div><div style="z-index: 48;" class="span6 well droppedFields ui-droppable"></div></div><div style="z-index: 49;" class="row-fluid"><div class="span12 well action-bar droppedFields ui-droppable" style="min-height: 80px; z-index: 50;"></div></div></div>', N'<div class="row-fluid"><div class="span6 droppedFields"></div><div class="span6 droppedFields"></div></div><div class="row-fluid"><div class="span12 action-bar droppedFields" style="min-height:80px;"></div></div>', N'fdsa', CAST(0x0000A56A00ADF4F8 AS DateTime), NULL)
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (33, N'test8', N'form8', N'form8P62', N'<div style="z-index: 64;" class="span12 ui-sortable" id="selected-content"><div style="z-index: 65;" class="row-fluid" id="form-title-div"><input value="test8" class="input-large span12" placeholder="请输入表单标题..." id="txtFormTitle" onclick="kmaster.popupEntityDef();" type="text"></div><div style="z-index: 66;" class="row-fluid"><div style="z-index: 67;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1001" style="z-index: 63;" class="droppedField">
                        <label class="control-label">文本框</label>
                        <input name="WBKQ64" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:97,&quot;EntityDefID&quot;:33,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;文本框&quot;,&quot;AttrCode&quot;:&quot;WBKQ64&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;ConditionKey&quot;:&quot;&quot;,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div><div style="z-index: 68;" class="span6 well droppedFields ui-droppable"></div></div><div style="z-index: 1;" class="row-fluid"><div style="z-index: 2;" class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1002" style="z-index: 13;" class="droppedField">
                        <label class="control-label">文本框</label>
                        <input name="WBKZ89" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:98,&quot;EntityDefID&quot;:33,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1002&quot;,&quot;AttrName&quot;:&quot;文本框&quot;,&quot;AttrCode&quot;:&quot;WBKZ89&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;ConditionKey&quot;:&quot;&quot;,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
<div style="z-index: 3;" class="span6 well droppedFields ui-droppable"></div>
</div></div>', N'<div style="z-index: 66;" class="row-fluid"><div style="z-index: 67;" class="span6 droppedFields"><div id="CTRL-DIV-1001" style="z-index: 63;" class="droppedField">
                        <label class="control-label">文本框</label>
                        <input name="WBKQ64" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:97,&quot;EntityDefID&quot;:33,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;文本框&quot;,&quot;AttrCode&quot;:&quot;WBKQ64&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;ConditionKey&quot;:&quot;&quot;,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div><div style="z-index: 68;" class="span6 droppedFields"></div></div><div style="z-index: 1;" class="row-fluid"><div style="z-index: 2;" class="span6 droppedFields"><div id="CTRL-DIV-1002" style="z-index: 13;" class="droppedField">
                        <label class="control-label">文本框</label>
                        <input name="WBKZ89" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:98,&quot;EntityDefID&quot;:33,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1002&quot;,&quot;AttrName&quot;:&quot;文本框&quot;,&quot;AttrCode&quot;:&quot;WBKZ89&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;ConditionKey&quot;:&quot;&quot;,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div>
<div style="z-index: 3;" class="span6 droppedFields"></div>
</div>', N'dsafsadf', CAST(0x0000A564010E410B AS DateTime), NULL)
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (35, N'sac', N'dsaf', N'dsafY28', N'<div class="span12 ui-sortable" id="selected-content"><div class="row-fluid" id="form-title-div"><input value=sac class="input-large span12" placeholder="请输入表单标题..." id="txtFormTitle" onclick="kmaster.popupEntityDef();" type="text"></div><div class="row-fluid"><div class="span6 well droppedFields ui-droppable"></div><div class="span6 well droppedFields ui-droppable"></div></div><div class="row-fluid"><div class="span12 well action-bar droppedFields ui-droppable" style="min-height:80px;"></div></div></div>', N'<div class="row-fluid"><div class="span6 droppedFields"></div><div class="span6 droppedFields"></div></div><div class="row-fluid"><div class="span12 action-bar droppedFields" style="min-height:80px;"></div></div>', N'dsaf', CAST(0x0000A56A00AFE197 AS DateTime), CAST(0x0000A56A00AFF30A AS DateTime))
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (36, N'324324', N'sfdsaf', N'sfdsafP60', N'<div class="span12 ui-sortable" id="selected-content"><div class="row-fluid" id="form-title-div"><input value="324324" class="input-large span12" placeholder="请输入表单标题..." id="txtFormTitle" onclick="kmaster.popupEntityDef();" type="text"></div><div class="row-fluid"><div class="span6 well droppedFields ui-droppable"><div id="CTRL-DIV-1001" style="z-index: 7;" class="droppedField">
                        <label class="control-label">sadfdsaf</label>
                        <input name="sadfdsafQ23" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:99,&quot;EntityDefID&quot;:36,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;sadfdsaf&quot;,&quot;AttrCode&quot;:&quot;sadfdsafQ23&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;ConditionKey&quot;:&quot;&quot;,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div><div class="span6 well droppedFields ui-droppable"></div></div><div class="row-fluid"><div class="span12 well action-bar droppedFields ui-droppable" style="min-height:80px;"></div></div></div>', N'<div class="row-fluid"><div class="span6 droppedFields"><div id="CTRL-DIV-1001" style="z-index: 7;" class="droppedField">
                        <label class="control-label">sadfdsaf</label>
                        <input name="sadfdsafQ23" class="ctrl-textbox" placeholder="请输入你的文字..." type="text">
                        <input value="false" class="hiddenMandatory" type="hidden">
                        <input value="{&quot;ID&quot;:99,&quot;EntityDefID&quot;:36,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;sadfdsaf&quot;,&quot;AttrCode&quot;:&quot;sadfdsafQ23&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;ConditionKey&quot;:&quot;&quot;,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}" class="hiddenAttributeEntity" type="hidden">
                    </div></div><div class="span6 droppedFields"></div></div><div class="row-fluid"><div class="span12 action-bar droppedFields" style="min-height:80px;"></div></div>', N'dsafdsaf', CAST(0x0000A56B01119079 AS DateTime), NULL)
INSERT [dbo].[EavEntityDef] ([ID], [EntityTitle], [EntityName], [EntityCode], [TemplateContent], [HTMLContent], [Description], [CreatedDate], [LastUpdatedDate]) VALUES (37, N'11111', N'saf', N'safJ73', N'<div class="span12 ui-sortable" id="selected-content" style="z-index: 44;"><div class="row-fluid" id="form-title-div" style="z-index: 45;"><input value="11111" class="input-large span12" placeholder="请输入表单标题..." id="txtFormTitle" onclick="kmaster.popupEntityDef();" type="text"></div><div class="row-fluid" style="z-index: 46;"><div class="span6 well droppedFields ui-droppable" style="z-index: 47;"><div class="droppedField" style="z-index: 7;" id="CTRL-DIV-1001">
                        <label class="control-label">aaaa</label>
                        <input class="ctrl-textbox" type="text" placeholder="请输入你的文字..." name="aaaaW85">
                        <input class="hiddenMandatory" type="hidden" value="false">
                        <input class="hiddenAttributeEntity" type="hidden" value="{&quot;ID&quot;:100,&quot;EntityDefID&quot;:37,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;aaaa&quot;,&quot;AttrCode&quot;:&quot;aaaaW85&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;ConditionKey&quot;:&quot;&quot;,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}">
                    </div></div><div class="span6 well droppedFields ui-droppable" style="z-index: 48;"></div></div><div class="row-fluid" style="z-index: 49;"><div class="span12 well action-bar droppedFields ui-droppable" style="min-height: 80px; z-index: 50;"></div></div></div>', N'<div class="row-fluid" style="z-index: 46;"><div class="span6 droppedFields" style="z-index: 47;"><div class="droppedField" style="z-index: 7;" id="CTRL-DIV-1001">
                        <label class="control-label">aaaa</label>
                        <input class="ctrl-textbox" type="text" placeholder="请输入你的文字..." name="aaaaW85">
                        <input class="hiddenMandatory" type="hidden" value="false">
                        <input class="hiddenAttributeEntity" type="hidden" value="{&quot;ID&quot;:100,&quot;EntityDefID&quot;:37,&quot;StorageType&quot;:1,&quot;DivCtrlKey&quot;:&quot;CTRL-DIV-1001&quot;,&quot;AttrName&quot;:&quot;aaaa&quot;,&quot;AttrCode&quot;:&quot;aaaaW85&quot;,&quot;AttrDataType&quot;:1,&quot;FieldInputType&quot;:1,&quot;ConditionKey&quot;:&quot;&quot;,&quot;Format&quot;:null,&quot;IsMandatory&quot;:0,&quot;OrderID&quot;:0,&quot;Description&quot;:null}">
                    </div></div><div class="span6 droppedFields" style="z-index: 48;"></div></div><div class="row-fluid" style="z-index: 49;"><div class="span12 action-bar droppedFields" style="min-height: 80px; z-index: 50;"></div></div>', N'dsaf', CAST(0x0000A56B0111CEDE AS DateTime), NULL)
/****** Object:  Table [dbo].[WfTransitionInstance]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WfTransitionInstance](
	[ID] [int] NOT NULL,
	[TransitionGUID] [varchar](100) NOT NULL,
	[AppName] [nvarchar](50) NOT NULL,
	[AppInstanceID] [varchar](50) NOT NULL,
	[ProcessInstanceID] [int] NOT NULL,
	[ProcessGUID] [varchar](100) NOT NULL,
	[TransitionType] [tinyint] NOT NULL,
	[FlyingType] [tinyint] NOT NULL,
	[FromActivityInstanceID] [int] NOT NULL,
	[FromActivityGUID] [varchar](100) NOT NULL,
	[FromActivityType] [smallint] NOT NULL,
	[FromActivityName] [nvarchar](50) NOT NULL,
	[ToActivityInstanceID] [int] NOT NULL,
	[ToActivityGUID] [varchar](100) NOT NULL,
	[ToActivityType] [smallint] NOT NULL,
	[ToActivityName] [nvarchar](50) NOT NULL,
	[ConditionParseResult] [tinyint] NOT NULL,
	[CreatedByUserID] [varchar](50) NOT NULL,
	[CreatedByUserName] [nvarchar](50) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[RecordStatusInvalid] [tinyint] NOT NULL,
	[RowVersionID] [timestamp] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1077, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'64059', 826, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 1992, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2066, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC132 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1078, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'97862', 849, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2010, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2071, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC132 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1079, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'3096', 862, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 1988, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2068, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC181 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1080, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'58495', 815, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 1989, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2062, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC180 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1081, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'92298', 853, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 1994, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2063, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC180 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1082, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'83577', 813, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 1998, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2067, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC180 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1083, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'38977', 865, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 1995, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2061, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC131 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1084, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'3427', 835, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2016, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2085, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC183 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1085, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'3096', 816, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 1991, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2065, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC180 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1086, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'37229', 837, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2029, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2080, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC187 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1087, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'72779', 847, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2001, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2069, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC132 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1088, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'47697', 867, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2000, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2064, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC180 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1089, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'78343', 839, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2007, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2076, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC184 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1090, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'53261', 834, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 1993, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2081, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC180 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1091, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'33743', 850, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2004, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2073, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC183 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1092, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'48027', 852, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2009, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2070, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC136 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1093, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'72779', 825, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2011, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2075, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC181 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1094, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'28179', 812, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 1990, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2078, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC181 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1095, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'92628', 817, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2017, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2086, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC186 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1096, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'87064', 851, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2014, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2084, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC184 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1097, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'73109', 860, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2005, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2072, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC187 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1098, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'6583', 818, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2015, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2082, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC208 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1099, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'92298', 869, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 1996, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2092, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC20D AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1100, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'33743', 856, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2008, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2074, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC20A AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1101, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'37229', 820, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2023, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2083, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC207 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1102, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'17381', 870, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 1997, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2093, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC20C AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1103, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'42463', 814, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2013, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2077, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC208 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1104, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'45950', 824, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2026, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2095, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC215 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1105, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'76266', 836, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2027, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2096, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC214 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1106, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'6913', 832, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2028, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2089, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC20C AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1107, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'87064', 819, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2003, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2079, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC208 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1108, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'71032', 833, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2036, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2097, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC209 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1109, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'81830', 823, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2031, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2094, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC207 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1110, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'42793', 841, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2032, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2098, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC208 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1111, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'17711', 831, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2019, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2087, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC207 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1112, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'87394', 829, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2018, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2088, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC20A AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1113, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'26432', 821, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2021, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2100, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC207 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1114, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'6913', 879, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2035, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2099, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC20E AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1115, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'61981', 876, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2002, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2105, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC29C AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1116, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'12477', 858, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2043, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2114, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC2A0 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1117, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'96114', 827, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2037, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2109, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC29E AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1118, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'40716', 857, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2039, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2110, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC2A3 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1119, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'71032', 838, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2022, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2103, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC2A1 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1120, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'15634', 843, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2041, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2102, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC2A0 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1121, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'15634', 840, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2025, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2113, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC2A2 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1122, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'21528', 868, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2042, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2116, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC2A7 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1123, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'56748', 859, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2020, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2111, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC29C AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1124, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'1349', 846, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2024, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2112, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC2A1 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1125, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'10400', 864, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2045, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2108, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC29F AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1126, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'45950', 848, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2030, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2104, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC2A1 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1127, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'12477', 854, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2012, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2101, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC2A0 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1128, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'87394', 881, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2038, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2106, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC2A4 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1129, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'31665', 878, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2006, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2107, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC29D AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1130, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'49767', 874, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2048, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2090, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC2A8 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1131, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'22945', 877, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 1999, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2115, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC29D AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1132, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'71362', 861, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2040, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2123, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC30A AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1133, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'80083', 882, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2047, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2120, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC30C AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1134, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'82160', 828, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2044, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2118, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC305 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1135, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'31996', 880, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2033, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2124, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC30C AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1136, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'80083', 842, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2046, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2121, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC303 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1137, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'85647', 844, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2051, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2119, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC303 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1138, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'94367', 873, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2053, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2122, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC30C AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1139, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'41046', 855, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2049, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2117, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC30C AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1140, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'74849', 822, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2054, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2125, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC30B AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1141, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'69615', 883, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2050, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2091, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC29A AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1142, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'19450', 845, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2059, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2126, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC35B AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1143, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'80413', 872, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2060, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2129, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC35B AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1144, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'60895', 830, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2056, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2127, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC38A AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1145, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'69615', 875, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2057, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2128, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC38B AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1146, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'89133', 871, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2055, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2137, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC3B3 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1147, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'25014', 866, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2034, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2130, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC38C AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1148, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'41046', 887, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2131, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2142, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC3D1 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1149, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'66128', 886, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2132, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2143, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC3D1 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1150, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'69615', 884, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2058, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2140, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC3D2 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1151, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'60895', 889, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2134, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2146, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC3EF AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1152, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'94367', 885, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2133, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2147, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC3EF AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1153, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'33735', 863, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2052, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2141, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC405 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1154, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'10730', 888, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2136, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2149, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC406 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1155, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'35812', 891, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2135, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2150, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC406 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1156, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'44533', 893, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2144, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2151, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC41B AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1157, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'91211', 890, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2138, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2152, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC41B AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1158, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'69615', 892, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2139, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2154, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC432 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1159, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'44533', 894, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2145, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2153, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC42A AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1160, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'69615', 895, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2148, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2155, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC43D AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1161, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'69615', 896, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2156, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2157, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC44D AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1162, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'5496', 900, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2160, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2166, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC4C0 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1163, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'5166', 901, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2161, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2167, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC4BF AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1164, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'99931', 903, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2158, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2168, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC4C0 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1165, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'90881', 897, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2162, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2169, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC4D2 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1166, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'60564', 898, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2159, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2170, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC4D2 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1167, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'30248', 899, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2165, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2171, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC4D1 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1168, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'55331', 902, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2164, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2172, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC4DE AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1169, N'9cf01621-2dd5-474a-8889-cdbe53a0b72e', N'SamplePrice', N'64051', 904, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', 1, 0, 2163, N'9b78486d-5b8f-4be4-948e-522356e84e79', 1, N'开始', 2173, N'3c438212-4863-4ff8-efc9-a9096c4a8230', 4, N'业务员提交', 1, N'10', N'Long', CAST(0x0000A6B300EEC4E7 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1170, N'1ef510bb-e317-4df1-9f32-0b17601bb275', N'差旅报销表单', N'32', 905, N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', 1, 0, 2174, N'fe775212-6351-4c9b-ea02-f54a8b95d63b', 1, N'开始', 2175, N'7230bb34-3c35-4f44-8f2e-0933cb85aa35', 4, N'填写报销单据', 1, N'6', N'路天明', CAST(0x0000A6B800FA0B9E AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1171, N'61b60f12-9193-4134-af1f-8d974d354dfa', N'差旅报销表单', N'32', 905, N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', 1, 0, 2175, N'7230bb34-3c35-4f44-8f2e-0933cb85aa35', 4, N'填写报销单据', 2176, N'889aa813-3eab-4515-89af-cbd133cf030b', 4, N'财务审批', 1, N'6', N'路天明', CAST(0x0000A6B800FA6AF2 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1172, N'5c8d1beb-5aef-4cc3-9e08-6fa6e153925d', N'差旅报销表单', N'32', 905, N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', 1, 0, 2176, N'889aa813-3eab-4515-89af-cbd133cf030b', 4, N'财务审批', 2177, N'548e2052-1eab-43b0-a55c-020582b0b1c8', 8, N'Gateway', 1, N'17', N'崔红', CAST(0x0000A6B800FA7B44 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1173, N'96d291c4-3d7e-43e6-f820-dd695daa1fcc', N'差旅报销表单', N'32', 905, N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', 1, 0, 2177, N'548e2052-1eab-43b0-a55c-020582b0b1c8', 8, N'Gateway', 2178, N'c36fa3c0-3b68-4bf6-dc31-1ea939815cfd', 4, N'总经理审批', 1, N'17', N'崔红', CAST(0x0000A6B800FA7B45 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1174, N'60d69b10-ba70-46a4-948c-09d5be318397', N'差旅报销表单', N'32', 905, N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', 1, 0, 2178, N'c36fa3c0-3b68-4bf6-dc31-1ea939815cfd', 4, N'总经理审批', 2179, N'db2df810-7edd-4242-bc64-bac796d78844', 8, N'Gateway', 1, N'1', N'陈小星', CAST(0x0000A6B800FA8995 AS DateTime), 0)
INSERT [dbo].[WfTransitionInstance] ([ID], [TransitionGUID], [AppName], [AppInstanceID], [ProcessInstanceID], [ProcessGUID], [TransitionType], [FlyingType], [FromActivityInstanceID], [FromActivityGUID], [FromActivityType], [FromActivityName], [ToActivityInstanceID], [ToActivityGUID], [ToActivityType], [ToActivityName], [ConditionParseResult], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [RecordStatusInvalid]) VALUES (1175, N'32c2860a-3b66-4b77-a8f8-0f9578440d6d', N'差旅报销表单', N'32', 905, N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', 1, 0, 2179, N'db2df810-7edd-4242-bc64-bac796d78844', 8, N'Gateway', 2180, N'77124224-0de9-4407-9d61-4405c8131c48', 2, N'结束', 1, N'1', N'陈小星', CAST(0x0000A6B800FA8996 AS DateTime), 0)
/****** Object:  Table [dbo].[WfTasks]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WfTasks](
	[ID] [int] NOT NULL,
	[ActivityInstanceID] [int] NOT NULL,
	[ProcessInstanceID] [int] NOT NULL,
	[AppName] [nvarchar](50) NOT NULL,
	[AppInstanceID] [varchar](50) NOT NULL,
	[ProcessGUID] [varchar](100) NOT NULL,
	[ActivityGUID] [varchar](100) NOT NULL,
	[ActivityName] [nvarchar](50) NOT NULL,
	[TaskType] [smallint] NOT NULL,
	[TaskState] [smallint] NOT NULL,
	[EntrustedTaskID] [int] NULL,
	[AssignedToUserID] [varchar](50) NOT NULL,
	[AssignedToUserName] [nvarchar](50) NOT NULL,
	[CreatedByUserID] [varchar](50) NOT NULL,
	[CreatedByUserName] [nvarchar](50) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[LastUpdatedByUserID] [varchar](50) NULL,
	[LastUpdatedByUserName] [nvarchar](50) NULL,
	[EndedByUserID] [varchar](50) NULL,
	[EndedByUserName] [nvarchar](50) NULL,
	[EndedDateTime] [datetime] NULL,
	[RecordStatusInvalid] [tinyint] NOT NULL,
	[RowVersionID] [timestamp] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1348, 2061, 865, N'SamplePrice', N'38977', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC0CA AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1349, 2071, 849, N'SamplePrice', N'97862', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC0CC AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1350, 2069, 847, N'SamplePrice', N'72779', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC0CC AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1351, 2066, 826, N'SamplePrice', N'64059', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC0CB AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1352, 2070, 852, N'SamplePrice', N'48027', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC0CD AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1353, 2073, 850, N'SamplePrice', N'33743', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC0FB AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1354, 2064, 867, N'SamplePrice', N'47697', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC0CB AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1355, 2062, 815, N'SamplePrice', N'58495', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC0CB AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1356, 2063, 853, N'SamplePrice', N'92298', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC0CB AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1357, 2067, 813, N'SamplePrice', N'83577', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC0CB AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1358, 2078, 812, N'SamplePrice', N'28179', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC0FF AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1359, 2081, 834, N'SamplePrice', N'53261', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC130 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1360, 2065, 816, N'SamplePrice', N'3096', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC0CB AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1361, 2075, 825, N'SamplePrice', N'72779', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC102 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1362, 2068, 862, N'SamplePrice', N'3096', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC0CA AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1363, 2084, 851, N'SamplePrice', N'87064', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC132 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1364, 2085, 835, N'SamplePrice', N'3427', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC133 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1365, 2086, 817, N'SamplePrice', N'92628', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC134 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1366, 2076, 839, N'SamplePrice', N'78343', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC0FC AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1367, 2080, 837, N'SamplePrice', N'37229', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC131 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1368, 2072, 860, N'SamplePrice', N'73109', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC0F8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1369, 2100, 821, N'SamplePrice', N'26432', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC18A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1370, 2083, 820, N'SamplePrice', N'37229', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC101 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1371, 2087, 831, N'SamplePrice', N'17711', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC137 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1372, 2077, 814, N'SamplePrice', N'42463', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC0FF AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1373, 2097, 833, N'SamplePrice', N'71032', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC187 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1374, 2098, 841, N'SamplePrice', N'42793', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC189 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1375, 2094, 823, N'SamplePrice', N'81830', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC188 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1376, 2082, 818, N'SamplePrice', N'6583', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC102 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1377, 2079, 819, N'SamplePrice', N'87064', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC101 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1378, 2091, 883, N'SamplePrice', N'69615', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC180 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1379, 2088, 829, N'SamplePrice', N'87394', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC136 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1380, 2074, 856, N'SamplePrice', N'33743', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC130 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1381, 2093, 870, N'SamplePrice', N'17381', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC182 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1382, 2089, 832, N'SamplePrice', N'6913', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC136 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1383, 2092, 869, N'SamplePrice', N'92298', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC180 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1384, 2099, 879, N'SamplePrice', N'6913', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC189 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1385, 2096, 836, N'SamplePrice', N'76266', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC187 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1386, 2095, 824, N'SamplePrice', N'45950', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC186 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1387, 2111, 859, N'SamplePrice', N'56748', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC20A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1388, 2105, 876, N'SamplePrice', N'61981', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC209 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1389, 2107, 878, N'SamplePrice', N'31665', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC209 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1390, 2115, 877, N'SamplePrice', N'22945', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC20C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1391, 2109, 827, N'SamplePrice', N'96114', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC20A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1392, 2103, 838, N'SamplePrice', N'71032', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC208 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1393, 2108, 864, N'SamplePrice', N'10400', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC209 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1394, 2101, 854, N'SamplePrice', N'12477', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC18B AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1395, 2102, 843, N'SamplePrice', N'15634', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC18C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1396, 2114, 858, N'SamplePrice', N'12477', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC20B AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1397, 2112, 846, N'SamplePrice', N'1349', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC20A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1398, 2104, 848, N'SamplePrice', N'45950', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC209 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1399, 2113, 840, N'SamplePrice', N'15634', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC216 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1400, 2106, 881, N'SamplePrice', N'87394', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC209 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1401, 2110, 857, N'SamplePrice', N'40716', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC20A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1402, 2116, 868, N'SamplePrice', N'21528', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC20F AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1403, 2090, 874, N'SamplePrice', N'49767', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC138 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1404, 2119, 844, N'SamplePrice', N'85647', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC2A1 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1405, 2121, 842, N'SamplePrice', N'80083', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC2A4 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1406, 2118, 828, N'SamplePrice', N'82160', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC2A1 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1407, 2123, 861, N'SamplePrice', N'71362', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC2A3 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1408, 2125, 822, N'SamplePrice', N'74849', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC2A5 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1409, 2117, 855, N'SamplePrice', N'41046', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC2A1 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1410, 2122, 873, N'SamplePrice', N'94367', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC2A4 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1411, 2124, 880, N'SamplePrice', N'31996', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC2A4 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1412, 2120, 882, N'SamplePrice', N'80083', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC2A3 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1413, 2126, 845, N'SamplePrice', N'19450', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC2AC AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1414, 2129, 872, N'SamplePrice', N'80413', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC305 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1415, 2128, 875, N'SamplePrice', N'69615', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC306 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1416, 2127, 830, N'SamplePrice', N'60895', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC2AE AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1417, 2130, 866, N'SamplePrice', N'25014', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC357 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1418, 2137, 871, N'SamplePrice', N'89133', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC38A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1419, 2143, 886, N'SamplePrice', N'66128', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC3B3 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1420, 2142, 887, N'SamplePrice', N'41046', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC3B3 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1421, 2140, 884, N'SamplePrice', N'69615', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC38C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1422, 2147, 885, N'SamplePrice', N'94367', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC3D1 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1423, 2146, 889, N'SamplePrice', N'60895', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC3D0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1424, 2141, 863, N'SamplePrice', N'33735', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC3D3 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1425, 2150, 891, N'SamplePrice', N'35812', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC3EF AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1426, 2149, 888, N'SamplePrice', N'10730', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC3EF AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1427, 2151, 893, N'SamplePrice', N'44533', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC406 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1428, 2152, 890, N'SamplePrice', N'91211', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC406 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1429, 2153, 894, N'SamplePrice', N'44533', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC41B AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1430, 2154, 892, N'SamplePrice', N'69615', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC429 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1431, 2155, 895, N'SamplePrice', N'69615', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC429 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1432, 2157, 896, N'SamplePrice', N'69615', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC449 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1433, 2167, 901, N'SamplePrice', N'5166', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC4B0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1434, 2166, 900, N'SamplePrice', N'5496', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC4B0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1435, 2168, 903, N'SamplePrice', N'99931', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC4B1 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1436, 2171, 899, N'SamplePrice', N'30248', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC4C0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1437, 2169, 897, N'SamplePrice', N'90881', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC4BF AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1438, 2170, 898, N'SamplePrice', N'60564', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC4BF AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1439, 2172, 902, N'SamplePrice', N'55331', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC4D2 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1440, 2173, 904, N'SamplePrice', N'64051', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 1, 1, NULL, N'10', N'Long', N'10', N'Long', CAST(0x0000A6B300EEC4DE AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1441, 2175, 905, N'差旅报销表单', N'32', N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', N'7230bb34-3c35-4f44-8f2e-0933cb85aa35', N'填写报销单据', 1, 4, NULL, N'6', N'路天明', N'6', N'路天明', CAST(0x0000A6B800FA0B96 AS DateTime), NULL, NULL, NULL, N'6', N'路天明', CAST(0x0000A6B800FA6AEF AS DateTime), 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1442, 2176, 905, N'差旅报销表单', N'32', N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', N'889aa813-3eab-4515-89af-cbd133cf030b', N'财务审批', 1, 4, NULL, N'17', N'崔红', N'6', N'路天明', CAST(0x0000A6B800FA6AF2 AS DateTime), NULL, NULL, NULL, N'17', N'崔红', CAST(0x0000A6B800FA7B41 AS DateTime), 0)
INSERT [dbo].[WfTasks] ([ID], [ActivityInstanceID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [TaskType], [TaskState], [EntrustedTaskID], [AssignedToUserID], [AssignedToUserName], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedByUserID], [EndedByUserName], [EndedDateTime], [RecordStatusInvalid]) VALUES (1443, 2178, 905, N'差旅报销表单', N'32', N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', N'c36fa3c0-3b68-4bf6-dc31-1ea939815cfd', N'总经理审批', 1, 4, NULL, N'1', N'陈小星', N'17', N'崔红', CAST(0x0000A6B800FA7B45 AS DateTime), NULL, NULL, NULL, N'1', N'陈小星', CAST(0x0000A6B800FA8993 AS DateTime), 0)
/****** Object:  Table [dbo].[WfProcessInstance]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WfProcessInstance](
	[ID] [int] NOT NULL,
	[ProcessGUID] [varchar](100) NOT NULL,
	[ProcessName] [nvarchar](50) NOT NULL,
	[Version] [nvarchar](20) NOT NULL,
	[AppInstanceID] [varchar](50) NOT NULL,
	[AppName] [nvarchar](50) NOT NULL,
	[AppInstanceCode] [nvarchar](50) NULL,
	[ProcessState] [smallint] NOT NULL,
	[ParentProcessInstanceID] [int] NULL,
	[ParentProcessGUID] [varchar](100) NULL,
	[InvokedActivityInstanceID] [int] NULL,
	[InvokedActivityGUID] [varchar](100) NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[CreatedByUserID] [varchar](50) NOT NULL,
	[CreatedByUserName] [nvarchar](50) NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[LastUpdatedByUserID] [varchar](50) NULL,
	[LastUpdatedByUserName] [nvarchar](50) NULL,
	[EndedDateTime] [datetime] NULL,
	[EndedByUserID] [varchar](50) NULL,
	[EndedByUserName] [nvarchar](50) NULL,
	[RecordStatusInvalid] [tinyint] NOT NULL,
	[RowVersionID] [timestamp] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (812, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'28179', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA79 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA79 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (813, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'83577', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA34 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA34 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (814, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'42463', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBAB0 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBAB0 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (815, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'58495', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA34 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA35 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (816, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'3096', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA34 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA34 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (817, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'92628', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA54 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA54 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (818, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'6583', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA53 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA53 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (819, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'87064', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA91 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA91 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (820, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'37229', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA54 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA54 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (821, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'26432', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBAD5 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBAD5 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (822, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'74849', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBC13 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBC13 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (823, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'81830', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBAC2 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBAC2 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (824, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'45950', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBAC0 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBAC0 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (825, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'72779', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA91 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA91 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (826, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'64059', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA41 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA41 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (827, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'96114', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBB5F AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBB5F AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (828, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'82160', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBB4C AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBB4C AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (829, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'87394', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBB61 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBB61 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (830, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'60895', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBB4A AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBB4A AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (831, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'17711', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA6E AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA6E AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (832, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'6913', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBB33 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBB33 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (833, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'71032', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBB1A AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBB1A AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (834, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'53261', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA34 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA34 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (835, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'3427', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA34 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA34 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (836, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'76266', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA41 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA41 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (837, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'37229', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA42 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA42 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (838, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'71032', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBB18 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBB18 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (839, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'78343', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA6D AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA6D AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (840, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'15634', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBB7F AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBB7F AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (841, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'42793', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBAE9 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBAE9 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (842, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'80083', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBBB7 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBBB7 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (843, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'15634', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBB06 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBB06 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (844, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'85647', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBB83 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBB83 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (845, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'19450', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA34 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA35 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (846, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'1349', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBB7F AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBB7F AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (847, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'72779', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA6B AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA6B AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (848, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'45950', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBBA1 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBBA1 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (849, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'97862', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA53 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA53 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (850, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'33743', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA6C AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA6C AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (851, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'87064', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBAC3 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBAC3 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (852, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'48027', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBAD7 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBAD7 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (853, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'92298', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA34 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA34 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (854, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'12477', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBB5F AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBB5F AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (855, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'41046', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBBB7 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBBB7 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (856, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'33743', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBAB0 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBAB0 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (857, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'40716', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBBB5 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBBB5 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (858, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'12477', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBAD8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBAD8 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (859, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'56748', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBB1A AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBB1A AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (860, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'73109', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBB05 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBB05 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (861, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'71362', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBBD6 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBBD6 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (862, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'3096', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA34 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA34 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (863, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'33735', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBB4B AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBB4B AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (864, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'10400', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBBB5 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBBB5 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (865, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'38977', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA34 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA34 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (866, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'25014', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBBB5 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBBB5 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (867, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'47697', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA34 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA34 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (868, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'21528', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBC00 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBC00 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (869, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'92298', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA35 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA35 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (870, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'17381', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA41 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA41 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (871, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'89133', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBB86 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBB86 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (872, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'80413', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBBF7 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBBF7 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (873, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'94367', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBBD7 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBBD7 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (874, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'49767', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBBB6 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBBB6 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (875, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'69615', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBBF7 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBBF7 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (876, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'61981', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA53 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA53 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (877, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'22945', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA6B AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA6B AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (878, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'31665', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA97 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA97 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (879, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'6913', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBBF7 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBBF7 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (880, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'31996', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBBF7 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBBF7 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (881, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'87394', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBBF7 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBBF7 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (882, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'80083', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBCDC AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBCDC AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (883, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'69615', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA41 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA41 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (884, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'69615', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEBA42 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBA42 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (885, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'94367', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC2A8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC2A8 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (886, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'66128', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC2A9 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC2A9 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (887, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'41046', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC2A4 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC2A4 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (888, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'10730', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC304 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC304 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (889, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'60895', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC302 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC302 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (890, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'91211', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC305 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC305 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (891, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'35812', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC303 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC303 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (892, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'69615', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC306 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC306 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (893, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'44533', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC305 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC305 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (894, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'44533', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC303 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC303 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (895, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'69615', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC37B AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC37B AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (896, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'69615', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC38C AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC38C AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (897, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'90881', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC465 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC465 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (898, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'60564', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC464 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC464 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (899, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'30248', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC464 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC464 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (900, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'5496', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC464 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC464 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (901, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'5166', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC464 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC464 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (902, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'55331', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC465 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC465 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (903, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'99931', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC466 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC466 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (904, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', N'64051', N'SamplePrice', NULL, 2, NULL, NULL, 0, NULL, CAST(0x0000A6B300EEC466 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC466 AS DateTime), N'10', N'Long', NULL, NULL, NULL, 0)
INSERT [dbo].[WfProcessInstance] ([ID], [ProcessGUID], [ProcessName], [Version], [AppInstanceID], [AppName], [AppInstanceCode], [ProcessState], [ParentProcessInstanceID], [ParentProcessGUID], [InvokedActivityInstanceID], [InvokedActivityGUID], [CreatedDateTime], [CreatedByUserID], [CreatedByUserName], [LastUpdatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (905, N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', N'财务报销', N'1', N'32', N'差旅报销表单', NULL, 4, NULL, NULL, 0, NULL, CAST(0x0000A6B800FA0B6A AS DateTime), N'6', N'路天明', CAST(0x0000A6B800FA0B6A AS DateTime), N'6', N'路天明', CAST(0x0000A6B800FA8997 AS DateTime), N'1', N'陈小星', 0)
/****** Object:  Table [dbo].[WfProcess]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WfProcess](
	[ID] [int] NOT NULL,
	[ProcessGUID] [varchar](100) NOT NULL,
	[ProcessName] [nvarchar](50) NOT NULL,
	[Version] [nvarchar](20) NOT NULL,
	[IsUsing] [tinyint] NOT NULL,
	[AppType] [varchar](20) NULL,
	[PageUrl] [nvarchar](100) NULL,
	[XmlFileName] [nvarchar](50) NULL,
	[XmlFilePath] [nvarchar](50) NULL,
	[XmlContent] [nvarchar](max) NULL,
	[BPMNContent] [nvarchar](max) NULL,
	[Description] [nvarchar](1000) NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[RowVersionID] [timestamp] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (3, N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'报价流程', N'1', 1, NULL, NULL, NULL, N'price\price.xml', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <Participants>
    <Participant type="Role" id="60c8a694-632a-4ded-9155-f666e461b078" name="业务员(Sales)" code="salesmate" outerId="9" />
    <Participant type="Role" id="7f9be0fb-7ffa-4b57-8c88-26734fbe3cf6" name="打样员(Tech)" code="techmate" outerId="10" />
  </Participants>
  <WorkflowProcesses>
    <Process name="打样申请流程" id="072af8c3-482a-4b1c-890b-685ce2fcc75d">
      <Activities>
        <Activity name="开始" id="9b78486d-5b8f-4be4-948e-522356e84e79" code="">
          <ActivityType type="StartNode" />
          <Geography>
            <Widget left="36" top="118" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="结束" id="b53eb9ab-3af6-41ad-d722-bed946d19792" code="">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="689" top="120" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="业务员提交" id="3c438212-4863-4ff8-efc9-a9096c4a8230" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="60c8a694-632a-4ded-9155-f666e461b078" />
          </Performers>
          <Geography>
            <Widget left="184" top="116" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="板房签字" id="eb833577-abb5-4239-875a-5f2e2fcb6d57" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="7f9be0fb-7ffa-4b57-8c88-26734fbe3cf6" />
          </Performers>
          <Geography>
            <Widget left="367" top="117" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="业务员确认" id="cab57060-f433-422a-a66f-4a5ecfafd54e" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="60c8a694-632a-4ded-9155-f666e461b078" />
          </Performers>
          <Geography>
            <Widget left="525" top="118" width="65.2" height="32.2" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="5432de95-cbcd-4349-9cf0-7e67904c52aa" from="3c438212-4863-4ff8-efc9-a9096c4a8230" to="eb833577-abb5-4239-875a-5f2e2fcb6d57">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACT3c438212-4863-4ff8-efc9-a9096c4a8230" targetId="ACTeb833577-abb5-4239-875a-5f2e2fcb6d57" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="ac609b39-b6eb-4506-c36f-670c5ed53f5c" from="eb833577-abb5-4239-875a-5f2e2fcb6d57" to="cab57060-f433-422a-a66f-4a5ecfafd54e">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACTeb833577-abb5-4239-875a-5f2e2fcb6d57" targetId="ACTcab57060-f433-422a-a66f-4a5ecfafd54e" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="2d5c0e7b-1303-48cb-c22b-3cd2b45701e3" from="cab57060-f433-422a-a66f-4a5ecfafd54e" to="b53eb9ab-3af6-41ad-d722-bed946d19792">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACTcab57060-f433-422a-a66f-4a5ecfafd54e" targetId="ACTb53eb9ab-3af6-41ad-d722-bed946d19792" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="9cf01621-2dd5-474a-8889-cdbe53a0b72e" from="9b78486d-5b8f-4be4-948e-522356e84e79" to="3c438212-4863-4ff8-efc9-a9096c4a8230">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACT9b78486d-5b8f-4be4-948e-522356e84e79" targetId="ACT3c438212-4863-4ff8-efc9-a9096c4a8230" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', NULL, N'', CAST(0x0000A3F900E418AE AS DateTime), CAST(0x0000A60100A9E258 AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (24, N'2acffb20-6bd1-4891-98c9-c76d022d1445', N'请假流程(NEW)', N'1', 1, N'QINGJIA', NULL, N'HrsLeave1.xml', N'QINGJIA\HrsLeave1.xml', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <Participants>
    <Participant type="Role" id="3c7aeaed-8b58-46a6-be39-7b850e6ed8e0" name="普通员工" code="employees" outerId="1" />
    <Participant type="Role" id="c9e054eb-7e4f-47c3-a2b9-61e0ff8748d4" name="部门经理" code="depmanager" outerId="2" />
    <Participant type="Role" id="6200799d-ffd2-4ae6-d28f-294a0cd3435a" name="总经理" code="generalmanager" outerId="8" />
    <Participant type="Role" id="a0c8c361-87e1-4106-a7c9-c0b589123c9c" name="人事经理" code="hrmanager" outerId="3" />
  </Participants>
  <WorkflowProcesses>
    <Process name="请假审批流程" id="2acffb20-6bd1-4891-98c9-c76d022d1445">
      <Description>部门经理，人事经理，总经理参与审批</Description>
      <Activities>
        <Activity name="开始" id="bb6c9787-0e1c-4de1-ddbc-593992724ca5" code="">
          <ActivityType type="StartNode" />
          <Geography>
            <Widget left="48" top="182" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="结束" id="5eb84b81-0f04-476d-cc82-b42a65464880" code="">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="956" top="173" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="员工提交" id="3242c597-e889-4768-f6db-cafc3d675370" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="3c7aeaed-8b58-46a6-be39-7b850e6ed8e0" />
          </Performers>
          <Geography>
            <Widget left="180" top="180" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="部门经理审批" id="c437c27a-8351-4805-fd4f-4e270084320a" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="c9e054eb-7e4f-47c3-a2b9-61e0ff8748d4" />
          </Performers>
          <Geography>
            <Widget left="360" top="180" width="66.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="Gateway" id="c05bc40f-579b-49cb-cd12-30c2cba4db1e" code="">
          <ActivityType type="GatewayNode" gatewaySplitJoinType="Split" gatewayDirection="OrSplit" />
          <Geography>
            <Widget left="510" top="186" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="总经理审批" id="a6a8e554-d73e-4a77-8d16-08edf5905e1f" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="6200799d-ffd2-4ae6-d28f-294a0cd3435a" />
          </Performers>
          <Geography>
            <Widget left="600" top="108" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="人事经理审批" id="da9f744b-3f97-40c9-c4f8-67d5a60a2485" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="a0c8c361-87e1-4106-a7c9-c0b589123c9c" />
          </Performers>
          <Geography>
            <Widget left="793" top="171" width="66.2" height="32.2" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="7af6085c-d40e-4687-ec75-748b7ef18e3d" from="bb6c9787-0e1c-4de1-ddbc-593992724ca5" to="3242c597-e889-4768-f6db-cafc3d675370">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACTbb6c9787-0e1c-4de1-ddbc-593992724ca5" targetId="ACT3242c597-e889-4768-f6db-cafc3d675370" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="92f5a2a2-e89e-4b3e-8ff9-6a72d3a2d946" from="3242c597-e889-4768-f6db-cafc3d675370" to="c437c27a-8351-4805-fd4f-4e270084320a">
          <Description>请输入转移描述信息</Description>
          <Receiver type="Superior" />
          <Condition type="Expression" />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACT3242c597-e889-4768-f6db-cafc3d675370" targetId="ACTc437c27a-8351-4805-fd4f-4e270084320a" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="8c1922c3-6d16-452e-a9a0-0b7ba0453347" from="c437c27a-8351-4805-fd4f-4e270084320a" to="c05bc40f-579b-49cb-cd12-30c2cba4db1e">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,1,-5,0]]" sourceId="ACTc437c27a-8351-4805-fd4f-4e270084320a" targetId="ACTc05bc40f-579b-49cb-cd12-30c2cba4db1e" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="a158f3af-61b2-4169-f131-d0876c20063b" from="c05bc40f-579b-49cb-cd12-30c2cba4db1e" to="a6a8e554-d73e-4a77-8d16-08edf5905e1f">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition type="Expression">
            <ConditionText><![CDATA[days>3]]></ConditionText>
          </Condition>
          <Geography>
            <Line anchors="[[0.5,0,1,1,0,-5],[0,0.5,0,0,0,0]]" sourceId="ACTc05bc40f-579b-49cb-cd12-30c2cba4db1e" targetId="ACTa6a8e554-d73e-4a77-8d16-08edf5905e1f" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="2333ad8b-f958-4ca3-9e72-678d809de2ca" from="da9f744b-3f97-40c9-c4f8-67d5a60a2485" to="5eb84b81-0f04-476d-cc82-b42a65464880">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACTda9f744b-3f97-40c9-c4f8-67d5a60a2485" targetId="ACT5eb84b81-0f04-476d-cc82-b42a65464880" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="efc696f7-83c4-4741-a6f5-e00f9631dda4" from="a6a8e554-d73e-4a77-8d16-08edf5905e1f" to="da9f744b-3f97-40c9-c4f8-67d5a60a2485">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACTa6a8e554-d73e-4a77-8d16-08edf5905e1f" targetId="ACTda9f744b-3f97-40c9-c4f8-67d5a60a2485" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="89c490d0-7a4f-4465-fb4f-0e6914ad703c" from="c05bc40f-579b-49cb-cd12-30c2cba4db1e" to="da9f744b-3f97-40c9-c4f8-67d5a60a2485">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition type="Expression">
            <ConditionText><![CDATA[days<=3]]></ConditionText>
          </Condition>
          <Geography>
            <Line anchors="[[0.5,1,1,1,0,5],[0,0.5,0,0,0,0]]" sourceId="ACTc05bc40f-579b-49cb-cd12-30c2cba4db1e" targetId="ACTda9f744b-3f97-40c9-c4f8-67d5a60a2485" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', NULL, N'', CAST(0x0000A4210179DC78 AS DateTime), CAST(0x0000A5C5010461A9 AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (33, N'5c5041fc-ab7f-46c0-85a5-6250c3aea375', N'生产订单流程', N'1', 1, N'PRODUCTORDER', NULL, N'order.jump.tmp.xml', N'price\order.jump.tmp.xml', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <Participants>
    <Participant type="Role" id="6398503c-25da-4c49-9530-41d3573c860c" name="业务员" code="salesmate" outerId="9" />
    <Participant type="Role" id="cfb8d004-b27e-40a1-9bc7-55323de0b59b" name="打样员" code="techmate" outerId="10" />
    <Participant type="Role" id="3c80b85c-73a9-4f52-a21f-1df2a9f37cf7" name="跟单员" code="merchandiser" outerId="11" />
    <Participant type="Role" id="eae5fb4f-62d8-4024-81db-4ad8b48e611e" name="质检员" code="qcmate" outerId="12" />
    <Participant type="Role" id="1c4682c2-5f81-4a9c-8ddd-c89e26aa1c3b" name="包装员" code="expressmate" outerId="13" />
  </Participants>
  <WorkflowProcesses>
    <Process name="外贸生产订单流程" id="5c5041fc-ab7f-46c0-85a5-6250c3aea375">
      <Description>外贸生产订单流程描述</Description>
      <Activities>
        <Activity name="开始" id="e357fe9e-dc33-4075-bd34-6f7425bb7671" code="undefined">
          <ActivityType type="StartNode" />
          <Geography>
            <Widget left="30" top="92" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="派单" id="aad747dd-2b75-449c-a8a6-391b8a426e83" code="Dispatching">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="6398503c-25da-4c49-9530-41d3573c860c" />
          </Performers>
          <Geography>
            <Widget left="146" top="92" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="Or分支节点" id="890d4971-3d5d-4800-bdf3-a355fd4a6317" code="undefined">
          <ActivityType type="GatewayNode" gatewaySplitJoinType="Split" gatewayDirection="OrSplit" />
          <Geography>
            <Widget left="317" top="93" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="打样" id="fc8c71c5-8786-450e-af27-9f6a9de8560f" code="Sampling">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="cfb8d004-b27e-40a1-9bc7-55323de0b59b" />
          </Performers>
          <Geography>
            <Widget left="261" top="269" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="生产" id="bf5d8fbe-43bb-4e63-bdac-3c0ee1266803" code="Manufacturing">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="3c80b85c-73a9-4f52-a21f-1df2a9f37cf7" />
            <Performer id="1c4682c2-5f81-4a9c-8ddd-c89e26aa1c3b" />
          </Performers>
          <Geography>
            <Widget left="413" top="269" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="质检" id="39c71004-d822-4c15-9ff2-94ca1068d745" code="QCChecking">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="eae5fb4f-62d8-4024-81db-4ad8b48e611e" />
          </Performers>
          <Geography>
            <Widget left="547" top="268" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="称重" id="422e5354-14f7-4a0a-ae69-c169fee96e50" code="Weighting">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="1c4682c2-5f81-4a9c-8ddd-c89e26aa1c3b" />
          </Performers>
          <Geography>
            <Widget left="667" top="179" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="打印发货单" id="7c1aa9f9-7f0f-46bf-a219-0b80fdfbbe3d" code="Delivering">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="1c4682c2-5f81-4a9c-8ddd-c89e26aa1c3b" />
          </Performers>
          <Geography>
            <Widget left="708" top="66" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="结束" id="b70e717a-08da-419f-b2eb-7a3d71f054de" code="undefined">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="867" top="107" width="40" height="40" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="e8851141-e3f5-46d7-a317-b7860e32592e" from="e357fe9e-dc33-4075-bd34-6f7425bb7671" to="aad747dd-2b75-449c-a8a6-391b8a426e83">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACTe357fe9e-dc33-4075-bd34-6f7425bb7671" targetId="ACTaad747dd-2b75-449c-a8a6-391b8a426e83" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="e4d3c553-ba29-4965-dd3e-d098895a10e7" from="aad747dd-2b75-449c-a8a6-391b8a426e83" to="890d4971-3d5d-4800-bdf3-a355fd4a6317">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,1,-5,0]]" sourceId="ACTaad747dd-2b75-449c-a8a6-391b8a426e83" targetId="ACT890d4971-3d5d-4800-bdf3-a355fd4a6317" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="dabaa65d-905b-42c4-f5f7-e599334c03c9" from="890d4971-3d5d-4800-bdf3-a355fd4a6317" to="fc8c71c5-8786-450e-af27-9f6a9de8560f">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition type="Expression">
            <ConditionText><![CDATA[CanUseStock == "false" && IsHavingWeight == "false"]]></ConditionText>
          </Condition>
          <Geography>
            <Line anchors="[[0.5,1,1,1,0,5],[0,0.5,0,0,0,0]]" sourceId="ACT890d4971-3d5d-4800-bdf3-a355fd4a6317" targetId="ACTfc8c71c5-8786-450e-af27-9f6a9de8560f" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="8eb5ee28-4d72-4361-fc4a-44ea46cbd639" from="890d4971-3d5d-4800-bdf3-a355fd4a6317" to="7c1aa9f9-7f0f-46bf-a219-0b80fdfbbe3d">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition type="Expression">
            <ConditionText><![CDATA[CanUseStock == "true" && IsHavingWeight == "true"]]></ConditionText>
          </Condition>
          <Geography>
            <Line anchors="[[0.5,0,1,1,0,-5],[0,0.5,0,0,0,0]]" sourceId="ACT890d4971-3d5d-4800-bdf3-a355fd4a6317" targetId="ACT7c1aa9f9-7f0f-46bf-a219-0b80fdfbbe3d" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="bea1aa54-2167-4438-a9bf-1a2cbc5f43c9" from="fc8c71c5-8786-450e-af27-9f6a9de8560f" to="bf5d8fbe-43bb-4e63-bdac-3c0ee1266803">
          <Description>请输入转移描述信息</Description>
          <Receiver type="ProcessInitiator" />
          <Condition type="Expression" />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACTfc8c71c5-8786-450e-af27-9f6a9de8560f" targetId="ACTbf5d8fbe-43bb-4e63-bdac-3c0ee1266803" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="7a1dac3c-4f8c-46b2-bcb9-2ea36df29e27" from="bf5d8fbe-43bb-4e63-bdac-3c0ee1266803" to="39c71004-d822-4c15-9ff2-94ca1068d745">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACTbf5d8fbe-43bb-4e63-bdac-3c0ee1266803" targetId="ACT39c71004-d822-4c15-9ff2-94ca1068d745" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="9da96321-6bad-4673-829a-0bda31c3e3e1" from="39c71004-d822-4c15-9ff2-94ca1068d745" to="422e5354-14f7-4a0a-ae69-c169fee96e50">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACT39c71004-d822-4c15-9ff2-94ca1068d745" targetId="ACT422e5354-14f7-4a0a-ae69-c169fee96e50" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="67a3fe0e-06d3-4a01-e0c1-1a731166c905" from="422e5354-14f7-4a0a-ae69-c169fee96e50" to="7c1aa9f9-7f0f-46bf-a219-0b80fdfbbe3d">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACT422e5354-14f7-4a0a-ae69-c169fee96e50" targetId="ACT7c1aa9f9-7f0f-46bf-a219-0b80fdfbbe3d" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="75f0eb1d-1933-4a0a-a953-76a755744336" from="7c1aa9f9-7f0f-46bf-a219-0b80fdfbbe3d" to="b70e717a-08da-419f-b2eb-7a3d71f054de">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT7c1aa9f9-7f0f-46bf-a219-0b80fdfbbe3d" targetId="ACTb70e717a-08da-419f-b2eb-7a3d71f054de" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="95098c43-7acc-48f9-fd5f-6b27b445137b" from="890d4971-3d5d-4800-bdf3-a355fd4a6317" to="422e5354-14f7-4a0a-ae69-c169fee96e50">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition type="Expression">
            <ConditionText><![CDATA[CanUseStock == "true" && IsHavingWeight == "false"]]></ConditionText>
          </Condition>
          <Geography>
            <Line anchors="[[0.5,1,1,1,0,5],[0,0.5,0,0,0,0]]" sourceId="ACT890d4971-3d5d-4800-bdf3-a355fd4a6317" targetId="ACT422e5354-14f7-4a0a-ae69-c169fee96e50" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', NULL, NULL, CAST(0x0000A4D2011D084F AS DateTime), CAST(0x0000A67D016240C8 AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (48, N'ec82f77f-cf82-4298-8106-e172c6e25057', N'采购流程', N'1', 1, N'Purchaseflow', NULL, N'purchaseflow.xml', N'Purchaseflow\purchaseflow.xml', N'<?xml version="1.0" encoding="utf-8"?><Package><WorkflowProcess><Process name="采购流程" id="ec82f77f-cf82-4298-8106-e172c6e25057"><Description>anything else...</Description></Process></WorkflowProcess></Package>', NULL, N'anything else...', CAST(0x0000A50F017147C9 AS DateTime), NULL)
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (51, N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', N'财务报销', N'1', 1, N'baoxiao', NULL, N'baoxiao.xml', N'baoxiao\baoxiao.xml', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <Participants>
    <Participant type="Role" id="6e3e7793-638f-4a48-d787-2a1016711602" name="普通员工" code="employees" outerId="1" />
    <Participant type="Role" id="8ad2131e-a98e-4523-acba-88e4404ce0a9" name="部门经理" code="depmanager" outerId="2" />
    <Participant type="Role" id="77858784-3ec7-4849-c9c2-15e5e6dead0d" name="财务经理" code="finacemanager" outerId="14" />
    <Participant type="Role" id="0501e326-8541-4d13-8159-d510d57ce1f5" name="总经理" code="generalmanager" outerId="8" />
    <Participant type="Role" id="23d1c029-ec6e-4212-c9a5-1b82472d4747" name="主管总监" code="director" outerId="4" />
  </Participants>
  <WorkflowProcesses>
    <Process name="财务报销" id="ec794d6d-4543-4938-b5f5-cdd97cf939d6">
      <Activities>
        <Activity name="开始" id="fe775212-6351-4c9b-ea02-f54a8b95d63b" code="">
          <ActivityType type="StartNode" />
          <Geography>
            <Widget left="59" top="160" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="结束" id="77124224-0de9-4407-9d61-4405c8131c48" code="">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="925" top="219" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="填写报销单据" id="7230bb34-3c35-4f44-8f2e-0933cb85aa35" code="appform">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="6e3e7793-638f-4a48-d787-2a1016711602" />
          </Performers>
          <Geography>
            <Widget left="198" top="159" width="66.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="财务审批" id="889aa813-3eab-4515-89af-cbd133cf030b" code="accountaduit">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="77858784-3ec7-4849-c9c2-15e5e6dead0d" />
          </Performers>
          <Geography>
            <Widget left="354" top="153" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="Gateway" id="548e2052-1eab-43b0-a55c-020582b0b1c8" code="">
          <ActivityType type="GatewayNode" gatewaySplitJoinType="Split" gatewayDirection="OrSplit" />
          <Geography>
            <Widget left="532" top="167" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="总经理审批" id="c36fa3c0-3b68-4bf6-dc31-1ea939815cfd" code="ceoaudit">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="0501e326-8541-4d13-8159-d510d57ce1f5" />
          </Performers>
          <Geography>
            <Widget left="629" top="116" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="主管总监查阅" id="77129a09-6b2c-43aa-af77-ba5ced57a174" code="cooaudit">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="23d1c029-ec6e-4212-c9a5-1b82472d4747" />
          </Performers>
          <Geography>
            <Widget left="618" top="246" width="66.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="Gateway" id="db2df810-7edd-4242-bc64-bac796d78844" code="">
          <Description>总经理审批路由</Description>
          <ActivityType type="GatewayNode" gatewaySplitJoinType="Join" gatewayDirection="OrJoin" />
          <Geography>
            <Widget left="816" top="190" width="40" height="40" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="1ef510bb-e317-4df1-9f32-0b17601bb275" from="fe775212-6351-4c9b-ea02-f54a8b95d63b" to="7230bb34-3c35-4f44-8f2e-0933cb85aa35">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACTfe775212-6351-4c9b-ea02-f54a8b95d63b" targetId="ACT7230bb34-3c35-4f44-8f2e-0933cb85aa35" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="61b60f12-9193-4134-af1f-8d974d354dfa" from="7230bb34-3c35-4f44-8f2e-0933cb85aa35" to="889aa813-3eab-4515-89af-cbd133cf030b">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACT7230bb34-3c35-4f44-8f2e-0933cb85aa35" targetId="ACT889aa813-3eab-4515-89af-cbd133cf030b" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="5c8d1beb-5aef-4cc3-9e08-6fa6e153925d" from="889aa813-3eab-4515-89af-cbd133cf030b" to="548e2052-1eab-43b0-a55c-020582b0b1c8">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,1,-5,0]]" sourceId="ACT889aa813-3eab-4515-89af-cbd133cf030b" targetId="ACT548e2052-1eab-43b0-a55c-020582b0b1c8" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="96d291c4-3d7e-43e6-f820-dd695daa1fcc" from="548e2052-1eab-43b0-a55c-020582b0b1c8" to="c36fa3c0-3b68-4bf6-dc31-1ea939815cfd">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[0.5,0,1,1,0,-5],[0,0.5,0,0,0,0]]" sourceId="ACT548e2052-1eab-43b0-a55c-020582b0b1c8" targetId="ACTc36fa3c0-3b68-4bf6-dc31-1ea939815cfd" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="1a1560ce-1258-46f1-f56e-9d1fb2e6142c" from="548e2052-1eab-43b0-a55c-020582b0b1c8" to="77129a09-6b2c-43aa-af77-ba5ced57a174">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[0.5,1,1,1,0,5],[0,0.5,0,0,0,0]]" sourceId="ACT548e2052-1eab-43b0-a55c-020582b0b1c8" targetId="ACT77129a09-6b2c-43aa-af77-ba5ced57a174" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="c405e021-cacf-412e-ce37-82817953c7ec" from="77129a09-6b2c-43aa-af77-ba5ced57a174" to="db2df810-7edd-4242-bc64-bac796d78844">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,1,-5,0]]" sourceId="ACT77129a09-6b2c-43aa-af77-ba5ced57a174" targetId="ACTdb2df810-7edd-4242-bc64-bac796d78844" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="60d69b10-ba70-46a4-948c-09d5be318397" from="c36fa3c0-3b68-4bf6-dc31-1ea939815cfd" to="db2df810-7edd-4242-bc64-bac796d78844">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,1,-5,0]]" sourceId="ACTc36fa3c0-3b68-4bf6-dc31-1ea939815cfd" targetId="ACTdb2df810-7edd-4242-bc64-bac796d78844" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="32c2860a-3b66-4b77-a8f8-0f9578440d6d" from="db2df810-7edd-4242-bc64-bac796d78844" to="77124224-0de9-4407-9d61-4405c8131c48">
          <Description>请输入转移描述信息</Description>
          <Geography>
            <Line anchors="[[0.5,1,1,1,0,5],[0,0.5,-1,0,0,0]]" sourceId="ACTdb2df810-7edd-4242-bc64-bac796d78844" targetId="ACT77124224-0de9-4407-9d61-4405c8131c48" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', NULL, N'', CAST(0x0000A55A0132BC96 AS DateTime), CAST(0x0000A5D30179AB88 AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (71, N'9fb4bca4-5674-4181-a010-f0e730e166dd', N'报价会签流程', N'1', 1, NULL, NULL, NULL, N'\', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <Participants>
    <Participant type="Role" id="28e71769-f197-4fe0-fd9f-63474956dc60" name="业务员(Sales)" code="salesmate" outerId="9" />
    <Participant type="Role" id="24b1a282-d4d4-4461-febb-2f28eb31f48f" name="打样员(Tech)" code="techmate" outerId="10" />
  </Participants>
  <WorkflowProcesses>
    <Process name="报价会签流程" id="9fb4bca4-5674-4181-a010-f0e730e166dd">
      <Activities>
        <Activity name="开始" id="1f303f19-71aa-4879-c501-f4d0f448f0a2" code="">
          <ActivityType type="StartNode" />
          <Geography>
            <Widget left="165" top="120" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="结束" id="7462aae9-da1c-43f0-d741-a4586879de77" code="">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="712" top="117" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="业务员提交" id="791d9d3a-882d-4796-cffc-84d9fca76afd" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="28e71769-f197-4fe0-fd9f-63474956dc60" />
          </Performers>
          <Geography>
            <Widget left="303" top="121" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="业务员确认" id="23017d0c-08ca-4a59-9649-c6912b819001" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="28e71769-f197-4fe0-fd9f-63474956dc60" />
          </Performers>
          <Geography>
            <Widget left="621" top="123" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="板房会签" id="36cf2479-e8ec-4936-8bcd-b38101e4664a" code="">
          <ActivityType type="MultipleInstanceNode" complexType="SignTogether" mergeType="Parallel" compareType="Percentage" completeOrder="80" />
          <Performers>
            <Performer id="24b1a282-d4d4-4461-febb-2f28eb31f48f" />
          </Performers>
          <Geography>
            <Widget left="472" top="119" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="Gateway" id="8d59fd91-3520-4863-de61-ab6442933f71" code="">
          <ActivityType type="GatewayNode" gatewaySplitJoinType="Split" gatewayDirection="OrSplit" />
          <Geography>
            <Widget left="347" top="230" width="40" height="40" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="50f7acb2-99d0-4877-e116-5bf19433bb89" from="1f303f19-71aa-4879-c501-f4d0f448f0a2" to="791d9d3a-882d-4796-cffc-84d9fca76afd">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACT1f303f19-71aa-4879-c501-f4d0f448f0a2" targetId="ACT791d9d3a-882d-4796-cffc-84d9fca76afd" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="87651a0d-81e5-4d6f-9ef3-ed0be0011c8f" from="791d9d3a-882d-4796-cffc-84d9fca76afd" to="36cf2479-e8ec-4936-8bcd-b38101e4664a">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACT791d9d3a-882d-4796-cffc-84d9fca76afd" targetId="ACT36cf2479-e8ec-4936-8bcd-b38101e4664a" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="63031ecf-2116-47a3-a0d8-f920dc5bee11" from="36cf2479-e8ec-4936-8bcd-b38101e4664a" to="23017d0c-08ca-4a59-9649-c6912b819001">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACT36cf2479-e8ec-4936-8bcd-b38101e4664a" targetId="ACT23017d0c-08ca-4a59-9649-c6912b819001" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', NULL, N'', CAST(0x0000A5D80104157F AS DateTime), CAST(0x0000A5FD009EB4B0 AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (73, N'3a8ce214-fd18-4fac-95c0-e7958bc1b2f8', N'办公用品申领流程', N'1', 1, NULL, NULL, NULL, N'\', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <Participants>
    <Participant type="Role" id="114e7e8d-574c-42c2-eb1c-3d7160516ba3" name="普通员工" code="employees" outerId="1" />
    <Participant type="Role" id="595410fc-2f24-4708-bacd-0eb38b17e7fc" name="人事经理" code="hrmanager" outerId="3" />
    <Participant type="Role" id="c9694802-fcb1-4cad-ad9e-aae9894305a6" name="总经理" code="generalmanager" outerId="8" />
  </Participants>
  <WorkflowProcesses>
    <Process name="办公用品申领流程" id="3a8ce214-fd18-4fac-95c0-e7958bc1b2f8">
      <Activities>
        <Activity name="开始" id="e52d0836-9f98-4b70-d485-6b01b8cc277e" code="">
          <ActivityType type="StartNode" />
          <Geography>
            <Widget left="92" top="147" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="结束" id="30929bbb-c76e-4604-c956-f26feb4aa22e" code="">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="747" top="157" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="仓库签字" id="4db4a153-c8fc-45df-b067-9d188ae19a41" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="114e7e8d-574c-42c2-eb1c-3d7160516ba3" />
          </Performers>
          <Geography>
            <Widget left="245" top="146" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="Gateway" id="eb492ba8-075a-46e4-b95f-ac071dd3a43d" code="">
          <ActivityType type="GatewayNode" gatewaySplitJoinType="Split" gatewayDirection="OrSplit" />
          <Geography>
            <Widget left="414" top="147" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="行政部签字" id="c3cbb3cc-fa60-42ad-9a10-4ec2638aff49" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="595410fc-2f24-4708-bacd-0eb38b17e7fc" />
          </Performers>
          <Geography>
            <Widget left="529" top="79" width="65.2" height="32.2" />
          </Geography>
        </Activity>
        <Activity name="总经理签字" id="12c6c0d2-1d23-4ed1-8d58-ddc4268f3149" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="c9694802-fcb1-4cad-ad9e-aae9894305a6" />
          </Performers>
          <Geography>
            <Widget left="530" top="204" width="65.2" height="32.2" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="81fdf756-ecd5-43c0-e2b3-25770aab5dee" from="e52d0836-9f98-4b70-d485-6b01b8cc277e" to="4db4a153-c8fc-45df-b067-9d188ae19a41">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,0,0,0,0]]" sourceId="ACTe52d0836-9f98-4b70-d485-6b01b8cc277e" targetId="ACT4db4a153-c8fc-45df-b067-9d188ae19a41" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="69c1ba54-acb0-4b4e-ff03-3f6cf572e98a" from="4db4a153-c8fc-45df-b067-9d188ae19a41" to="eb492ba8-075a-46e4-b95f-ac071dd3a43d">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,1,-5,0]]" sourceId="ACT4db4a153-c8fc-45df-b067-9d188ae19a41" targetId="ACTeb492ba8-075a-46e4-b95f-ac071dd3a43d" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="8d776249-f3c6-4397-817f-44880b34a451" from="eb492ba8-075a-46e4-b95f-ac071dd3a43d" to="c3cbb3cc-fa60-42ad-9a10-4ec2638aff49">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition type="Expression">
            <ConditionText><![CDATA[surplus = "normal"]]></ConditionText>
          </Condition>
          <Geography>
            <Line anchors="[[0.5,0,1,1,0,-5],[0,0.5,0,0,0,0]]" sourceId="ACTeb492ba8-075a-46e4-b95f-ac071dd3a43d" targetId="ACTc3cbb3cc-fa60-42ad-9a10-4ec2638aff49" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="e40270aa-834a-455d-ffd6-b3f72feeeadc" from="eb492ba8-075a-46e4-b95f-ac071dd3a43d" to="12c6c0d2-1d23-4ed1-8d58-ddc4268f3149">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition type="Expression">
            <ConditionText><![CDATA[surplus = "overamount"]]></ConditionText>
          </Condition>
          <Geography>
            <Line anchors="[[0.5,1,1,1,0,5],[0,0.5,0,0,0,0]]" sourceId="ACTeb492ba8-075a-46e4-b95f-ac071dd3a43d" targetId="ACT12c6c0d2-1d23-4ed1-8d58-ddc4268f3149" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="952b3594-fe40-427f-a27a-f2650226aeca" from="c3cbb3cc-fa60-42ad-9a10-4ec2638aff49" to="30929bbb-c76e-4604-c956-f26feb4aa22e">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACTc3cbb3cc-fa60-42ad-9a10-4ec2638aff49" targetId="ACT30929bbb-c76e-4604-c956-f26feb4aa22e" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="fd39de26-d9e9-425e-c952-dd8c37d329d6" from="12c6c0d2-1d23-4ed1-8d58-ddc4268f3149" to="30929bbb-c76e-4604-c956-f26feb4aa22e">
          <Description>请输入转移描述信息</Description>
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT12c6c0d2-1d23-4ed1-8d58-ddc4268f3149" targetId="ACT30929bbb-c76e-4604-c956-f26feb4aa22e" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', NULL, N'', CAST(0x0000A60100F7C975 AS DateTime), CAST(0x0000A60201555416 AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (89, N'db5dc873-439c-4f3b-9029-e468475aa7b4', N'xyz', N'1', 1, NULL, NULL, NULL, N'\', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <WorkflowProcesses>
    <Process name="undefined" id="undefined">
      <Activities>
        <Activity name="开始" id="4dac69c6-614a-48bf-8b6e-0d53d2eb6cd1" code="">
          <ActivityType type="StartNode" />
          <Geography>
            <Widget left="97" top="92" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="结束" id="9eaabd4e-40f9-44c6-8eff-6ccc3a410547" code="">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="408" top="211" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="Gateway" id="fe370bc3-b773-426a-f224-e4927e13cb9f" code="">
          <ActivityType type="GatewayNode" gatewaySplitJoinType="undefined" gatewayDirection="undefined" />
          <Geography>
            <Widget left="428" top="117" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="新节点" id="3c904413-16d3-434d-a97a-00821f4e5d94" code="">
          <ActivityType type="TaskNode" />
          <Geography>
            <Widget left="214" top="116" width="65.2" height="32.2" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="ec1d3cf4-507c-459e-d7b9-dd0ed4e01a5a" from="3c904413-16d3-434d-a97a-00821f4e5d94" to="fe370bc3-b773-426a-f224-e4927e13cb9f">
          <Description>请输入转移描述信息</Description>
          <Geography>
            <Line anchors="[[1,0.5,0,0,0,0],[0,0.5,0,1,-5,0]]" sourceId="ACT3c904413-16d3-434d-a97a-00821f4e5d94" targetId="ACTfe370bc3-b773-426a-f224-e4927e13cb9f" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', N'<?xml version="1.0" encoding="UTF-8"?>
<bpmn2:definitions xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpmn2="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:dc="http://www.omg.org/spec/DD/20100524/DC" xmlns:di="http://www.omg.org/spec/DD/20100524/DI" id="sample-diagram" targetNamespace="http://bpmn.io/schema/bpmn" xsi:schemaLocation="http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd">
  <bpmn2:process id="Process_1" isExecutable="false">
    <bpmn2:startEvent id="StartEvent_1">
      <bpmn2:outgoing>SequenceFlow_1385crd</bpmn2:outgoing>
    </bpmn2:startEvent>
    <bpmn2:task id="Task_0l4dmch" name="first steyp&#10;">
      <bpmn2:incoming>SequenceFlow_1385crd</bpmn2:incoming>
      <bpmn2:outgoing>SequenceFlow_1gb8wkb</bpmn2:outgoing>
    </bpmn2:task>
    <bpmn2:sequenceFlow id="SequenceFlow_1385crd" sourceRef="StartEvent_1" targetRef="Task_0l4dmch" />
    <bpmn2:task id="Task_1p2zhbe" name="second step&#10;">
      <bpmn2:incoming>SequenceFlow_1gb8wkb</bpmn2:incoming>
    </bpmn2:task>
    <bpmn2:sequenceFlow id="SequenceFlow_1gb8wkb" sourceRef="Task_0l4dmch" targetRef="Task_1p2zhbe" />
  </bpmn2:process>
  <bpmndi:BPMNDiagram id="BPMNDiagram_1">
    <bpmndi:BPMNPlane id="BPMNPlane_1" bpmnElement="Process_1">
      <bpmndi:BPMNShape id="_BPMNShape_StartEvent_2" bpmnElement="StartEvent_1">
        <dc:Bounds x="400" y="227" width="36" height="36" />
        <bpmndi:BPMNLabel>
          <dc:Bounds x="418" y="263" width="0" height="0" />
        </bpmndi:BPMNLabel>
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Task_0l4dmch_di" bpmnElement="Task_0l4dmch">
        <dc:Bounds x="555" y="205" width="100" height="80" />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNEdge id="SequenceFlow_1385crd_di" bpmnElement="SequenceFlow_1385crd">
        <di:waypoint xsi:type="dc:Point" x="436" y="245" />
        <di:waypoint xsi:type="dc:Point" x="555" y="245" />
        <bpmndi:BPMNLabel>
          <dc:Bounds x="496" y="230" width="0" height="0" />
        </bpmndi:BPMNLabel>
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNShape id="Task_1p2zhbe_di" bpmnElement="Task_1p2zhbe">
        <dc:Bounds x="752" y="205" width="100" height="80" />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNEdge id="SequenceFlow_1gb8wkb_di" bpmnElement="SequenceFlow_1gb8wkb">
        <di:waypoint xsi:type="dc:Point" x="655" y="245" />
        <di:waypoint xsi:type="dc:Point" x="752" y="245" />
        <bpmndi:BPMNLabel>
          <dc:Bounds x="704" y="230" width="0" height="0" />
        </bpmndi:BPMNLabel>
      </bpmndi:BPMNEdge>
    </bpmndi:BPMNPlane>
  </bpmndi:BPMNDiagram>
</bpmn2:definitions>
', N'how are you', CAST(0x0000A6C500FCDB30 AS DateTime), CAST(0x0000A6EA015D4D03 AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (96, N'fec85566-815f-4168-be13-821eec7acfe9', N'you', N'1', 1, NULL, NULL, NULL, N'\', N'<?xml version="1.0" encoding="utf-8"?><Package><WorkflowProcesses><Process name="you" id="fec85566-815f-4168-be13-821eec7acfe9"><Description>and me</Description></Process></WorkflowProcesses></Package>', NULL, N'and me', CAST(0x0000A6EA00AACE58 AS DateTime), NULL)
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (97, N'47e56460-d085-4116-95a1-4dd0e80f5718', N'memory', N'1', 1, NULL, NULL, NULL, N'\', N'<?xml version="1.0" encoding="utf-8"?><Package><WorkflowProcesses><Process name="memory" id="47e56460-d085-4116-95a1-4dd0e80f5718"><Description>fun</Description></Process></WorkflowProcesses></Package>', NULL, N'fun', CAST(0x0000A6EA00AB7999 AS DateTime), NULL)
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (103, N'1aa20a89-fb5a-41a5-b6cb-6e8499807dde', N'hello', N'1', 1, NULL, NULL, NULL, N'\', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <Participants>
    <Participant type="Role" id="867e456a-e626-4b8f-8c7c-2c524c3e75a8" name="testrole" code="testcode" outerId="21" />
    <Participant type="Role" id="097534cf-a473-4d29-f316-370bfe8d437e" name="包装员(Express)" code="expressmate" outerId="13" />
    <Participant type="Role" id="0a5f5a26-ae76-4611-9d4c-69cc1513225b" name="普通员工" code="employees" outerId="1" />
    <Participant type="Role" id="74ccd9bb-1e19-4f38-ae6d-9e2d6beb1391" name="财务经理" code="finacemanager" outerId="14" />
    <Participant type="Role" id="55cbc554-a6ec-4e81-9648-61890d60e32a" name="人事经理" code="hrmanager" outerId="3" />
    <Participant type="Role" id="16b48eae-ed77-49e7-b95f-99fe0816c3f7" name="部门经理" code="depmanager" outerId="2" />
  </Participants>
  <WorkflowProcesses>
    <Process name="hello" id="1aa20a89-fb5a-41a5-b6cb-6e8499807dde">
      <Description>why</Description>
      <Activities>
        <Activity name="开始" id="8f42a205-9c0f-455f-aeeb-68530c1d68bc" code="">
          <ActivityType type="StartNode" />
          <Geography>
            <Widget left="184" top="124" width="38" height="38" />
          </Geography>
        </Activity>
        <Activity name="结束" id="5b173641-dc98-49d6-ba72-2e28880e7de5" code="">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="627" top="124" width="38" height="38" />
          </Geography>
        </Activity>
        <Activity name="任务" id="105fdd00-f9f2-4c49-ebb1-27ea0d9e3d2b" code="task">
          <Description>desc</Description>
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="867e456a-e626-4b8f-8c7c-2c524c3e75a8" />
          </Performers>
          <Geography>
            <Widget left="333" top="124" width="67.2" height="27.2" />
          </Geography>
        </Activity>
        <Activity name="" id="198dcaa4-b931-43bd-87ea-239db162be35" code="">
          <ActivityType type="GatewayNode" gatewaySplitJoinType="Split" gatewayDirection="OrSplit" />
          <Geography>
            <Widget left="290" top="278" width="38" height="38" />
          </Geography>
        </Activity>
        <Activity name="会(加)签" id="c74ee748-3cad-4ee6-a3fb-df7101a7f018" code="">
          <ActivityType type="MultipleInstanceNode" complexType="SignTogether" mergeType="Sequence" compareType="Count" completeOrder="5" />
          <Performers>
            <Performer id="097534cf-a473-4d29-f316-370bfe8d437e" />
            <Performer id="0a5f5a26-ae76-4611-9d4c-69cc1513225b" />
            <Performer id="74ccd9bb-1e19-4f38-ae6d-9e2d6beb1391" />
            <Performer id="55cbc554-a6ec-4e81-9648-61890d60e32a" />
            <Performer id="16b48eae-ed77-49e7-b95f-99fe0816c3f7" />
            <Performer id="867e456a-e626-4b8f-8c7c-2c524c3e75a8" />
          </Performers>
          <Geography>
            <Widget left="446" top="278" width="67.2" height="27.2" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="5055fc73-4c8b-4f01-e9ce-562f7921dcd7" from="8f42a205-9c0f-455f-aeeb-68530c1d68bc" to="105fdd00-f9f2-4c49-ebb1-27ea0d9e3d2b">
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT8f42a205-9c0f-455f-aeeb-68530c1d68bc" targetId="ACT105fdd00-f9f2-4c49-ebb1-27ea0d9e3d2b" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="cb369937-bcae-4481-f34b-286ce58d3159" from="105fdd00-f9f2-4c49-ebb1-27ea0d9e3d2b" to="5b173641-dc98-49d6-ba72-2e28880e7de5">
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT105fdd00-f9f2-4c49-ebb1-27ea0d9e3d2b" targetId="ACT5b173641-dc98-49d6-ba72-2e28880e7de5" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="df060aba-72e3-42f3-dcbc-1525ba74a4af" from="198dcaa4-b931-43bd-87ea-239db162be35" to="c74ee748-3cad-4ee6-a3fb-df7101a7f018">
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT198dcaa4-b931-43bd-87ea-239db162be35" targetId="ACTc74ee748-3cad-4ee6-a3fb-df7101a7f018" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="111e553f-2504-4212-a0cb-ab81440e942d" from="c74ee748-3cad-4ee6-a3fb-df7101a7f018" to="5b173641-dc98-49d6-ba72-2e28880e7de5">
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACTc74ee748-3cad-4ee6-a3fb-df7101a7f018" targetId="ACT5b173641-dc98-49d6-ba72-2e28880e7de5" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', NULL, N'why', CAST(0x0000A6EB01503E4C AS DateTime), CAST(0x0000A6EB0154DC2C AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (104, N'b2a18777-43f1-4d4d-b9d5-f92aa655a93f', N'Ask for leave', N'1', 1, NULL, NULL, NULL, N'\', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <WorkflowProcesses>
    <Process name="Ask for leave" id="b2a18777-43f1-4d4d-b9d5-f92aa655a93f">
      <Activities>
        <Activity name="Start" id="849b95d4-6461-402a-f9f1-f443ced9b31a" code="">
          <ActivityType type="StartNode" />
          <Geography>
            <Widget left="171" top="138" width="38" height="38" />
          </Geography>
        </Activity>
        <Activity name="End" id="73a34903-b489-4dd5-9b28-a074a32f844b" code="">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="818" top="142" width="38" height="38" />
          </Geography>
        </Activity>
        <Activity name="Submit Request" id="b8d61c50-edfa-4edc-e890-7f0e84afa521" code="">
          <ActivityType type="TaskNode" />
          <Geography>
            <Widget left="312" top="138" width="67.2" height="27.2" />
          </Geography>
        </Activity>
        <Activity name="" id="0b41c280-b2dd-47eb-a074-73d56cb83e5b" code="">
          <ActivityType type="GatewayNode" gatewaySplitJoinType="Split" gatewayDirection="OrSplit" />
          <Geography>
            <Widget left="498" top="138" width="38" height="38" />
          </Geography>
        </Activity>
        <Activity name="Dept Manager Approve" id="6bd98004-cd04-4f3a-bf21-ca232dcd0533" code="">
          <ActivityType type="TaskNode" />
          <Geography>
            <Widget left="632" top="65" width="67.2" height="27.2" />
          </Geography>
        </Activity>
        <Activity name="HR Manager Approve" id="6dbedb92-b128-4ae7-a9c8-3d8826d4c481" code="">
          <ActivityType type="TaskNode" />
          <Geography>
            <Widget left="634" top="203" width="67.2" height="27.2" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="7529e098-6a9f-4755-8d2a-12e69dc46068" from="849b95d4-6461-402a-f9f1-f443ced9b31a" to="b8d61c50-edfa-4edc-e890-7f0e84afa521">
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT849b95d4-6461-402a-f9f1-f443ced9b31a" targetId="ACTb8d61c50-edfa-4edc-e890-7f0e84afa521" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="8050dd82-3a34-42c7-a994-15a3fe9b4a2d" from="b8d61c50-edfa-4edc-e890-7f0e84afa521" to="0b41c280-b2dd-47eb-a074-73d56cb83e5b">
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACTb8d61c50-edfa-4edc-e890-7f0e84afa521" targetId="ACT0b41c280-b2dd-47eb-a074-73d56cb83e5b" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="09abe631-68b9-4cfb-f3e9-d43692817c14" from="0b41c280-b2dd-47eb-a074-73d56cb83e5b" to="6bd98004-cd04-4f3a-bf21-ca232dcd0533">
          <Description>days &lt;= 3</Description>
          <Receiver />
          <Condition type="Expression" />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT0b41c280-b2dd-47eb-a074-73d56cb83e5b" targetId="ACT6bd98004-cd04-4f3a-bf21-ca232dcd0533" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="33be7303-e246-48a1-ba83-ac038f1a06f5" from="0b41c280-b2dd-47eb-a074-73d56cb83e5b" to="6dbedb92-b128-4ae7-a9c8-3d8826d4c481">
          <Description>days &gt; 3</Description>
          <Receiver />
          <Condition type="Expression" />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT0b41c280-b2dd-47eb-a074-73d56cb83e5b" targetId="ACT6dbedb92-b128-4ae7-a9c8-3d8826d4c481" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="c7dc0035-5230-4b38-e625-506ea9cfb117" from="6bd98004-cd04-4f3a-bf21-ca232dcd0533" to="73a34903-b489-4dd5-9b28-a074a32f844b">
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT6bd98004-cd04-4f3a-bf21-ca232dcd0533" targetId="ACT73a34903-b489-4dd5-9b28-a074a32f844b" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="7dcd8bc6-99d9-4081-fdc6-f94c36f01907" from="6dbedb92-b128-4ae7-a9c8-3d8826d4c481" to="73a34903-b489-4dd5-9b28-a074a32f844b">
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT6dbedb92-b128-4ae7-a9c8-3d8826d4c481" targetId="ACT73a34903-b489-4dd5-9b28-a074a32f844b" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', NULL, N'', CAST(0x0000A6EC00F3F9FB AS DateTime), CAST(0x0000A6EC011F7CEA AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (39, N'b4a20dbe-497a-4453-b446-c0122f33ce65', N'testflow', N'1', 1, N'testflowapp', NULL, N'price\testflow.xml', N'testflowapp\price\testflow.xml', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <Participants>
    <Participant type="Role" id="fbf8cb6a-8774-494f-f8dc-62a73f1490fc" name="普通员工" code="employees" outerId="1" />
  </Participants>
  <WorkflowProcesses>
    <Process name="testflow" id="b4a20dbe-497a-4453-b446-c0122f33ce65">
      <Description>asfljasfd</Description>
      <Activities>
        <Activity name="开始" id="e0067b99-db38-4bea-cee2-cf795ee953f9" code="">
          <ActivityType type="StartNode" />
          <Geography>
            <Widget left="190" top="105" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="结束" id="9d5aba66-4a04-463a-ff7f-913f6af09985" code="">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="747" top="105" width="40" height="40" />
          </Geography>
        </Activity>
        <Activity name="申请" id="53bfaf83-5ab6-458d-d9d9-1176b0b3e27f" code="apply">
          <Description>sdgfdgfdsg</Description>
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="fbf8cb6a-8774-494f-f8dc-62a73f1490fc" />
          </Performers>
          <Geography>
            <Widget left="345" top="104" width="67.2" height="29.2" />
          </Geography>
        </Activity>
        <Activity name="报销会签" id="ca469cd1-5284-4516-f6ac-ee7c1935855a" code="huiqian">
          <Description>啊哈哈</Description>
          <ActivityType type="MultipleInstanceNode" complexType="undefined" mergeType="undefined" compareType="undefined" completeOrder="undefined" />
          <Performers>
            <Performer id="fbf8cb6a-8774-494f-f8dc-62a73f1490fc" />
          </Performers>
          <Geography>
            <Widget left="532" top="104" width="67.2" height="29.2" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="ff2194b3-75ce-4fea-b053-85b19ce13795" from="e0067b99-db38-4bea-cee2-cf795ee953f9" to="53bfaf83-5ab6-458d-d9d9-1176b0b3e27f">
          <Description>请输入转移描述信息</Description>
          <Condition />
          <Geography>
            <Line fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="9ec46d24-6c63-4a0b-dff8-c6cb466ec9be" from="53bfaf83-5ab6-458d-d9d9-1176b0b3e27f" to="ca469cd1-5284-4516-f6ac-ee7c1935855a">
          <Description>请输入转移描述信息</Description>
          <Condition />
          <Geography>
            <Line fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="10602fb2-bb6d-47f4-d680-fa352a7f6653" from="ca469cd1-5284-4516-f6ac-ee7c1935855a" to="9d5aba66-4a04-463a-ff7f-913f6af09985">
          <Description>请输入转移描述信息</Description>
          <Condition />
          <Geography>
            <Line fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', NULL, N'asfljasfd', CAST(0x0000A4FC00B95A3A AS DateTime), CAST(0x0000A51C0167700D AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (90, N'88e3df8f-b6d9-4b56-8643-a7b663fe3c0a', N'dpmn-01', N'1', 1, NULL, NULL, NULL, N'\', NULL, N'<?xml version="1.0" encoding="UTF-8"?>
<bpmn2:definitions xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpmn2="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:dc="http://www.omg.org/spec/DD/20100524/DC" xmlns:di="http://www.omg.org/spec/DD/20100524/DI" id="sample-diagram" targetNamespace="http://bpmn.io/schema/bpmn" xsi:schemaLocation="http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd">
  <bpmn2:process id="Process_1" isExecutable="false">
    <bpmn2:startEvent id="StartEvent_1">
      <bpmn2:outgoing>SequenceFlow_0zl8vgb</bpmn2:outgoing>
    </bpmn2:startEvent>
    <bpmn2:task id="Task_039x1w4" name="主板">
      <bpmn2:incoming>SequenceFlow_0zl8vgb</bpmn2:incoming>
      <bpmn2:outgoing>SequenceFlow_0lqtijr</bpmn2:outgoing>
      <bpmn2:multiInstanceLoopCharacteristics isSequential="true" />
    </bpmn2:task>
    <bpmn2:sequenceFlow id="SequenceFlow_0zl8vgb" sourceRef="StartEvent_1" targetRef="Task_039x1w4" />
    <bpmn2:endEvent id="EndEvent_0qem1o9">
      <bpmn2:incoming>SequenceFlow_0lqtijr</bpmn2:incoming>
    </bpmn2:endEvent>
    <bpmn2:sequenceFlow id="SequenceFlow_0lqtijr" sourceRef="Task_039x1w4" targetRef="EndEvent_0qem1o9" />
  </bpmn2:process>
  <bpmndi:BPMNDiagram id="BPMNDiagram_1">
    <bpmndi:BPMNPlane id="BPMNPlane_1" bpmnElement="Process_1">
      <bpmndi:BPMNShape id="_BPMNShape_StartEvent_2" bpmnElement="StartEvent_1">
        <dc:Bounds x="412" y="240" width="36" height="36" />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Task_039x1w4_di" bpmnElement="Task_039x1w4">
        <dc:Bounds x="577" y="218" width="100" height="80" />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNEdge id="SequenceFlow_0zl8vgb_di" bpmnElement="SequenceFlow_0zl8vgb">
        <di:waypoint xsi:type="dc:Point" x="448" y="258" />
        <di:waypoint xsi:type="dc:Point" x="577" y="258" />
        <bpmndi:BPMNLabel>
          <dc:Bounds x="513" y="233" width="0" height="0" />
        </bpmndi:BPMNLabel>
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNShape id="EndEvent_0qem1o9_di" bpmnElement="EndEvent_0qem1o9">
        <dc:Bounds x="769" y="240" width="36" height="36" />
        <bpmndi:BPMNLabel>
          <dc:Bounds x="787" y="276" width="0" height="0" />
        </bpmndi:BPMNLabel>
      </bpmndi:BPMNShape>
      <bpmndi:BPMNEdge id="SequenceFlow_0lqtijr_di" bpmnElement="SequenceFlow_0lqtijr">
        <di:waypoint xsi:type="dc:Point" x="677" y="258" />
        <di:waypoint xsi:type="dc:Point" x="769" y="258" />
        <bpmndi:BPMNLabel>
          <dc:Bounds x="723" y="233" width="0" height="0" />
        </bpmndi:BPMNLabel>
      </bpmndi:BPMNEdge>
    </bpmndi:BPMNPlane>
  </bpmndi:BPMNDiagram>
</bpmn2:definitions>
', N'sample project', CAST(0x0000A6C900B19A5A AS DateTime), CAST(0x0000A6CE00B98629 AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (92, N'672af8c3-482a-4b1c-890b-685ce2fcc75d', N'国外交流访学流程', N'1.0', 1, NULL, NULL, NULL, NULL, N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <WorkflowProcesses>
    <Process name="国外交流访学流程" id="672af8c3-482a-4b1c-890b-685ce2fcc75d">
      <Activities>
        <Activity name="Task" id="8828c9cf-4a8c-428d-e60c-e5aea9ea489f" code="">
          <ActivityType type="TaskNode" />
          <Geography>
            <Widget left="445" top="26" width="67.2" height="27.2" />
          </Geography>
        </Activity>
        <Activity name="Gateway" id="4e112b08-8a94-4c67-e5ae-15f4dfabb21f" code="">
          <ActivityType type="GatewayNode" gatewaySplitJoinType="Split" gatewayDirection="OrSplit" />
          <Geography>
            <Widget left="240" top="139" width="38" height="38" />
          </Geography>
        </Activity>
        <Activity name="新节点" id="ca960d3e-105c-48a8-e861-998fe70a2699" code="">
          <ActivityType type="TaskNode" />
          <Geography>
            <Widget left="446" top="139" width="67.2" height="27.2" />
          </Geography>
        </Activity>
        <Activity name="新节点" id="215bbb09-7439-4433-e534-334609494c53" code="">
          <ActivityType type="TaskNode" />
          <Geography>
            <Widget left="447" top="255" width="67.2" height="27.2" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="58b99f23-f103-4c91-c9c0-ad1a974e7666" from="4e112b08-8a94-4c67-e5ae-15f4dfabb21f" to="8828c9cf-4a8c-428d-e60c-e5aea9ea489f">
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT4e112b08-8a94-4c67-e5ae-15f4dfabb21f" targetId="ACT8828c9cf-4a8c-428d-e60c-e5aea9ea489f" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="3ca287ed-ada9-48aa-e71e-e746d88dbb75" from="4e112b08-8a94-4c67-e5ae-15f4dfabb21f" to="ca960d3e-105c-48a8-e861-998fe70a2699">
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT4e112b08-8a94-4c67-e5ae-15f4dfabb21f" targetId="ACTca960d3e-105c-48a8-e861-998fe70a2699" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="911fe964-67a9-4237-8cef-ced3633ac6fb" from="4e112b08-8a94-4c67-e5ae-15f4dfabb21f" to="215bbb09-7439-4433-e534-334609494c53">
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT4e112b08-8a94-4c67-e5ae-15f4dfabb21f" targetId="ACT215bbb09-7439-4433-e534-334609494c53" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', NULL, NULL, CAST(0x0000A6E500FBB893 AS DateTime), NULL)
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (99, N'70d3e79a-779e-4faf-afba-5e5f51d51cff', N'memory', N'1', 1, NULL, NULL, NULL, N'\', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <WorkflowProcesses>
    <Process name="memory" id="70d3e79a-779e-4faf-afba-5e5f51d51cff">
      <Description>ok</Description>
      <Activities>
        <Activity name="新节点" id="60b7e1b8-0023-4fe8-92e8-cfc35597d64a" code="">
          <ActivityType type="TaskNode" />
          <Geography>
            <Widget left="144" top="162" width="65.4" height="25.4" />
          </Geography>
        </Activity>
        <Activity name="Gateway" id="ec8a4e36-66bd-4e41-c953-6694bcadb385" code="">
          <ActivityType type="GatewayNode" gatewaySplitJoinType="undefined" gatewayDirection="undefined" />
          <Geography>
            <Widget left="582" top="155" width="38" height="38" />
          </Geography>
        </Activity>
        <Activity name="结束" id="9aa526da-f207-4a1c-d00a-cb8fa334a95a" code="">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="315" top="70" width="58" height="58" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="aabc502c-c87c-4b5e-c447-a369e8a74aab" from="9aa526da-f207-4a1c-d00a-cb8fa334a95a" to="ec8a4e36-66bd-4e41-c953-6694bcadb385">
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT9aa526da-f207-4a1c-d00a-cb8fa334a95a" targetId="ACTec8a4e36-66bd-4e41-c953-6694bcadb385" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="4d95d04d-3aae-4c9d-954d-b23fab0fdbcb" from="60b7e1b8-0023-4fe8-92e8-cfc35597d64a" to="9aa526da-f207-4a1c-d00a-cb8fa334a95a">
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT60b7e1b8-0023-4fe8-92e8-cfc35597d64a" targetId="ACT9aa526da-f207-4a1c-d00a-cb8fa334a95a" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', NULL, N'ok', CAST(0x0000A6EA00ADF87F AS DateTime), CAST(0x0000A6EA0100E82D AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (100, N'df269a6b-24fe-40af-b778-c2b0cb874175', N'memory2', N'1', 1, NULL, NULL, NULL, N'\', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <WorkflowProcesses>
    <Process name="memory2" id="df269a6b-24fe-40af-b778-c2b0cb874175">
      <Description>funh</Description>
      <Activities>
        <Activity name="新节点" id="568bb756-fc07-4745-c581-a06d11ce73f8" code="">
          <ActivityType type="TaskNode" />
          <Geography>
            <Widget left="169" top="119" width="65.4" height="25.4" />
          </Geography>
        </Activity>
        <Activity name="新节点" id="f8bf3e8b-4701-44f1-b410-c1c3fb9e0ac2" code="">
          <ActivityType type="TaskNode" />
          <Geography>
            <Widget left="299" top="151" width="65.4" height="25.4" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="943de7cf-b178-493d-aeb4-8d24b7c4d25d" from="568bb756-fc07-4745-c581-a06d11ce73f8" to="f8bf3e8b-4701-44f1-b410-c1c3fb9e0ac2">
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT568bb756-fc07-4745-c581-a06d11ce73f8" targetId="ACTf8bf3e8b-4701-44f1-b410-c1c3fb9e0ac2" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', NULL, N'funh', CAST(0x0000A6EA00B1208A AS DateTime), CAST(0x0000A6EA00B12D3C AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (106, N'a2dced3a-54b6-4733-b217-d67c6eac4117', N'many', N'1', 1, NULL, NULL, NULL, N'\', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <WorkflowProcesses>
    <Process name="many" id="a2dced3a-54b6-4733-b217-d67c6eac4117">
      <Description>2</Description>
      <Activities>
        <Activity name="Start" id="e8fbe108-a035-48a3-bd58-69743ef3e22c" code="">
          <ActivityType type="StartNode" />
          <Geography>
            <Widget left="179" top="121" width="38" height="38" />
          </Geography>
        </Activity>
        <Activity name="End" id="f768ef6a-d71d-4c93-f0e2-5b7426e3040f" code="">
          <ActivityType type="EndNode" />
          <Geography>
            <Widget left="504" top="151" width="38" height="38" />
          </Geography>
        </Activity>
        <Activity name="子流程" id="f9d5032a-bcd8-4a77-eb2e-08b202d438f9" code="">
          <ActivityType type="SubProcessNode" subId="b2a18777-43f1-4d4d-b9d5-f92aa655a93f" />
          <Geography>
            <Widget left="295" top="249" width="67.2" height="27.2" />
          </Geography>
        </Activity>
        <Activity name="Task" id="4f78dab2-d473-45c9-8307-344ccebb96ba" code="">
          <ActivityType type="TaskNode" />
          <Geography>
            <Widget left="331" top="30" width="67.2" height="27.2" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="38774f96-cbc4-42ea-a469-ec2fa2886798" from="e8fbe108-a035-48a3-bd58-69743ef3e22c" to="f768ef6a-d71d-4c93-f0e2-5b7426e3040f">
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACTe8fbe108-a035-48a3-bd58-69743ef3e22c" targetId="ACTf768ef6a-d71d-4c93-f0e2-5b7426e3040f" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', NULL, N'2', CAST(0x0000A6F10112D900 AS DateTime), CAST(0x0000A6F300ECFD22 AS DateTime))
INSERT [dbo].[WfProcess] ([ID], [ProcessGUID], [ProcessName], [Version], [IsUsing], [AppType], [PageUrl], [XmlFileName], [XmlFilePath], [XmlContent], [BPMNContent], [Description], [CreatedDateTime], [LastUpdatedDateTime]) VALUES (102, N'eb242327-7fa5-47a3-b7fa-09f3633c3570', N'test', N'1', 1, NULL, NULL, NULL, N'\', N'<?xml version="1.0" encoding="utf-8" ?>
<Package>
  <Participants>
    <Participant type="Role" id="dbc38ec5-2d69-4538-e84d-e8999344a159" name="部门经理" code="depmanager" outerId="2" />
    <Participant type="Role" id="6f123f3f-7608-4e62-8aeb-57701e2b560c" name="财务经理" code="finacemanager" outerId="14" />
    <Participant type="Role" id="ab680ab0-2126-403c-f302-869fdcf2f745" name="打样员(Tech)" code="techmate" outerId="10" />
    <Participant type="Role" id="444f89ef-faed-4f9c-8158-83b7112e17fc" name="副总经理" code="deputygeneralmanager" outerId="7" />
    <Participant type="Role" id="4e73b2ed-85d2-4692-99c3-e6ec95bf87e9" name="普通员工" code="employees" outerId="1" />
    <Participant type="Role" id="bd56707d-eedc-4266-877f-f4d03a4b1fe7" name="跟单员(Made)" code="merchandiser" outerId="11" />
  </Participants>
  <WorkflowProcesses>
    <Process name="test" id="eb242327-7fa5-47a3-b7fa-09f3633c3570">
      <Description>one</Description>
      <Activities>
        <Activity name="任务" id="b9dbc387-450d-4b21-a120-d12b65396902" code="">
          <ActivityType type="TaskNode" />
          <Performers>
            <Performer id="dbc38ec5-2d69-4538-e84d-e8999344a159" />
            <Performer id="ab680ab0-2126-403c-f302-869fdcf2f745" />
          </Performers>
          <Geography>
            <Widget left="227" top="181" width="67.2" height="27.2" />
          </Geography>
        </Activity>
        <Activity name="会(加)签" id="9ea00365-c7ef-47b5-9c7a-af7157006598" code="">
          <ActivityType type="MultipleInstanceNode" complexType="SignTogether" mergeType="Sequence" compareType="Count" completeOrder="5" />
          <Geography>
            <Widget left="414" top="195" width="67.2" height="27.2" />
          </Geography>
        </Activity>
        <Activity name="" id="b95567c3-e769-450f-ad63-3b5945bba592" code="">
          <ActivityType type="GatewayNode" gatewaySplitJoinType="Split" gatewayDirection="AndSplit" />
          <Geography>
            <Widget left="628" top="116" width="38" height="38" />
          </Geography>
        </Activity>
      </Activities>
      <Transitions>
        <Transition id="9e407ac4-9feb-4b95-87ff-1c50105c3051" from="b9dbc387-450d-4b21-a120-d12b65396902" to="9ea00365-c7ef-47b5-9c7a-af7157006598">
          <Receiver />
          <Condition />
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACTb9dbc387-450d-4b21-a120-d12b65396902" targetId="ACT9ea00365-c7ef-47b5-9c7a-af7157006598" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
        <Transition id="7f826e19-bb13-4551-ad7c-e8ed8f012af4" from="9ea00365-c7ef-47b5-9c7a-af7157006598" to="b95567c3-e769-450f-ad63-3b5945bba592">
          <Geography>
            <Line anchors="[[1,0.5,1,0,0,0],[0,0.5,-1,0,0,0]]" sourceId="ACT9ea00365-c7ef-47b5-9c7a-af7157006598" targetId="ACTb95567c3-e769-450f-ad63-3b5945bba592" fromConnector="1" toConnector="1" />
          </Geography>
        </Transition>
      </Transitions>
    </Process>
  </WorkflowProcesses>
</Package>', NULL, N'one', CAST(0x0000A6EB00E980CE AS DateTime), CAST(0x0000A6EB01010E3E AS DateTime))
/****** Object:  Table [dbo].[WfLog]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WfLog](
	[ID] [int] NOT NULL,
	[EventTypeID] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[Severity] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[Message] [nvarchar](500) NULL,
	[StackTrace] [nvarchar](4000) NULL,
	[InnerStackTrace] [nvarchar](4000) NULL,
	[RequestData] [nvarchar](2000) NULL,
	[Timestamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WfActivityInstance]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WfActivityInstance](
	[ID] [int] NOT NULL,
	[ProcessInstanceID] [int] NOT NULL,
	[AppName] [nvarchar](50) NOT NULL,
	[AppInstanceID] [varchar](50) NOT NULL,
	[ProcessGUID] [varchar](100) NOT NULL,
	[ActivityGUID] [varchar](100) NOT NULL,
	[ActivityName] [nvarchar](50) NOT NULL,
	[ActivityType] [smallint] NOT NULL,
	[ActivityState] [smallint] NOT NULL,
	[WorkItemType] [smallint] NOT NULL,
	[AssignedToUserIDs] [nvarchar](1000) NULL,
	[AssignedToUserNames] [nvarchar](2000) NULL,
	[BackwardType] [smallint] NULL,
	[BackSrcActivityInstanceID] [int] NULL,
	[GatewayDirectionTypeID] [smallint] NULL,
	[CanRenewInstance] [tinyint] NOT NULL,
	[TokensRequired] [int] NOT NULL,
	[TokensHad] [int] NOT NULL,
	[ComplexType] [smallint] NULL,
	[MergeType] [smallint] NULL,
	[MIHostActivityInstanceID] [int] NULL,
	[CompleteOrder] [float] NULL,
	[SignForwardType] [smallint] NULL,
	[CreatedByUserID] [varchar](50) NOT NULL,
	[CreatedByUserName] [nvarchar](50) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[LastUpdatedByUserID] [varchar](50) NULL,
	[LastUpdatedByUserName] [nvarchar](50) NULL,
	[LastUpdatedDateTime] [datetime] NULL,
	[EndedDateTime] [datetime] NULL,
	[EndedByUserID] [varchar](50) NULL,
	[EndedByUserName] [nvarchar](50) NULL,
	[RecordStatusInvalid] [tinyint] NOT NULL,
	[RowVersionID] [timestamp] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (1988, 862, N'SamplePrice', N'3096', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE7 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD4 AS DateTime), CAST(0x0000A6B300EEBFD4 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (1989, 815, N'SamplePrice', N'58495', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE7 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD7 AS DateTime), CAST(0x0000A6B300EEBFD7 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (1990, 812, N'SamplePrice', N'28179', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD3 AS DateTime), CAST(0x0000A6B300EEBFD3 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (1991, 816, N'SamplePrice', N'3096', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD8 AS DateTime), CAST(0x0000A6B300EEBFD8 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (1992, 826, N'SamplePrice', N'64059', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE7 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCF AS DateTime), CAST(0x0000A6B300EEBFCF AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (1993, 834, N'SamplePrice', N'53261', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD7 AS DateTime), CAST(0x0000A6B300EEBFD7 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (1994, 853, N'SamplePrice', N'92298', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD4 AS DateTime), CAST(0x0000A6B300EEBFD4 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (1995, 865, N'SamplePrice', N'38977', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCE AS DateTime), CAST(0x0000A6B300EEBFCE AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (1996, 869, N'SamplePrice', N'92298', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBD1C AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCE AS DateTime), CAST(0x0000A6B300EEBFDB AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (1997, 870, N'SamplePrice', N'17381', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCE AS DateTime), CAST(0x0000A6B300EEBFCE AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (1998, 813, N'SamplePrice', N'83577', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCE AS DateTime), CAST(0x0000A6B300EEBFCE AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (1999, 877, N'SamplePrice', N'22945', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD7 AS DateTime), CAST(0x0000A6B300EEBFD7 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2000, 867, N'SamplePrice', N'47697', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCE AS DateTime), CAST(0x0000A6B300EEBFCE AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2001, 847, N'SamplePrice', N'72779', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCE AS DateTime), CAST(0x0000A6B300EEBFCE AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2002, 876, N'SamplePrice', N'61981', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD7 AS DateTime), CAST(0x0000A6B300EEBFD7 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2003, 819, N'SamplePrice', N'87064', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD6 AS DateTime), CAST(0x0000A6B300EEBFD6 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2004, 850, N'SamplePrice', N'33743', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCE AS DateTime), CAST(0x0000A6B300EEBFCE AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2005, 860, N'SamplePrice', N'73109', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE7 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD5 AS DateTime), CAST(0x0000A6B300EEBFD5 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2006, 878, N'SamplePrice', N'31665', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCE AS DateTime), CAST(0x0000A6B300EEBFCE AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2007, 839, N'SamplePrice', N'78343', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD5 AS DateTime), CAST(0x0000A6B300EEBFD5 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2008, 856, N'SamplePrice', N'33743', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFDB AS DateTime), CAST(0x0000A6B300EEBFDB AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2009, 852, N'SamplePrice', N'48027', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD2 AS DateTime), CAST(0x0000A6B300EEBFD2 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2010, 849, N'SamplePrice', N'97862', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCE AS DateTime), CAST(0x0000A6B300EEBFCE AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2011, 825, N'SamplePrice', N'72779', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFDB AS DateTime), CAST(0x0000A6B300EEBFDB AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2012, 854, N'SamplePrice', N'12477', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCF AS DateTime), CAST(0x0000A6B300EEBFCF AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2013, 814, N'SamplePrice', N'42463', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFDB AS DateTime), CAST(0x0000A6B300EEBFDB AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2014, 851, N'SamplePrice', N'87064', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD8 AS DateTime), CAST(0x0000A6B300EEBFD8 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2015, 818, N'SamplePrice', N'6583', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCE AS DateTime), CAST(0x0000A6B300EEBFCE AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2016, 835, N'SamplePrice', N'3427', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD5 AS DateTime), CAST(0x0000A6B300EEBFD5 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2017, 817, N'SamplePrice', N'92628', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD7 AS DateTime), CAST(0x0000A6B300EEBFD7 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2018, 829, N'SamplePrice', N'87394', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD4 AS DateTime), CAST(0x0000A6B300EEBFD4 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2019, 831, N'SamplePrice', N'17711', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCE AS DateTime), CAST(0x0000A6B300EEBFCE AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2020, 859, N'SamplePrice', N'56748', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD7 AS DateTime), CAST(0x0000A6B300EEBFD7 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2021, 821, N'SamplePrice', N'26432', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD7 AS DateTime), CAST(0x0000A6B300EEBFD7 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2022, 838, N'SamplePrice', N'71032', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCF AS DateTime), CAST(0x0000A6B300EEBFCF AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2023, 820, N'SamplePrice', N'37229', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD7 AS DateTime), CAST(0x0000A6B300EEBFD7 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2024, 846, N'SamplePrice', N'1349', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCE AS DateTime), CAST(0x0000A6B300EEBFCE AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2025, 840, N'SamplePrice', N'15634', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCE AS DateTime), CAST(0x0000A6B300EEBFCE AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2026, 824, N'SamplePrice', N'45950', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCE AS DateTime), CAST(0x0000A6B300EEBFCE AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2027, 836, N'SamplePrice', N'76266', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFDB AS DateTime), CAST(0x0000A6B300EEBFDB AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2028, 832, N'SamplePrice', N'6913', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD5 AS DateTime), CAST(0x0000A6B300EEBFD5 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2029, 837, N'SamplePrice', N'37229', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD3 AS DateTime), CAST(0x0000A6B300EEBFD3 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2030, 848, N'SamplePrice', N'45950', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD7 AS DateTime), CAST(0x0000A6B300EEBFD7 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2031, 823, N'SamplePrice', N'81830', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCE AS DateTime), CAST(0x0000A6B300EEBFCE AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2032, 841, N'SamplePrice', N'42793', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD3 AS DateTime), CAST(0x0000A6B300EEBFD3 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2033, 880, N'SamplePrice', N'31996', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE7 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCE AS DateTime), CAST(0x0000A6B300EEBFCE AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2034, 866, N'SamplePrice', N'25014', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCFA AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCE AS DateTime), CAST(0x0000A6B300EEBFCE AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2035, 879, N'SamplePrice', N'6913', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE7 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD7 AS DateTime), CAST(0x0000A6B300EEBFD7 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2036, 833, N'SamplePrice', N'71032', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCE AS DateTime), CAST(0x0000A6B300EEBFCE AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2037, 827, N'SamplePrice', N'96114', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFCF AS DateTime), CAST(0x0000A6B300EEBFCF AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2038, 881, N'SamplePrice', N'87394', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD5 AS DateTime), CAST(0x0000A6B300EEBFD5 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2039, 857, N'SamplePrice', N'40716', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD4 AS DateTime), CAST(0x0000A6B300EEBFD4 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2040, 861, N'SamplePrice', N'71362', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE7 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD8 AS DateTime), CAST(0x0000A6B300EEBFD8 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2041, 843, N'SamplePrice', N'15634', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFDC AS DateTime), CAST(0x0000A6B300EEBFDC AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2042, 868, N'SamplePrice', N'21528', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD8 AS DateTime), CAST(0x0000A6B300EEBFD8 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2043, 858, N'SamplePrice', N'12477', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCFC AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFE1 AS DateTime), CAST(0x0000A6B300EEBFE1 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2044, 828, N'SamplePrice', N'82160', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFDB AS DateTime), CAST(0x0000A6B300EEBFDB AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2045, 864, N'SamplePrice', N'10400', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD5 AS DateTime), CAST(0x0000A6B300EEBFD5 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2046, 842, N'SamplePrice', N'80083', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD6 AS DateTime), CAST(0x0000A6B300EEBFD6 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2047, 882, N'SamplePrice', N'80083', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCFB AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD6 AS DateTime), CAST(0x0000A6B300EEBFD6 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2048, 874, N'SamplePrice', N'49767', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE7 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD7 AS DateTime), CAST(0x0000A6B300EEBFD7 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2049, 855, N'SamplePrice', N'41046', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD0 AS DateTime), CAST(0x0000A6B300EEBFD0 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2050, 883, N'SamplePrice', N'69615', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCFA AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD7 AS DateTime), CAST(0x0000A6B300EEBFD7 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2051, 844, N'SamplePrice', N'85647', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFDC AS DateTime), CAST(0x0000A6B300EEBFDC AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2052, 863, N'SamplePrice', N'33735', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCF4 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD7 AS DateTime), CAST(0x0000A6B300EEBFD7 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2053, 873, N'SamplePrice', N'94367', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFDB AS DateTime), CAST(0x0000A6B300EEBFDB AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2054, 822, N'SamplePrice', N'74849', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCE8 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFDC AS DateTime), CAST(0x0000A6B300EEBFDC AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2055, 871, N'SamplePrice', N'89133', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCF6 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFDD AS DateTime), CAST(0x0000A6B300EEBFDD AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2056, 830, N'SamplePrice', N'60895', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCF6 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFDB AS DateTime), CAST(0x0000A6B300EEBFDB AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2057, 875, N'SamplePrice', N'69615', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCF3 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD4 AS DateTime), CAST(0x0000A6B300EEBFD4 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2058, 884, N'SamplePrice', N'69615', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBCF9 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFD4 AS DateTime), CAST(0x0000A6B300EEBFD4 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2059, 845, N'SamplePrice', N'19450', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBD00 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFDB AS DateTime), CAST(0x0000A6B300EEBFDB AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2060, 872, N'SamplePrice', N'80413', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEBD00 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEBFDB AS DateTime), CAST(0x0000A6B300EEBFDB AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2061, 865, N'SamplePrice', N'38977', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2062, 815, N'SamplePrice', N'58495', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2063, 853, N'SamplePrice', N'92298', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2064, 867, N'SamplePrice', N'47697', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2065, 816, N'SamplePrice', N'3096', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2066, 826, N'SamplePrice', N'64059', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2067, 813, N'SamplePrice', N'83577', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2068, 862, N'SamplePrice', N'3096', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0A6 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2069, 847, N'SamplePrice', N'72779', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0A7 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2070, 852, N'SamplePrice', N'48027', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2071, 849, N'SamplePrice', N'97862', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2072, 860, N'SamplePrice', N'73109', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0CB AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2073, 850, N'SamplePrice', N'33743', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2074, 856, N'SamplePrice', N'33743', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0CA AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2075, 825, N'SamplePrice', N'72779', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0C9 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2076, 839, N'SamplePrice', N'78343', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2077, 814, N'SamplePrice', N'42463', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0CA AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2078, 812, N'SamplePrice', N'28179', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0A7 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2079, 819, N'SamplePrice', N'87064', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2080, 837, N'SamplePrice', N'37229', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0CD AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2081, 834, N'SamplePrice', N'53261', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2082, 818, N'SamplePrice', N'6583', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0CA AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2083, 820, N'SamplePrice', N'37229', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2084, 851, N'SamplePrice', N'87064', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0CD AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2085, 835, N'SamplePrice', N'3427', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2086, 817, N'SamplePrice', N'92628', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2087, 831, N'SamplePrice', N'17711', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0F9 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2088, 829, N'SamplePrice', N'87394', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2089, 832, N'SamplePrice', N'6913', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2090, 874, N'SamplePrice', N'49767', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0C9 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2091, 883, N'SamplePrice', N'69615', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0A5 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2092, 869, N'SamplePrice', N'92298', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0A4 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2093, 870, N'SamplePrice', N'17381', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2094, 823, N'SamplePrice', N'81830', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC103 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2095, 824, N'SamplePrice', N'45950', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0FD AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2096, 836, N'SamplePrice', N'76266', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC105 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2097, 833, N'SamplePrice', N'71032', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0FD AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2098, 841, N'SamplePrice', N'42793', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC126 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2099, 879, N'SamplePrice', N'6913', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2100, 821, N'SamplePrice', N'26432', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC127 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2101, 854, N'SamplePrice', N'12477', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2102, 843, N'SamplePrice', N'15634', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0FD AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2103, 838, N'SamplePrice', N'71032', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC189 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2104, 848, N'SamplePrice', N'45950', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2105, 876, N'SamplePrice', N'61981', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2106, 881, N'SamplePrice', N'87394', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC18A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2107, 878, N'SamplePrice', N'31665', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2108, 864, N'SamplePrice', N'10400', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC137 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2109, 827, N'SamplePrice', N'96114', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0CE AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2110, 857, N'SamplePrice', N'40716', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0CF AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2111, 859, N'SamplePrice', N'56748', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2112, 846, N'SamplePrice', N'1349', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2113, 840, N'SamplePrice', N'15634', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2114, 858, N'SamplePrice', N'12477', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC126 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2115, 877, N'SamplePrice', N'22945', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC08A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2116, 868, N'SamplePrice', N'21528', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC089 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2117, 855, N'SamplePrice', N'41046', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC20B AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2118, 828, N'SamplePrice', N'82160', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC20A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2119, 844, N'SamplePrice', N'85647', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC20F AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2120, 882, N'SamplePrice', N'80083', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC207 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2121, 842, N'SamplePrice', N'80083', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC126 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2122, 873, N'SamplePrice', N'94367', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC210 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2123, 861, N'SamplePrice', N'71362', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0CF AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2124, 880, N'SamplePrice', N'31996', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC18B AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2125, 822, N'SamplePrice', N'74849', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC211 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2126, 845, N'SamplePrice', N'19450', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC211 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2127, 830, N'SamplePrice', N'60895', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC212 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2128, 875, N'SamplePrice', N'69615', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0FD AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2129, 872, N'SamplePrice', N'80413', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC211 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2130, 866, N'SamplePrice', N'25014', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC0A8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2131, 887, N'SamplePrice', N'41046', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC305 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC379 AS DateTime), CAST(0x0000A6B300EEC379 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2132, 886, N'SamplePrice', N'66128', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC305 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC378 AS DateTime), CAST(0x0000A6B300EEC378 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2133, 885, N'SamplePrice', N'94367', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC304 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC379 AS DateTime), CAST(0x0000A6B300EEC379 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2134, 889, N'SamplePrice', N'60895', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC35A AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC38A AS DateTime), CAST(0x0000A6B300EEC38A AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2135, 891, N'SamplePrice', N'35812', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC35B AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC38A AS DateTime), CAST(0x0000A6B300EEC38A AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2136, 888, N'SamplePrice', N'10730', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC35A AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC3B3 AS DateTime), CAST(0x0000A6B300EEC3B3 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2137, 871, N'SamplePrice', N'89133', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC12C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2138, 890, N'SamplePrice', N'91211', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC35B AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC3B5 AS DateTime), CAST(0x0000A6B300EEC3B5 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2139, 892, N'SamplePrice', N'69615', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC37A AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC3D2 AS DateTime), CAST(0x0000A6B300EEC3D2 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2140, 884, N'SamplePrice', N'69615', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC180 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2141, 863, N'SamplePrice', N'33735', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC2AC AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2142, 887, N'SamplePrice', N'41046', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC38A AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2143, 886, N'SamplePrice', N'66128', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC38B AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2144, 893, N'SamplePrice', N'44533', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC38B AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC3D0 AS DateTime), CAST(0x0000A6B300EEC3D0 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2145, 894, N'SamplePrice', N'44533', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC38C AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC3F1 AS DateTime), CAST(0x0000A6B300EEC3F1 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2146, 889, N'SamplePrice', N'60895', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC3B4 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2147, 885, N'SamplePrice', N'94367', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC3B4 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2148, 895, N'SamplePrice', N'69615', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC3D0 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC407 AS DateTime), CAST(0x0000A6B300EEC407 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2149, 888, N'SamplePrice', N'10730', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC3D1 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2150, 891, N'SamplePrice', N'35812', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC3D0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2151, 893, N'SamplePrice', N'44533', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC3F0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2152, 890, N'SamplePrice', N'91211', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC3F0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2153, 894, N'SamplePrice', N'44533', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC408 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2154, 892, N'SamplePrice', N'69615', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC407 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2155, 895, N'SamplePrice', N'69615', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC41B AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2156, 896, N'SamplePrice', N'69615', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC405 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC43D AS DateTime), CAST(0x0000A6B300EEC43D AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2157, 896, N'SamplePrice', N'69615', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC445 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2158, 903, N'SamplePrice', N'99931', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC477 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC491 AS DateTime), CAST(0x0000A6B300EEC491 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2159, 898, N'SamplePrice', N'60564', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC477 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC4A1 AS DateTime), CAST(0x0000A6B300EEC4A1 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2160, 900, N'SamplePrice', N'5496', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC477 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC491 AS DateTime), CAST(0x0000A6B300EEC491 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2161, 901, N'SamplePrice', N'5166', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC477 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC491 AS DateTime), CAST(0x0000A6B300EEC491 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2162, 897, N'SamplePrice', N'90881', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC477 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC4A1 AS DateTime), CAST(0x0000A6B300EEC4A1 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2163, 904, N'SamplePrice', N'64051', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC481 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC4A2 AS DateTime), CAST(0x0000A6B300EEC4A2 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2164, 902, N'SamplePrice', N'55331', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC477 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC4A2 AS DateTime), CAST(0x0000A6B300EEC4A2 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2165, 899, N'SamplePrice', N'30248', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'9b78486d-5b8f-4be4-948e-522356e84e79', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC477 AS DateTime), N'10', N'Long', CAST(0x0000A6B300EEC4A2 AS DateTime), CAST(0x0000A6B300EEC4A2 AS DateTime), N'10', N'Long', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2166, 900, N'SamplePrice', N'5496', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC4A1 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2167, 901, N'SamplePrice', N'5166', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC4A1 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2168, 903, N'SamplePrice', N'99931', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC4A2 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2169, 897, N'SamplePrice', N'90881', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC4B0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2170, 898, N'SamplePrice', N'60564', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC4B0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2171, 899, N'SamplePrice', N'30248', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC4B0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2172, 902, N'SamplePrice', N'55331', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC4B1 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2173, 904, N'SamplePrice', N'64051', N'072af8c3-482a-4b1c-890b-685ce2fcc75d', N'3c438212-4863-4ff8-efc9-a9096c4a8230', N'业务员提交', 4, 1, 1, N'10', N'Long', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'10', N'Long', CAST(0x0000A6B300EEC4C0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2174, 905, N'差旅报销表单', N'32', N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', N'fe775212-6351-4c9b-ea02-f54a8b95d63b', N'开始', 1, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'6', N'路天明', CAST(0x0000A6B800FA0B75 AS DateTime), N'6', N'路天明', CAST(0x0000A6B800FA0B88 AS DateTime), CAST(0x0000A6B800FA0B88 AS DateTime), N'6', N'路天明', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2175, 905, N'差旅报销表单', N'32', N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', N'7230bb34-3c35-4f44-8f2e-0933cb85aa35', N'填写报销单据', 4, 4, 1, N'6', N'路天明', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'6', N'路天明', CAST(0x0000A6B800FA0B94 AS DateTime), N'6', N'路天明', CAST(0x0000A6B800FA6AF1 AS DateTime), CAST(0x0000A6B800FA6AF1 AS DateTime), N'6', N'路天明', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2176, 905, N'差旅报销表单', N'32', N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', N'889aa813-3eab-4515-89af-cbd133cf030b', N'财务审批', 4, 4, 1, N'17', N'崔红', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'6', N'路天明', CAST(0x0000A6B800FA6AF2 AS DateTime), N'17', N'崔红', CAST(0x0000A6B800FA7B41 AS DateTime), CAST(0x0000A6B800FA7B41 AS DateTime), N'17', N'崔红', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2177, 905, N'差旅报销表单', N'32', N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', N'548e2052-1eab-43b0-a55c-020582b0b1c8', N'Gateway', 8, 4, 0, NULL, NULL, 0, NULL, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'17', N'崔红', CAST(0x0000A6B800FA7B42 AS DateTime), N'17', N'崔红', CAST(0x0000A6B800FA7B44 AS DateTime), CAST(0x0000A6B800FA7B44 AS DateTime), N'17', N'崔红', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2178, 905, N'差旅报销表单', N'32', N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', N'c36fa3c0-3b68-4bf6-dc31-1ea939815cfd', N'总经理审批', 4, 4, 1, N'1', N'陈小星', 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'17', N'崔红', CAST(0x0000A6B800FA7B45 AS DateTime), N'1', N'陈小星', CAST(0x0000A6B800FA8993 AS DateTime), CAST(0x0000A6B800FA8993 AS DateTime), N'1', N'陈小星', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2179, 905, N'差旅报销表单', N'32', N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', N'db2df810-7edd-4242-bc64-bac796d78844', N'Gateway', 8, 4, 0, NULL, NULL, 0, NULL, 16, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'1', N'陈小星', CAST(0x0000A6B800FA8994 AS DateTime), N'1', N'陈小星', CAST(0x0000A6B800FA8995 AS DateTime), CAST(0x0000A6B800FA8995 AS DateTime), N'1', N'陈小星', 0)
INSERT [dbo].[WfActivityInstance] ([ID], [ProcessInstanceID], [AppName], [AppInstanceID], [ProcessGUID], [ActivityGUID], [ActivityName], [ActivityType], [ActivityState], [WorkItemType], [AssignedToUserIDs], [AssignedToUserNames], [BackwardType], [BackSrcActivityInstanceID], [GatewayDirectionTypeID], [CanRenewInstance], [TokensRequired], [TokensHad], [ComplexType], [MergeType], [MIHostActivityInstanceID], [CompleteOrder], [SignForwardType], [CreatedByUserID], [CreatedByUserName], [CreatedDateTime], [LastUpdatedByUserID], [LastUpdatedByUserName], [LastUpdatedDateTime], [EndedDateTime], [EndedByUserID], [EndedByUserName], [RecordStatusInvalid]) VALUES (2180, 905, N'差旅报销表单', N'32', N'ec794d6d-4543-4938-b5f5-cdd97cf939d6', N'77124224-0de9-4407-9d61-4405c8131c48', N'结束', 2, 4, 0, NULL, NULL, 0, NULL, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, N'1', N'陈小星', CAST(0x0000A6B800FA8995 AS DateTime), N'1', N'陈小星', CAST(0x0000A6B800FA8996 AS DateTime), CAST(0x0000A6B800FA8996 AS DateTime), N'1', N'陈小星', 0)
/****** Object:  View [dbo].[vw_SysRoleUserView]    Script Date: 01/09/2022 21:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_SysRoleUserView]
AS
SELECT  dbo.SysRoleUser.ID,
    dbo.SysRole.ID as RoleID, 
	dbo.SysRole.RoleName, 
	dbo.SysRole.RoleCode, 
	dbo.SysUser.ID as UserID,
	dbo.SysUser.UserName
FROM         dbo.SysRole LEFT JOIN
             dbo.SysRoleUser ON dbo.SysRole.ID = dbo.SysRoleUser.RoleID LEFT JOIN
             dbo.SysUser ON dbo.SysRoleUser.UserID = dbo.SysUser.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[24] 2[17] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "SysRole"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 110
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SysRoleUser"
            Begin Extent = 
               Top = 4
               Left = 313
               Bottom = 108
               Right = 455
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SysUser"
            Begin Extent = 
               Top = 165
               Left = 175
               Bottom = 254
               Right = 317
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_SysRoleUserView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_SysRoleUserView'
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_UserSave]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pr_sys_UserSave]
   @userID			int,
   @userName		varchar(100)

AS

BEGIN

	SET NOCOUNT ON
	-- 检查条件
	IF EXISTS(SELECT 1 
			  FROM SysUser 
			  WHERE ID<>@userID 
				AND (UserName=@userName)
			  )
		RAISERROR ('插入或编辑用户数据失败: 有重复的名称已经存在!', 16, 1)

    --插入或者编辑				
	BEGIN TRY
		IF (@userID>0)
			UPDATE SysUser
			SET UserName=@userName
			WHERE ID=@userID
		ELSE
		    INSERT INTO SysUser(UserName)
		    VALUES(@userName)
	END TRY
	BEGIN CATCH
			DECLARE @error int, @message varchar(4000)
			SELECT @error = ERROR_NUMBER()
				, @message = ERROR_MESSAGE();
			RAISERROR ('插入或编辑用户数据失败: %d: %s', 16, 1, @error, @message)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_UserResourceListSaveBatch]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Besley, SlickOne Team>
-- Create date: <2017-01-11>
-- Description:	<用户自有资源权限许可保存批量方法>
-- =============================================
CREATE PROCEDURE [dbo].[pr_sys_UserResourceListSaveBatch]
	@userID as int,
	@permissionXML as xml
AS
BEGIN
	SET NOCOUNT ON;
     BEGIN TRY
		BEGIN TRANSACTION
		  --delete all role resource list
		  DELETE FROM SysUserResource
		  WHERE UserID = @userID
			AND IsInherited = -1
			
		  --insert allowed and denied permissions
		  INSERT INTO SysUserResource(UserID, ResourceID, PermissionType, IsInherited)
		  SELECT
			@userID,
			List.Id.query('ResourceID').value('.', 'int') as ResourceID,
			List.Id.query('PermissionType').value('.', 'int') as PermissionType,
			List.Id.query('IsInherited').value('.', 'int') as IsInherited
		  FROM @permissionXML.nodes('/data/item') as List(Id)
			  
		COMMIT TRANSACTION
	 END TRY
	 BEGIN CATCH
	    ROLLBACK TRANSACTION
	    
		DECLARE  @error int, @message varchar(4000)
		SELECT @error=ERROR_NUMBER(),
			   @message=ERROR_MESSAGE();
		RAISERROR ('保存用户自有资源列表及权限许可失败: %d: %s', 16, 1, @error, @message)
	 END CATCH
  
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_UserResourceListRetrieveByUser]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Besley, SlickOne Team>
-- Create date: <2017-01-11>
-- Description:	<根据用户ID获取资源许可列表>
-- =============================================
CREATE PROCEDURE [dbo].[pr_sys_UserResourceListRetrieveByUser]
	@userID int=0
AS
BEGIN
	SET NOCOUNT ON;
	IF (@userID <= 0)
		BEGIN
			RAISERROR ('输入查询参数用户ID不能为0!', -- Message text.
				   16, -- Severity.
				   1 -- State.
				   )
			RETURN
		END
     BEGIN TRY
		  --1. calculate role permission
		  DECLARE @tablePermisisonAllowed Table(
			ID	int,
			RoleID	int,
			ResourceID int
		  )
		  
		  DECLARE @tablePermissionDenied Table(
			ID	int,
			RoleID	int,
			ResourceID	int
		  )
		  
		  --1.1)insert allowed permission by role
		  INSERT @tablePermisisonAllowed(ID, RoleID, ResourceID)
		  SELECT 
			ID,
			RoleID,
			ResourceID
		  FROM SysRoleResource 
		  WHERE PermissionType = 1 
				AND RoleID IN(
					SELECT RoleID 
					FROM SysRoleUser
					WHERE UserID = @userID
				  )

				  
		  --1.2)insert denied permission by role
		  INSERT @tablePermissionDenied(ID, RoleID, ResourceID)
		  SELECT 
			ID,
			RoleID,
			ResourceID
		  FROM SysRoleResource 
		  WHERE PermissionType = -1 
				AND RoleID IN(
					SELECT RoleID 
					FROM SysRoleUser
					WHERE UserID = @userID
				  )
		  
		  --1.3)remove allowed permission if there is a denied permission exist
		  DELETE FROM @tablePermisisonAllowed
		  WHERE ResourceID IN(
					SELECT 
						ResourceID 
					FROM @tablePermissionDenied
				)
		  
		  --1.4) delete inherited permission from user resource table, 
		  --     will insert all inherited permission again 
		  DELETE FROM SysUserResource
		  WHERE UserID=@userID 
			AND IsInherited=1
		  
		  --1.5) insert allowed permssion as inherited
		  INSERT INTO SysUserResource(UserID, ResourceID, PermissionType, IsInherited)
		  SELECT DISTINCT
			@userID, 
			ResourceID,
			1,
			1
		  FROM @tablePermisisonAllowed
		  
		  --1.6) insert denied permission as inherited
		  INSERT INTO SysUserResource(UserID, ResourceID, PermissionType, IsInherited)
		  SELECT DISTINCT
			@userID, 
			ResourceID,
			-1,
			1
		  FROM @tablePermissionDenied
		  
		  
		  --2. get user resource permission list
		  --resourceid will be replicated if there is both inherited and self permission
		  --2.1 delcare user resource table
		  DECLARE @tableUserPermissionList Table(
			ID	int,
			ResourceTypeID	int,
			ParentID int,
			ResourceName nvarchar(100),
			PermissionType smallint,
			IsInherited	smallint
		  )
		  
		  --2.2 insert into user resource table
		  INSERT INTO @tableUserPermissionList
		  SELECT
			    R.ID,
				R.ResourceTypeID,
				R.ParentID,
				R.ResourceName,
				 (CASE 
					 WHEN RP.PermissionType IS NULL  THEN 0--默认未设置权限
					 WHEN RP.PermissionType=1 then 1  --允许
					 ELSE -1 --拒绝
					 END) PermissionType, --权限许可（PermissionType字段 1-允许，-1-拒绝）
				(CASE 
					 WHEN RP.IsInherited IS NULL  THEN 0 --默认未分配权限
					 WHEN RP.IsInherited=1 then 1--继承自角色
					 ELSE -1  --独立
					 END) IsInherited --权限来源（IsInherited字段 1-继承，-1-独立）
		  FROM SysResource R
		  LEFT JOIN (
					SELECT * 
					FROM SysUserResource
					WHERE UserID=@userID )AS RP
				ON R.ID = RP.ResourceID
		  ORDER BY R.ParentID  ASC,R.OrderNum ASC
		  
		  --2.3 declare user permission view for display
		  DECLARE @tableUserPermissionView Table(
			ID	int,
			ResourceTypeID	int,
			ParentID int,
			ResourceName nvarchar(100),
			IsAllowInherited smallint,
			IsAllowSelf smallint,
			IsDenyInherited smallint,
			IsDenySelf smallint
		  )
		  
		  
		  --3. insert into user permission view
		  INSERT INTO @tableUserPermissionView(
			ID, 
			ResourceTypeID, 
			ParentID, 
			ResourceName)
		  SELECT 
			DISTINCT ID, 
			ResourceTypeID, 
			ParentID, 
			ResourceName
		  FROM @tableUserPermissionList
		  
		  --3.1 update IsAllowInherited data
		  UPDATE UPV
			SET UPV.IsAllowInherited = 1
		  FROM @tableUserPermissionView UPV
			INNER JOIN @tableUserPermissionList UPL
				ON UPV.ID = UPL.ID
			WHERE UPL.PermissionType = 1
				AND UPL.IsInherited = 1
				
		  --3.2 update IsAllowSelf data
		  UPDATE UPV
			SET UPV.IsAllowSelf = 1
		  FROM @tableUserPermissionView UPV
			INNER JOIN @tableUserPermissionList UPL
				ON UPV.ID = UPL.ID
			WHERE UPL.PermissionType = 1
				AND UPL.IsInherited = -1
				
		  --3.3 update IsDenyInherited data
		  UPDATE UPV
			SET UPV.IsDenyInherited = 1
		  FROM @tableUserPermissionView UPV
			INNER JOIN @tableUserPermissionList UPL
				ON UPV.ID = UPL.ID
			WHERE UPL.PermissionType = -1
				AND UPL.IsInherited = 1
				
		  --3.4 update IsDenySelf
		  UPDATE UPV
			SET UPV.IsDenySelf = 1
		  FROM @tableUserPermissionView UPV
			INNER JOIN @tableUserPermissionList UPL
				ON UPV.ID = UPL.ID
			WHERE UPL.PermissionType = -1
				AND UPL.IsInherited = -1
		  
		--4 return user permission view
		SELECT 
			*
		FROM @tableUserPermissionView
	 END TRY

	 BEGIN CATCH
		DECLARE  @error int, @message varchar(4000)
		SELECT @error=ERROR_NUMBER(),
			   @message=ERROR_MESSAGE();
		RAISERROR ('用户资源列表及权限许可失败: %d: %s', 16, 1, @error, @message)
	 END CATCH
  
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_UserResourceListGet]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Besley, SlickOne Team>
-- Create date: <2017-01-11>
-- Description:	<读取用户资源数据列表>
-- =============================================
CREATE PROCEDURE [dbo].[pr_sys_UserResourceListGet]
	@userID as int
AS
BEGIN
	SET NOCOUNT ON;
	IF (@userID <= 0)
		BEGIN
			RAISERROR ('输入查询参数用户ID不能为0!', -- Message text.
				   16, -- Severity.
				   1 -- State.
				   )
			RETURN
		END
		
     BEGIN TRY
		  --1. declare user permission table
		  DECLARE @tablePermisisonAllowed Table(
			ID	int,
			UserID	int,
			ResourceID int,
			PermissionType smallint,
			IsInherited	smallint
		  )
		  
		  --2. insert permission data
		  INSERT INTO @tablePermisisonAllowed(
			ID, 
			UserID, 
			ResourceID, 
			PermissionType, 
			IsInherited)
		  SELECT 
			ID,
			UserID,
			ResourceID,
			PermissionType,
			IsInherited
		  FROM SysUserResource
		  WHERE UserID=@userID
			AND PermissionType=1
			AND ResourceID NOT IN(
				SELECT 
					ResourceID
				FROM SysUserResource
				WHERE UserID=@userID
					AND PermissionType=-1		--denied permission
					AND IsInherited=-1	--denied by self
			)

		  --3. get user resource permission list
		  SELECT 
			DISTINCT
			RP.UserID,
			RP.ResourceID,
			R.ResourceName,
			R.ResourceTypeID
		  FROM @tablePermisisonAllowed RP
		  INNER JOIN SysResource R ON
			RP.ResourceID = R.ID
			  
	 END TRY
	 BEGIN CATCH
	    
		DECLARE  @error int, @message varchar(4000)
		SELECT @error=ERROR_NUMBER(),
			   @message=ERROR_MESSAGE();
		RAISERROR ('读取用户自有资源列表及权限许可失败: %d: %s', 16, 1, @error, @message)
	 END CATCH
  
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_UserResourceListClear]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Besley, SlickOne Team>
-- Create date: <2017-01-11>
-- Description:	<清除用户资源数据列表>
-- =============================================
create PROCEDURE [dbo].[pr_sys_UserResourceListClear]
	@userID as int
AS
BEGIN
	SET NOCOUNT ON;
     BEGIN TRY
		BEGIN TRANSACTION
		  --delete all role resource list
		  DELETE FROM SysUserResource
		  WHERE UserID = @userID
			AND IsInherited = -1		--not inherited from role
			  
		COMMIT TRANSACTION
	 END TRY
	 BEGIN CATCH
	    ROLLBACK TRANSACTION
	    
		DECLARE  @error int, @message varchar(4000)
		SELECT @error=ERROR_NUMBER(),
			   @message=ERROR_MESSAGE();
		RAISERROR ('清除用户自有资源列表及权限许可失败: %d: %s', 16, 1, @error, @message)
	 END CATCH
  
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_UserDelete]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pr_sys_UserDelete]
   @userID			int

AS

BEGIN

	SET NOCOUNT ON
    --删除操作				
	BEGIN TRY
		DELETE FROM SysRoleUser WHERE UserID=@userID
		DELETE FROM SysUser WHERE ID=@userID
	END TRY
	BEGIN CATCH
			DECLARE @error int, @message varchar(4000)
			SELECT @error = ERROR_NUMBER()
				, @message = ERROR_MESSAGE();
			RAISERROR ('删除用户数据失败: %d: %s', 16, 1, @error, @message)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_RoleUserDelete]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pr_sys_RoleUserDelete]
   @userID			int,
   @roleID			int

AS

BEGIN

	SET NOCOUNT ON
    --删除操作				
	BEGIN TRY
		IF (@userID = -1)
			DELETE FROM SysRoleUser WHERE RoleID=@roleID
		ELSE
			DELETE FROM SysRoleUser WHERE UserID=@userID AND RoleID=@roleID
	END TRY
	BEGIN CATCH
			DECLARE @error int, @message varchar(4000)
			SELECT @error = ERROR_NUMBER()
				, @message = ERROR_MESSAGE();
			RAISERROR ('删除角色下的用户数据失败: %d: %s', 16, 1, @error, @message)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_RoleSave]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pr_sys_RoleSave]
   @roleID			int,
   @roleCode		varchar(50),
   @roleName		nvarchar(100)

AS

BEGIN

	SET NOCOUNT ON
	-- 检查条件
	IF EXISTS(SELECT 1 
			  FROM SysRole 
			  WHERE ID<>@roleID 
				AND (RoleCode=@roleCode OR RoleName=@roleName)
			  )
		RAISERROR ('插入或编辑角色数据失败: 有重复的名称或者编码已经存在!', 16, 1)

    --插入或者编辑				
	BEGIN TRY
		IF (@roleID>0)
			UPDATE SysRole
			SET RoleCode=@roleCode, RoleName=@roleName
			WHERE ID=@roleID
		ELSE
		    INSERT INTO SysRole(RoleCode, RoleName)
		    VALUES(@roleCode, @roleName)
	END TRY
	BEGIN CATCH
			DECLARE @error int, @message varchar(4000)
			SELECT @error = ERROR_NUMBER()
				, @message = ERROR_MESSAGE();
			RAISERROR ('插入或编辑角色数据失败: %d: %s', 16, 1, @error, @message)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_RoleResourceListSaveBatch]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Besley, SlickOne Team>
-- Create date: <2017-01-11>
-- Description:	<角色资源权限许可保存批量方法>
-- =============================================
CREATE PROCEDURE [dbo].[pr_sys_RoleResourceListSaveBatch]
	@roleID as int,
	@permissionXML as xml
AS
BEGIN
	SET NOCOUNT ON;
     BEGIN TRY
		BEGIN TRANSACTION
		  --delete all role resource list
		  DELETE FROM SysRoleResource
		  WHERE RoleID = @roleID
			
		  --insert allowed and denied permissions
		  INSERT INTO SysRoleResource(RoleID, ResourceID, PermissionType)
		  SELECT
			@roleID,
			List.Id.query('ResourceID').value('.', 'int') as ResourceID,
			List.Id.query('PermissionType').value('.', 'int') as PermissionType
		  FROM @permissionXML.nodes('/data/item') as List(Id)
			  
		COMMIT TRANSACTION
	 END TRY
	 BEGIN CATCH
	    ROLLBACK TRANSACTION
	    
		DECLARE  @error int, @message varchar(4000)
		SELECT @error=ERROR_NUMBER(),
			   @message=ERROR_MESSAGE();
		RAISERROR ('保存资源列表及权限许可失败: %d: %s', 16, 1, @error, @message)
	 END CATCH
  
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_RoleResourceListGetByRole]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Besley, SlickOne Team>
-- Create date: <2017-01-11>
-- Description:	<根据用户或角色ID获取资源许可列表>
-- =============================================
CREATE PROCEDURE [dbo].[pr_sys_RoleResourceListGetByRole]
	@roleID int=0
AS
BEGIN
	SET NOCOUNT ON;
	IF (@roleID=0)
		BEGIN
			RAISERROR ('输入查询参数角色ID不能为0!', -- Message text.
				   16, -- Severity.
				   1 -- State.
				   )
			RETURN
		END
     BEGIN TRY
		IF(@RoleID>0)
			BEGIN
			  SELECT
				    R.ID,
					R.ResourceTypeID,
					R.ParentID,
					R.ResourceName,
					(CASE 
						 WHEN RP.ID IS NULL THEN 0
						 ELSE RP.ID
						 END) AS RPID,--资源权限表ID
					 (CASE 
						 WHEN RP.PermissionType IS NULL  THEN 0--默认为未设定权限
						 WHEN RP.PermissionType=1 then 1	--允许
						 ELSE -1 --拒绝
						 END) PermissionType --权限许可（PermissionType字段 1-允许，-1-拒绝）
			  FROM SysResource R
			  LEFT JOIN (
						SELECT * 
						FROM SysRoleResource
						WHERE RoleID=@roleID )AS RP
					ON R.ID = RP.ResourceID
			  ORDER BY R.OrderNum  ASC,R.ID ASC

			END
	 END TRY

	 BEGIN CATCH
		DECLARE  @error int, @message varchar(4000)
		SELECT @error=ERROR_NUMBER(),
			   @message=ERROR_MESSAGE();
		RAISERROR ('获取资源列表及权限许可失败: %d: %s', 16, 1, @error, @message)
	 END CATCH
  
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_RoleResourceListClear]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Besley, SlickOne Team>
-- Create date: <2017-01-11>
-- Description:	<清除角色资源数据列表>
-- =============================================
create PROCEDURE [dbo].[pr_sys_RoleResourceListClear]
	@roleID as int
AS
BEGIN
	SET NOCOUNT ON;
     BEGIN TRY
		BEGIN TRANSACTION
		  --delete all role resource list
		  DELETE FROM SysRoleResource
		  WHERE RoleID = @roleID
			  
		COMMIT TRANSACTION
	 END TRY
	 BEGIN CATCH
	    ROLLBACK TRANSACTION
	    
		DECLARE  @error int, @message varchar(4000)
		SELECT @error=ERROR_NUMBER(),
			   @message=ERROR_MESSAGE();
		RAISERROR ('清除资源列表及权限许可失败: %d: %s', 16, 1, @error, @message)
	 END CATCH
  
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_RoleListGetByUserID]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Besley, SlickOne Team>
-- Create date: <2017-01-11>
-- Description:	<根据用户ID获取资源列表>
-- =============================================
create PROCEDURE [dbo].[pr_sys_RoleListGetByUserID]
	@UserID int=0
AS
BEGIN
	SET NOCOUNT ON;
	IF (@UserID=0)
		BEGIN
			RAISERROR ('输入查询参数用户ID不能为0!', -- Message text.
				   16, -- Severity.
				   1 -- State.
				   )
			RETURN
		END
     BEGIN TRY
		IF(@UserID>0)
			BEGIN
			  SELECT
				    R.ID,
					R.RoleCode,
					R.RoleName,
					(CASE 
						 WHEN UR.ID IS NULL THEN 0
						 ELSE UR.ID
						 END) AS URID,	--用户角色表ID
					UR.UserID,
					UR.RoleID
			  FROM SysRole R
			  LEFT JOIN (
						SELECT * 
						FROM SysRoleUser 
						WHERE UserID=@UserID )AS UR
					ON R.ID = UR.RoleID
	

			END
	 END TRY

	 BEGIN CATCH
		DECLARE  @error int, @message varchar(4000)
		SELECT @error=ERROR_NUMBER(),
			   @message=ERROR_MESSAGE();
		RAISERROR ('获取UserID获取所有角色列表失败: %d: %s', 16, 1, @error, @message)
	 END CATCH
  
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_RoleDelete]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pr_sys_RoleDelete]
   @roleID			int

AS

BEGIN

	SET NOCOUNT ON
    --删除操作				
	BEGIN TRY
		DELETE FROM SysRoleUser WHERE RoleID=@roleID
		DELETE FROM SysRole WHERE ID=@roleID
	END TRY
	BEGIN CATCH
			DECLARE @error int, @message varchar(4000)
			SELECT @error = ERROR_NUMBER()
				, @message = ERROR_MESSAGE();
			RAISERROR ('删除角色数据失败: %d: %s', 16, 1, @error, @message)
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_ResourceListGetByUserID]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Besley, SlickOne Team>
-- Create date: <2017-01-11>
-- Description:	<根据用户ID获取资源列表>
-- =============================================
CREATE PROCEDURE [dbo].[pr_sys_ResourceListGetByUserID]
	@userID int=0
AS
BEGIN
	SET NOCOUNT ON;
	IF (@userID=0)
		BEGIN
			RAISERROR ('输入查询参数用户ID不能为0!', -- Message text.
				   16, -- Severity.
				   1 -- State.
				   )
			RETURN
		END
     BEGIN TRY
		IF(@UserID>0)
			BEGIN
			  SELECT
				    R.*
			  FROM SysUserResource UR
			  LEFT JOIN SysResource R
					ON R.ID = UR.ResourceID
			  WHERE UR.UserID=@userID
			END
	 END TRY

	 BEGIN CATCH
		DECLARE  @error int, @message varchar(4000)
		SELECT @error=ERROR_NUMBER(),
			   @message=ERROR_MESSAGE();
		RAISERROR ('根据UserID获取资源列表失败: %d: %s', 16, 1, @error, @message)
	 END CATCH
  
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_ResourceListDeleteByID]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Besley, SlickOne Team>
-- Create date: <2017-01-11>
-- Description:	<删除单条资源记录>
-- =============================================
create PROCEDURE [dbo].[pr_sys_ResourceListDeleteByID]
	@resourceID int=0
AS
BEGIN
	SET NOCOUNT ON;
	IF (@resourceID=0)
		BEGIN
			RAISERROR ('输入查询参数资源ID不能为0!', -- Message text.
				   16, -- Severity.
				   1 -- State.
				   )
			RETURN
		END
     BEGIN TRY
		IF(@resourceID>0)
			BEGIN
			  --删除用户资源表
			  DELETE FROM SysUserResource
			  WHERE ResourceID=@resourceID
			  
			  --删除角色资源表
			  DELETE FROM SysRoleResource
			  WHERE ResourceID=@resourceID
			  
			  --删除资源表
			  DELETE FROM SysResource
			  WHERE ID=@resourceID
			END
	 END TRY

	 BEGIN CATCH
		DECLARE  @error int, @message varchar(4000)
		SELECT @error=ERROR_NUMBER(),
			   @message=ERROR_MESSAGE();
		RAISERROR ('删除资源数据失败: %d: %s', 16, 1, @error, @message)
	 END CATCH
  
END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_ResourceLeftMenuGetByUser]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Besley, SlickOne Team>
-- Create date: <2017-01-11>
-- Description:	<用户登录获取左侧菜单项>
-- =============================================
CREATE PROCEDURE [dbo].[pr_sys_ResourceLeftMenuGetByUser]
	@userID INT=0
	AS
BEGIN

SET NOCOUNT ON;


BEGIN TRY
 DECLARE @accountType as int
 SELECT @accountType=AccountType
 FROM SysUser
 WHERE ID=@userID
 
 
 if @accountType=-1 --超级管理admin，返回所有资源
	SELECT 
		ID,
		ParentID,
		ResourceName,
		UrlAction,
		DataAction,
		StyleClass,
		OrderNum 
	FROM SysResource 
	--WHERE ResourceTypeID<3 
	ORDER BY parentid asc, ordernum asc
 ELSE
    SELECT 
		DISTINCT
		R.ID,
		R.ParentID,
		R.ResourceName,
		R.UrlAction,
		R.DataAction,
		R.StyleClass,
		R.OrderNum
    FROM SysResource R
    INNER JOIN    
	(
		SELECT 
			UserID,
			ResourceID
		FROM SysUserResource
		WHERE UserID=@userID
			AND PermissionType=1
			AND ResourceID NOT IN(
				SELECT 
					ResourceID
				FROM SysUserResource
				WHERE UserID=@userID
					AND PermissionType=-1		--denied permission
					AND IsInherited=-1		--denied by self
			)
	)UR ON R.ID=UR.ResourceID
	ORDER BY R.ParentID asc, R.OrderNum asc
END TRY

BEGIN CATCH
DECLARE @error int, @message varchar(4000)
		SELECT @error = ERROR_NUMBER()
			, @message = ERROR_MESSAGE();
		RAISERROR ('获取用户左侧导航菜单失败: %d: %s', 16, 1, @error, @message)
	END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[pr_sys_ResourceDeleteBatch]    Script Date: 01/09/2022 21:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Besley, SlickOne Team>
-- Create date: <2017-01-11>
-- Description:	<批量删除资源数据>
-- =============================================
CREATE PROCEDURE [dbo].[pr_sys_ResourceDeleteBatch]
 @strXml xml
AS

BEGIN

	SET NOCOUNT ON

	-- 检查旧版本记录是否存在，并且状态是否可用
	DECLARE @ROWCOUNT AS NUMERIC(10,0)/*回传执行状态>0:成功<=0:失败*/
		  SET @ROWCOUNT=0;
	       
	DECLARE  @docHandle int;

	BEGIN TRY
	  BEGIN TRANSACTION
      CREATE TABLE #deleteTbTemp
	  (
	    ID int
	  )

		 --解析XML,将数据写入临时表中
	  EXEC sp_xml_preparedocument @docHandle OUTPUT, @strXml;
	  INSERT INTO #deleteTbTemp
	   SELECT * FROM OPENXML(@docHandle,N'/data/item',1)
	   WITH #deleteTbTemp;
	  EXEC sp_xml_removedocument @docHandle;
	  
	  --xml 格式
	  --<data><item id=1></item><item id=2></item></data>
	  --循环临时表，删除相应表中的数据
	  WHILE(EXISTS(SELECT * FROM #deleteTbTemp))
		 BEGIN
			DELETE FROM SysResourcePrivilege
			WHERE ResourceID=(SELECT TOP 1 ID FROM #deleteTbTemp)

			DELETE FROM SysUserResource
			WHERE ResourceID=(SELECT TOP 1 ID FROM #deleteTbTemp)

			IF (NOT EXISTS (SELECT * FROM SysResourcePrivilege WHERE ResourceID=(SELECT TOP 1 ID FROM #deleteTbTemp))
			  AND NOT EXISTS(SELECT * FROM SysUserResource WHERE ResourceID=(SELECT TOP 1 ID FROM #deleteTbTemp)))
			  BEGIN
		     		DELETE FROM SysResource
					WHERE ID=(SELECT TOP 1 ID FROM #deleteTbTemp)
				END
			SET @ROWCOUNT=@ROWCOUNT+@@ROWCOUNT;
			--删除临时表中的数据
			DELETE FROM #deleteTbTemp WHERE ID=(SELECT TOP 1 ID FROM #deleteTbTemp);
		   END
		 --销毁临时表
		  DROP TABLE #deleteTbTemp;
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
			ROLLBACK TRANSACTION
			DECLARE @error int, @message varchar(4000)
			SELECT @error = ERROR_NUMBER()
				, @message = ERROR_MESSAGE();
			RAISERROR ('资源批量删除失败: %d: %s', 16, 1, @error, @message)
	END CATCH
END
GO
/****** Object:  Default [DF_SysResource_CantBeDeleted]    Script Date: 01/09/2022 21:19:45 ******/
ALTER TABLE [dbo].[SysResource] ADD  CONSTRAINT [DF_SysResource_CantBeDeleted]  DEFAULT ((0)) FOR [CanNotBeDeleted]
GO
/****** Object:  Default [DF_SysUser_AccountType]    Script Date: 01/09/2022 21:19:45 ******/
ALTER TABLE [dbo].[SysUser] ADD  CONSTRAINT [DF_SysUser_AccountType]  DEFAULT ((0)) FOR [AccountType]
GO
/****** Object:  Default [DF_SysUserResource_PermissionType]    Script Date: 01/09/2022 21:19:45 ******/
ALTER TABLE [dbo].[SysUserResource] ADD  CONSTRAINT [DF_SysUserResource_PermissionType]  DEFAULT ((1)) FOR [PermissionType]
GO
/****** Object:  Default [DF_SysUserResource_IsInherited]    Script Date: 01/09/2022 21:19:45 ******/
ALTER TABLE [dbo].[SysUserResource] ADD  CONSTRAINT [DF_SysUserResource_IsInherited]  DEFAULT ((1)) FOR [IsInherited]
GO
