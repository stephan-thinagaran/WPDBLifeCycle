CREATE TABLE [WellnessMembership].[Enrollments]
(
  [EnrollmentId] UNIQUEIDENTIFIER CONSTRAINT [DF_WM_Enrollments_EnrollmentId] DEFAULT (newsequentialid()) NOT NULL,
  [BannerId] BIGINT NOT NULL,
  [OperationUnitId] UNIQUEIDENTIFIER NOT NULL,
  [AccountId] UNIQUEIDENTIFIER NOT NULL,
  [ClientId] UNIQUEIDENTIFIER NOT NULL,
  [PatientId] UNIQUEIDENTIFIER NOT NULL,
  [PetId] UNIQUEIDENTIFIER NOT NULL,
  [OrderId] UNIQUEIDENTIFIER NULL,
  [WellnessplanId] UNIQUEIDENTIFIER NOT NULL,
  [PlanName] NVARCHAR (100) NOT NULL,
  [PriceLevelID] INT NOT NULL,
  [PlannedStartDate] DATE CONSTRAINT [DF_WM_Enrollments_PlannedStartDate] DEFAULT (getdate()) NOT NULL,
  [PlannedEndDate] DATE CONSTRAINT [DF_WM_Enrollments_PlannedEndDate] DEFAULT (dateadd(year,(1),getdate())) NOT NULL,
  [StatusCodeId] SMALLINT NOT NULL,
  [Currency] VARCHAR (10) NULL,
  [EnrollmentFee] DECIMAL (18, 2) CONSTRAINT [DF_WM_Enrollments_EnrollmentFee] DEFAULT((0)) NOT NULL,
  [PlanFee] DECIMAL (18, 2) CONSTRAINT [DF_WM_Enrollments_PlanFee] DEFAULT((0)) NOT NULL,
  [RecurringFee] DECIMAL (18, 2) CONSTRAINT [DF_WM_Enrollments_RecurringFee] DEFAULT((0)) NOT NULL,
  [MonthlyFee] DECIMAL (18, 2) CONSTRAINT [DF_WM_Enrollments_MonthlyFee] DEFAULT((0)) NOT NULL,
  [QuarterlyFee] DECIMAL (18, 2) CONSTRAINT [DF_WM_Enrollments_QuarterlyFee] DEFAULT((0)) NOT NULL,
  [AnnualFee] DECIMAL (18, 2) CONSTRAINT [DF_WM_Enrollments_AnnualFee] DEFAULT((0)) NOT NULL,
  [OptionPackagesCharge] DECIMAL (18, 2) CONSTRAINT [DF_WM_Enrollments_OptionPackagesCharge] DEFAULT((0)) NOT NULL,
  [RetailValue] DECIMAL (18, 2) CONSTRAINT [DF_WM_Enrollments_RetailValue] DEFAULT((0)) NOT NULL,
  [DiscountRate] DECIMAL (8, 2) CONSTRAINT [DF_WM_Enrollments_DiscountRate] DEFAULT((0)) NOT NULL,
  [PlanRateAtEnrollment] DECIMAL (18, 2) CONSTRAINT [DF_WM_Enrollments_PlanRateAtEnrollment] DEFAULT((0)) NOT NULL,
  [PreviousEnrollmentID] UNIQUEIDENTIFIER NULL,
  [AgreementEndorsedDate] DATETIME NULL,
  [EnrollmentTeamId] UNIQUEIDENTIFIER NULL,
  [ActualEndDate] DATETIME NULL,
  [Associate] NVARCHAR (100) NOT NULL,
  [DiscountTypeID] INT CONSTRAINT [DF_WM_Enrollments_DiscountTypeID] DEFAULT((0)) NOT NULL,
  [FinancialAccountId] UNIQUEIDENTIFIER NULL,
  [PaymentDay] TINYINT NULL,
  [IsContractSigned] BIT CONSTRAINT [DF_WM_Enrollments_IsContractSigned] DEFAULT ((0)) NOT NULL,
  [AssociateEmail] NVARCHAR (100) NULL,
  [ActualCreateDate] DATETIME2 (3) NOT NULL,
  [PaymentFrequencyId] TINYINT CONSTRAINT [DF_WM_Enrollments_PaymentFrequencyId] DEFAULT ((1)) NOT NULL,
  [IsAutoRenew] BIT CONSTRAINT [DF_WM_Enrollments_IsAutoRenew] DEFAULT ((0)) NOT NULL,
  [IsPaymentArranged] BIT CONSTRAINT [DF_WM_Enrollments_IsPaymentArranged] DEFAULT ((0)) NOT NULL,
  [IsActive] BIT CONSTRAINT [DF_WM_Enrollments_IsActive] DEFAULT ((1)) NOT NULL,
  [StartDate] DATETIME CONSTRAINT [DF_WM_Enrollments_StartDate] DEFAULT (getdate()) NOT NULL,
  [EndDate] DATETIME NULL,
  [CreateDate] DATETIME CONSTRAINT [DF_WM_Enrollments_CreateDate] DEFAULT (getdate()) NOT NULL,
  [CreatedBy] NVARCHAR (100) NOT NULL,
  [ChangeDate] DATETIME CONSTRAINT [DF_WM_Enrollments_ChangeDate] DEFAULT (getdate()) NOT NULL,
  [ChangedBy] NVARCHAR (100) NOT NULL,
  [Version] ROWVERSION NOT NULL,
  [OperationId] VARCHAR (50) NULL,
  [AgreementNumber] VARCHAR (20) NULL,
  [ChangeOUId] VARCHAR (50) NOT NULL,
  [PatientName] VARCHAR (30) NOT NULL,
  [PatientBirthDate] DATE NOT NULL,
  [IsBCT] BIT CONSTRAINT [DF_WM_Enrollments_IsBCT] DEFAULT ((0)) NOT NULL,
  [SourceId] VARCHAR (100) NULL,
  [EnrollmentFeeCodeId] UNIQUEIDENTIFIER NOT NULL,
  [EnrollmentFeeCodeConfiguration] NVARCHAR (MAX) NOT NULL,
  [EnrollmentType] INT CONSTRAINT [DF_WM_Enrollments_EnrollmentType] NOT NULL,
  [OUTimeZone] VARCHAR (200) CONSTRAINT [DF_WM_Enrollments_OUTimeZone] DEFAULT ('Pacific Standard Time') NOT NULL,
  [AssociateId] NVARCHAR (100) NULL,
  [ContactId] NVARCHAR (250) NULL,
  [ContinuationCode] SMALLINT CONSTRAINT [DF_WM_Enrollments_ContinuationCode] DEFAULT ((1)) NOT NULL,
  [CoreAnnualFee] DECIMAL (18, 2) CONSTRAINT [DF_WM_Enrollments_CoreAnnualFee] DEFAULT ((0)) NOT NULL,
  [CoreMonthlyFee] DECIMAL (18, 2) CONSTRAINT [DF_WM_Enrollments_CoreMonthlyFee] DEFAULT ((0)) NOT NULL,
  [CoreRetailValue] DECIMAL (18, 2) CONSTRAINT [DF_WM_Enrollments_CoreRetailValue] DEFAULT ((0)) NOT NULL,
  [IsTeamMemberDiscount] BIT CONSTRAINT [DF_WM_Enrollments_IsTeamMemberDiscount] DEFAULT ((0)) NOT NULL,
  [PreviousEnrollmentmentID] UNIQUEIDENTIFIER NULL,
  [SourceCreateDate] DATETIME CONSTRAINT [DF_WM_Enrollments_SourceCreateDate] DEFAULT (getdate()) NOT NULL,
  [StatusChangeDate] DATETIME CONSTRAINT [DF_WM_Enrollments_StatusChangeDate] DEFAULT (getdate()) NOT NULL,
  [CoreQuarterlyFee] DECIMAL (18, 2) CONSTRAINT [DF_WM_Enrollments_CoreQuarterlyFee] DEFAULT ((0)) NOT NULL,
  [CreationHospitalID] VARCHAR (50) NOT NULL,
  [ChangeHospitalID] VARCHAR (50) NOT NULL,
  [HomeHospitalId] UNIQUEIDENTIFIER NOT NULL,
  [WellnessplanPaymentInfoID] UNIQUEIDENTIFIER NULL,
  [AuthorizingTeamMemberID] UNIQUEIDENTIFIER NULL,
  [PricingLevelId] UNIQUEIDENTIFIER NOT NULL,
  [CoMemberName] VARCHAR(30) NULL,
  [ValueDelivered] DECIMAL (18, 2) CONSTRAINT [DF_WM_Enrollments_ValueDelivered] DEFAULT ((0)) NOT NULL,
  CONSTRAINT [PK_WM_Enrollments_EnrollmentId] PRIMARY KEY CLUSTERED ([EnrollmentId] ASC)
)
GO

CREATE NONCLUSTERED INDEX [IX_WM_Enrollments_BannerId]
  ON [WellnessMembership].[Enrollments] ([BannerId] ASC);
GO

CREATE NONCLUSTERED INDEX [IX_WM_Enrollments_OperationUnitId]
  ON [WellnessMembership].[Enrollments] ([OperationUnitId] ASC);
GO

CREATE NONCLUSTERED INDEX [IX_WM_Enrollments_AccountId]
  ON [WellnessMembership].[Enrollments] ([AccountId] ASC);
GO

CREATE NONCLUSTERED INDEX [IX_WM_Enrollments_ClientId]
  ON [WellnessMembership].[Enrollments] ([ClientId] ASC);
GO

CREATE NONCLUSTERED INDEX [IX_WM_Enrollments_PatientId]
  ON [WellnessMembership].[Enrollments] ([PatientId] ASC);
GO

CREATE NONCLUSTERED INDEX [IX_WM_Enrollments_PetId]
  ON [WellnessMembership].[Enrollments] ([PetId] ASC);
GO

CREATE NONCLUSTERED INDEX [IX_WM_Enrollments_PlannedStartDate]
  ON [WellnessMembership].[Enrollments] ([PlannedStartDate] ASC);
GO

CREATE NONCLUSTERED INDEX [IX_WM_Enrollments_PlannedEndDate]
  ON [WellnessMembership].[Enrollments] ([PlannedEndDate] ASC);
GO

CREATE NONCLUSTERED INDEX [IX_WM_Enrollments_StatusCodeId]
  ON [WellnessMembership].[Enrollments] ([StatusCodeId] ASC);
GO

CREATE NONCLUSTERED INDEX [IX_WM_Enrollments_IsContractSigned]
  ON [WellnessMembership].[Enrollments] ([IsContractSigned] ASC);
GO

CREATE NONCLUSTERED INDEX [IX_WM_Enrollments_ActualCreateDate]
  ON [WellnessMembership].[Enrollments] ([ActualCreateDate] ASC);
GO

CREATE NONCLUSTERED INDEX [IX_WM_Enrollments_PaymentFrequencyId]
  ON [WellnessMembership].[Enrollments] ([PaymentFrequencyId] ASC);
GO

CREATE NONCLUSTERED INDEX [IX_WM_Enrollments_IsAutoRenew]
  ON [WellnessMembership].[Enrollments] ([IsAutoRenew] ASC);
GO

CREATE NONCLUSTERED INDEX [IX_WM_Enrollments_IsPaymentArranged]
  ON [WellnessMembership].[Enrollments] ([IsPaymentArranged] ASC);
GO

CREATE NONCLUSTERED INDEX [IX_WM_Enrollments_AgreementNumber]
  ON [WellnessMembership].[Enrollments] ([AgreementNumber] ASC);
GO

CREATE NONCLUSTERED INDEX [IX_WM_Enrollments_IsBCT]
  ON [WellnessMembership].[Enrollments] ([IsBCT] ASC);
GO