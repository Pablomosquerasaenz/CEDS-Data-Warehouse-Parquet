USE [CEDS-Data-Warehouse-V9-2-0-0]
GO
/****** Object:  View [dbo].[vwFactOrganizationStatusCountsParquet]    Script Date: 5/2/2022 3:48:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   VIEW [dbo].[vwFactOrganizationStatusCountsParquet] AS SELECT fact.FactOrganizationStatusCountId
	, FactType.FactTypeCode AS FactType_FactTypeCode
	, FactType.FactTypeDescription AS FactType_FactTypeDescription
	, K12School.SeaOrganizationName AS K12School_SeaOrganizationName
	, K12School.SeaIdentifierSea AS K12School_SeaIdentifierSea
	, K12School.StateAnsiCode AS K12School_StateAnsiCode
	, K12School.StateAbbreviationCode AS K12School_StateAbbreviationCode
	, K12School.StateAbbreviationDescription AS K12School_StateAbbreviationDescription
	, K12School.IeuOrganizationName AS K12School_IeuOrganizationName
	, K12School.IeuOrganizationIdentifierSea AS K12School_IeuOrganizationIdentifierSea
	, K12School.LeaName AS K12School_LeaName
	, K12School.LeaIdentifierNces AS K12School_LeaIdentifierNces
	, K12School.LeaIdentifierSea AS K12School_LeaIdentifierSea
	, K12School.PriorLeaIdentifierSea AS K12School_PriorLeaIdentifierSea
	, K12School.LeaTypeCode AS K12School_LeaTypeCode
	, K12School.LeaTypeDescription AS K12School_LeaTypeDescription
	, K12School.LeaTypeEdFactsCode AS K12School_LeaTypeEdFactsCode
	, K12School.NameOfInstitution AS K12School_NameOfInstitution
	, K12School.SchoolIdentifierNces AS K12School_SchoolIdentifierNces
	, K12School.SchoolIdentifierSea AS K12School_SchoolIdentifierSea
	, K12School.PrimaryCharterSchoolAuthorizingOrganizationIdentifierSea AS K12School_PrimaryCharterSchoolAuthorizingOrganizationIdentifierSea
	, K12School.SecondaryCharterSchoolAuthorizingOrganizationIdentifierSea AS K12School_SecondaryCharterSchoolAuthorizingOrganizationIdentifierSea
	, K12School.OperationalStatusEffectiveDate AS K12School_OperationalStatusEffectiveDate
	, K12School.PriorSchoolIdentifierSea AS K12School_PriorSchoolIdentifierSea
	, K12School.CharterSchoolIndicator AS K12School_CharterSchoolIndicator
	, K12School.CharterSchoolContractIdNumber AS K12School_CharterSchoolContractIdNumber
	, K12School.CharterSchoolContractApprovalDate AS K12School_CharterSchoolContractApprovalDate
	, K12School.CharterSchoolContractRenewalDate AS K12School_CharterSchoolContractRenewalDate
	, K12School.ReportedFederally AS K12School_ReportedFederally
	, K12School.SchoolTypeCode AS K12School_SchoolTypeCode
	, K12School.SchoolTypeDescription AS K12School_SchoolTypeDescription
	, K12School.SchoolTypeEdFactsCode AS K12School_SchoolTypeEdFactsCode
	, K12School.MailingAddressStreetNumberAndName AS K12School_MailingAddressStreetNumberAndName
	, K12School.MailingAddressApartmentRoomOrSuiteNumber AS K12School_MailingAddressApartmentRoomOrSuiteNumber
	, K12School.MailingAddressCity AS K12School_MailingAddressCity
	, K12School.MailingAddressPostalCode AS K12School_MailingAddressPostalCode
	, K12School.MailingAddressStateAbbreviation AS K12School_MailingAddressStateAbbreviation
	, K12School.MailingAddressCountyAnsiCode AS K12School_MailingAddressCountyAnsiCode
	, K12School.PhysicalAddressStreetNumberAndName AS K12School_PhysicalAddressStreetNumberAndName
	, K12School.PhysicalAddressApartmentRoomOrSuiteNumber AS K12School_PhysicalAddressApartmentRoomOrSuiteNumber
	, K12School.PhysicalAddressCity AS K12School_PhysicalAddressCity
	, K12School.PhysicalAddressPostalCode AS K12School_PhysicalAddressPostalCode
	, K12School.PhysicalAddressStateAbbreviation AS K12School_PhysicalAddressStateAbbreviation
	, K12School.PhysicalAddressCountyAnsiCode AS K12School_PhysicalAddressCountyAnsiCode
	, K12School.Longitude AS K12School_Longitude
	, K12School.Latitude AS K12School_Latitude
	, K12School.TelephoneNumber AS K12School_TelephoneNumber
	, K12School.WebSiteAddress AS K12School_WebSiteAddress
	, K12School.OutOfStateIndicator AS K12School_OutOfStateIndicator
	, K12School.SchoolOperationalStatus AS K12School_SchoolOperationalStatus
	, K12School.SchoolOperationalStatusEdFactsCode AS K12School_SchoolOperationalStatusEdFactsCode
	, K12School.SchoolOperationalStatusEffectiveDate AS K12School_SchoolOperationalStatusEffectiveDate
	, K12School.CharterSchoolStatus AS K12School_CharterSchoolStatus
	, K12School.ReconstitutedStatus AS K12School_ReconstitutedStatus
	, K12School.AdministrativeFundingControlCode AS K12School_AdministrativeFundingControlCode
	, K12School.AdministrativeFundingControlDescription AS K12School_AdministrativeFundingControlDescription
	, K12School.RecordStartDateTime AS K12School_RecordStartDateTime
	, K12School.RecordEndDateTime AS K12School_RecordEndDateTime
	, fact.SchoolYearId
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
	, IdeaStatus.SpecialEducationExitReasonCode AS IdeaStatus_SpecialEducationExitReasonCode
	, IdeaStatus.SpecialEducationExitReasonDescription AS IdeaStatus_SpecialEducationExitReasonDescription
	, IdeaStatus.SpecialEducationExitReasonEdFactsCode AS IdeaStatus_SpecialEducationExitReasonEdFactsCode
	, IdeaStatus.IdeaEducationalEnvironmentForSchoolAgeDescription AS IdeaStatus_IdeaEducationalEnvironmentForSchoolAgeDescription
	, IdeaStatus.IdeaEducationalEnvironmentForSchoolAgeCode AS IdeaStatus_IdeaEducationalEnvironmentForSchoolAgeCode
	, IdeaStatus.IdeaEducationalEnvironmentForSchoolAgeEdFactsCode AS IdeaStatus_IdeaEducationalEnvironmentForSchoolAgeEdFactsCode
	, IdeaStatus.IdeaIndicatorCode AS IdeaStatus_IdeaIndicatorCode
	, IdeaStatus.IdeaIndicatorDescription AS IdeaStatus_IdeaIndicatorDescription
	, IdeaStatus.IdeaIndicatorEdFactsCode AS IdeaStatus_IdeaIndicatorEdFactsCode
	, IdeaStatus.IdeaEducationalEnvironmentForEarlyChildhoodCode AS IdeaStatus_IdeaEducationalEnvironmentForEarlyChildhoodCode
	, IdeaStatus.IdeaEducationalEnvironmentForEarlyChildhoodDescription AS IdeaStatus_IdeaEducationalEnvironmentForEarlyChildhoodDescription
	, IdeaStatus.IdeaEducationalEnvironmentForEarlyChildhoodEdFactsCode AS IdeaStatus_IdeaEducationalEnvironmentForEarlyChildhoodEdFactsCode
	, K12Demographic.SexCode AS K12Demographic_SexCode
	, K12Demographic.SexDescription AS K12Demographic_SexDescription
	, K12Demographic.SexEdFactsCode AS K12Demographic_SexEdFactsCode
	, fact.DimEcoDisStatusId
	, IndicatorStatus.IndicatorStatusCode AS IndicatorStatus_IndicatorStatusCode
	, IndicatorStatus.IndicatorStatusDescription AS IndicatorStatus_IndicatorStatusDescription
	, IndicatorStatus.IndicatorStatusEdFactsCode AS IndicatorStatus_IndicatorStatusEdFactsCode
	, StateDefinedStatus.StateDefinedStatusCode AS StateDefinedStatus_StateDefinedStatusCode
	, StateDefinedStatus.StateDefinedStatusDescription AS StateDefinedStatus_StateDefinedStatusDescription
	, fact.OrganizationStatusCount
	, StateDefinedCustomIndicator.StateDefinedCustomIndicatorCode AS StateDefinedCustomIndicator_StateDefinedCustomIndicatorCode
	, StateDefinedCustomIndicator.StateDefinedCustomIndicatorDescription AS StateDefinedCustomIndicator_StateDefinedCustomIndicatorDescription
	, IndicatorStatusType.IndicatorStatusTypeCode AS IndicatorStatusType_IndicatorStatusTypeCode
	, IndicatorStatusType.IndicatorStatusTypeDescription AS IndicatorStatusType_IndicatorStatusTypeDescription
	, IndicatorStatusType.IndicatorStatusTypeEdFactsCode AS IndicatorStatusType_IndicatorStatusTypeEdFactsCode
FROM RDS.FactOrganizationStatusCounts fact
JOIN RDS.DimFactTypes FactType
	ON Fact.FactTypeId = FactType.DimFactTypeId
JOIN RDS.DimK12Schools K12School
	ON Fact.K12SchoolId = K12School.DimK12SchoolId
JOIN RDS.DimRaces Race
	ON Fact.RaceId = Race.DimRaceId
JOIN RDS.DimIdeaStatuses IdeaStatus
	ON Fact.IdeaStatusId = IdeaStatus.DimIdeaStatusId
JOIN RDS.DimK12Demographics K12Demographic
	ON Fact.K12DemographicId = K12Demographic.DimK12DemographicId
JOIN RDS.DimIndicatorStatuses IndicatorStatus
	ON Fact.IndicatorStatusId = IndicatorStatus.DimIndicatorStatusId
JOIN RDS.DimStateDefinedStatuses StateDefinedStatus
	ON Fact.StateDefinedStatusId = StateDefinedStatus.DimStateDefinedStatusId
JOIN RDS.DimStateDefinedCustomIndicators StateDefinedCustomIndicator
	ON Fact.StateDefinedCustomIndicatorId = StateDefinedCustomIndicator.DimStateDefinedCustomIndicatorId
JOIN RDS.DimIndicatorStatusTypes IndicatorStatusType
	ON Fact.IndicatorStatusTypeId = IndicatorStatusType.DimIndicatorStatusTypeId
GO
