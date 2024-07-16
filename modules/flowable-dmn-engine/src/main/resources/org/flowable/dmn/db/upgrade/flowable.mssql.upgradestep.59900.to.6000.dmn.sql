CREATE TABLE [ACT_DMN_DATABASECHANGELOG] ([ID] [nvarchar](255) NOT NULL, [AUTHOR] [nvarchar](255) NOT NULL, [FILENAME] [nvarchar](255) NOT NULL, [DATEEXECUTED] [datetime2](3) NOT NULL, [ORDEREXECUTED] [int] NOT NULL, [EXECTYPE] [nvarchar](10) NOT NULL, [MD5SUM] [nvarchar](35), [DESCRIPTION] [nvarchar](255), [COMMENTS] [nvarchar](255), [TAG] [nvarchar](255), [LIQUIBASE] [nvarchar](20), [CONTEXTS] [nvarchar](255), [LABELS] [nvarchar](255), [DEPLOYMENT_ID] [nvarchar](10))

CREATE TABLE [ACT_DMN_DEPLOYMENT] ([ID_] [varchar](255) NOT NULL, [NAME_] [varchar](255), [CATEGORY_] [varchar](255), [DEPLOY_TIME_] [datetime], [TENANT_ID_] [varchar](255), [PARENT_DEPLOYMENT_ID_] [varchar](255), CONSTRAINT [PK_ACT_DMN_DEPLOYMENT] PRIMARY KEY ([ID_]))

CREATE TABLE [ACT_DMN_DEPLOYMENT_RESOURCE] ([ID_] [varchar](255) NOT NULL, [NAME_] [varchar](255), [DEPLOYMENT_ID_] [varchar](255), [RESOURCE_BYTES_] [varbinary](MAX), CONSTRAINT [PK_ACT_DMN_DEPLOYMENT_RESOURCE] PRIMARY KEY ([ID_]))

CREATE TABLE [ACT_DMN_DECISION_TABLE] ([ID_] [varchar](255) NOT NULL, [NAME_] [varchar](255), [VERSION_] [int], [KEY_] [varchar](255), [CATEGORY_] [varchar](255), [DEPLOYMENT_ID_] [varchar](255), [PARENT_DEPLOYMENT_ID_] [varchar](255), [TENANT_ID_] [varchar](255), [RESOURCE_NAME_] [varchar](255), [DESCRIPTION_] [varchar](255), CONSTRAINT [PK_ACT_DMN_DECISION_TABLE] PRIMARY KEY ([ID_]))