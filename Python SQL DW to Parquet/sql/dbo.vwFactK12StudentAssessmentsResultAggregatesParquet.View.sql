USE [CEDS-Data-Warehouse-V9-2-0-0]
GO
/****** Object:  View [dbo].[vwFactK12StudentAssessmentsResultAggregatesParquet]    Script Date: 5/2/2022 3:48:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   VIEW [dbo].[vwFactK12StudentAssessmentsResultAggregatesParquet] AS SELECT fact.FactK12StudentAssessmentId
	, SchoolYear.SchoolYear AS SchoolYear_SchoolYear
	, SchoolYear.SessionBeginDate AS SchoolYear_SessionBeginDate
	, SchoolYear.SessionEndDate AS SchoolYear_SessionEndDate
	, Sea.SeaOrganizationName AS Sea_SeaOrganizationName
	, Sea.SeaIdentifierSea AS Sea_SeaIdentifierSea
	, Sea.StateAnsiCode AS Sea_StateAnsiCode
	, Sea.StateAbbreviationCode AS Sea_StateAbbreviationCode
	, Sea.StateAbbreviationDescription AS Sea_StateAbbreviationDescription
	, Sea.MailingAddressStreetNumberAndName AS Sea_MailingAddressStreetNumberAndName
	, Sea.MailingAddressApartmentRoomOrSuiteNumber AS Sea_MailingAddressApartmentRoomOrSuiteNumber
	, Sea.MailingAddressCity AS Sea_MailingAddressCity
	, Sea.MailingAddressPostalCode AS Sea_MailingAddressPostalCode
	, Sea.MailingAddressStateAbbreviation AS Sea_MailingAddressStateAbbreviation
	, Sea.MailingAddressCountyAnsiCode AS Sea_MailingAddressCountyAnsiCode
	, Sea.PhysicalAddressStreetNumberAndName AS Sea_PhysicalAddressStreetNumberAndName
	, Sea.PhysicalAddressApartmentRoomOrSuiteNumber AS Sea_PhysicalAddressApartmentRoomOrSuiteNumber
	, Sea.PhysicalAddressCity AS Sea_PhysicalAddressCity
	, Sea.PhysicalAddressPostalCode AS Sea_PhysicalAddressPostalCode
	, Sea.PhysicalAddressStateAbbreviation AS Sea_PhysicalAddressStateAbbreviation
	, Sea.PhysicalAddressCountyAnsiCode AS Sea_PhysicalAddressCountyAnsiCode
	, Sea.TelephoneNumber AS Sea_TelephoneNumber
	, Sea.WebSiteAddress AS Sea_WebSiteAddress
	, Sea.CteGraduationRateInclusionCode AS Sea_CteGraduationRateInclusionCode
	, Sea.CteGraduationRateInclusionDescription AS Sea_CteGraduationRateInclusionDescription
	, Sea.CteGraduationRateInclusionEdFactsCode AS Sea_CteGraduationRateInclusionEdFactsCode
	, Sea.RecordStartDateTime AS Sea_RecordStartDateTime
	, Sea.RecordEndDateTime AS Sea_RecordEndDateTime
	, Ieu.IeuOrganizationName AS Ieu_IeuOrganizationName
	, Ieu.IeuOrganizationIdentifierSea AS Ieu_IeuOrganizationIdentifierSea
	, Ieu.SeaOrganizationName AS Ieu_SeaOrganizationName
	, Ieu.SeaIdentifierSea AS Ieu_SeaIdentifierSea
	, Ieu.StateANSICode AS Ieu_StateANSICode
	, Ieu.StateAbbreviationCode AS Ieu_StateAbbreviationCode
	, Ieu.StateAbbreviationDescription AS Ieu_StateAbbreviationDescription
	, Ieu.MailingAddressStreetNumberAndName AS Ieu_MailingAddressStreetNumberAndName
	, Ieu.MailingAddressApartmentRoomOrSuiteNumber AS Ieu_MailingAddressApartmentRoomOrSuiteNumber
	, Ieu.MailingAddressCity AS Ieu_MailingAddressCity
	, Ieu.MailingAddressStateAbbreviation AS Ieu_MailingAddressStateAbbreviation
	, Ieu.MailingAddressPostalCode AS Ieu_MailingAddressPostalCode
	, Ieu.MailingAddressCountyAnsiCode AS Ieu_MailingAddressCountyAnsiCode
	, Ieu.OutOfStateIndicator AS Ieu_OutOfStateIndicator
	, Ieu.OrganizationOperationalStatus AS Ieu_OrganizationOperationalStatus
	, Ieu.OperationalStatusEffectiveDate AS Ieu_OperationalStatusEffectiveDate
	, Ieu.PhysicalAddressStreetNumberAndName AS Ieu_PhysicalAddressStreetNumberAndName
	, Ieu.PhysicalAddressApartmentRoomOrSuiteNumber AS Ieu_PhysicalAddressApartmentRoomOrSuiteNumber
	, Ieu.PhysicalAddressCity AS Ieu_PhysicalAddressCity
	, Ieu.PhysicalAddressPostalCode AS Ieu_PhysicalAddressPostalCode
	, Ieu.PhysicalAddressStateAbbreviation AS Ieu_PhysicalAddressStateAbbreviation
	, Ieu.PhysicalAddressCountyAnsiCode AS Ieu_PhysicalAddressCountyAnsiCode
	, Ieu.TelephoneNumber AS Ieu_TelephoneNumber
	, Ieu.WebSiteAddress AS Ieu_WebSiteAddress
	, Ieu.OrganizationRegionGeoJson AS Ieu_OrganizationRegionGeoJson
	, Ieu.Latitude AS Ieu_Latitude
	, Ieu.Longitude AS Ieu_Longitude
	, Ieu.RecordStartDateTime AS Ieu_RecordStartDateTime
	, Ieu.RecordEndDateTime AS Ieu_RecordEndDateTime
	, Lea.IeuOrganizationName AS Lea_IeuOrganizationName
	, Lea.IeuOrganizationIdentifierSea AS Lea_IeuOrganizationIdentifierSea
	, Lea.StateAnsiCode AS Lea_StateAnsiCode
	, Lea.StateAbbreviationCode AS Lea_StateAbbreviationCode
	, Lea.StateAbbreviationDescription AS Lea_StateAbbreviationDescription
	, Lea.SeaOrganizationName AS Lea_SeaOrganizationName
	, Lea.SeaIdentifierSea AS Lea_SeaIdentifierSea
	, Lea.LeaName AS Lea_LeaName
	, Lea.LeaIdentifierNces AS Lea_LeaIdentifierNces
	, Lea.LeaIdentifierSea AS Lea_LeaIdentifierSea
	, Lea.PriorLeaIdentifierSea AS Lea_PriorLeaIdentifierSea
	, Lea.LeaSupervisoryUnionIdentificationNumber AS Lea_LeaSupervisoryUnionIdentificationNumber
	, Lea.ReportedFederally AS Lea_ReportedFederally
	, Lea.LeaTypeCode AS Lea_LeaTypeCode
	, Lea.LeaTypeDescription AS Lea_LeaTypeDescription
	, Lea.LeaTypeEdFactsCode AS Lea_LeaTypeEdFactsCode
	, Lea.MailingAddressStreetNumberAndName AS Lea_MailingAddressStreetNumberAndName
	, Lea.MailingAddressApartmentRoomOrSuiteNumber AS Lea_MailingAddressApartmentRoomOrSuiteNumber
	, Lea.MailingAddressCity AS Lea_MailingAddressCity
	, Lea.MailingAddressPostalCode AS Lea_MailingAddressPostalCode
	, Lea.MailingAddressStateAbbreviation AS Lea_MailingAddressStateAbbreviation
	, Lea.MailingAddressCountyAnsiCode AS Lea_MailingAddressCountyAnsiCode
	, Lea.PhysicalAddressStreetNumberAndName AS Lea_PhysicalAddressStreetNumberAndName
	, Lea.PhysicalAddressApartmentRoomOrSuiteNumber AS Lea_PhysicalAddressApartmentRoomOrSuiteNumber
	, Lea.PhysicalAddressCity AS Lea_PhysicalAddressCity
	, Lea.PhysicalAddressPostalCode AS Lea_PhysicalAddressPostalCode
	, Lea.PhysicalAddressStateAbbreviation AS Lea_PhysicalAddressStateAbbreviation
	, Lea.PhysicalAddressCountyAnsiCode AS Lea_PhysicalAddressCountyAnsiCode
	, Lea.Longitude AS Lea_Longitude
	, Lea.Latitude AS Lea_Latitude
	, Lea.TelephoneNumber AS Lea_TelephoneNumber
	, Lea.WebSiteAddress AS Lea_WebSiteAddress
	, Lea.OutOfStateIndicator AS Lea_OutOfStateIndicator
	, Lea.LeaOperationalStatus AS Lea_LeaOperationalStatus
	, Lea.LeaOperationalStatusEdFactsCode AS Lea_LeaOperationalStatusEdFactsCode
	, Lea.OperationalStatusEffectiveDate AS Lea_OperationalStatusEffectiveDate
	, Lea.CharterLeaStatus AS Lea_CharterLeaStatus
	, Lea.ReconstitutedStatus AS Lea_ReconstitutedStatus
	, Lea.McKinneyVentoSubgrantRecipient AS Lea_McKinneyVentoSubgrantRecipient
	, Lea.NameOfInstitution AS Lea_NameOfInstitution
	, Lea.EffectiveDate AS Lea_EffectiveDate
	, Lea.RecordStartDateTime AS Lea_RecordStartDateTime
	, Lea.RecordEndDateTime AS Lea_RecordEndDateTime
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
	, AcademicTermDesignator.AcademicTermDesignatorCode AS AcademicTermDesignator_AcademicTermDesignatorCode
	, AcademicTermDesignator.AcademicTermDesignatorDescription AS AcademicTermDesignator_AcademicTermDesignatorDescription
	, AssessmentAdministration.AssessmentIdentifier AS AssessmentAdministration_AssessmentIdentifier
	, AssessmentAdministration.AssessmentIdentificationSystem AS AssessmentAdministration_AssessmentIdentificationSystem
	, AssessmentAdministration.AssessmentAdministrationCode AS AssessmentAdministration_AssessmentAdministrationCode
	, AssessmentAdministration.AssessmentAdministrationName AS AssessmentAdministration_AssessmentAdministrationName
	, AssessmentAdministration.AssessmentAdministrationStartDate AS AssessmentAdministration_AssessmentAdministrationStartDate
	, AssessmentAdministration.AssessmentAdministrationEndDate AS AssessmentAdministration_AssessmentAdministrationEndDate
	, AssessmentAdministration.AssessmentAdministrationAssessmentFamily AS AssessmentAdministration_AssessmentAdministrationAssessmentFamily
	, AssessmentAdministration.SchoolIdentifier AS AssessmentAdministration_SchoolIdentifier
	, AssessmentAdministration.SchoolIdentificationSystem AS AssessmentAdministration_SchoolIdentificationSystem
	, AssessmentAdministration.LocalEducationAgencyIdentifier AS AssessmentAdministration_LocalEducationAgencyIdentifier
	, AssessmentAdministration.LEAIdentificationSystem AS AssessmentAdministration_LEAIdentificationSystem
	, AssessmentAdministration.AssessmentAdministrationOrganizationName AS AssessmentAdministration_AssessmentAdministrationOrganizationName
	, AssessmentAdministration.AssessmentAdministrationPeriodDescription AS AssessmentAdministration_AssessmentAdministrationPeriodDescription
	, AssessmentAdministration.AssessmentSecureIndicator AS AssessmentAdministration_AssessmentSecureIndicator
	, Assessment.AssessmentIdentifierState AS Assessment_AssessmentIdentifierState
	, Assessment.AssessmentFamilyShortName AS Assessment_AssessmentFamilyShortName
	, Assessment.AssessmentTitle AS Assessment_AssessmentTitle
	, Assessment.AssessmentShortName AS Assessment_AssessmentShortName
	, Assessment.AssessmentTypeCode AS Assessment_AssessmentTypeCode
	, Assessment.AssessmentTypeDescription AS Assessment_AssessmentTypeDescription
	, Assessment.AssessmentAcademicSubjectCode AS Assessment_AssessmentAcademicSubjectCode
	, Assessment.AssessmentAcademicSubjectDescription AS Assessment_AssessmentAcademicSubjectDescription
	, Assessment.AssessmentAcademicSubjectEdFactsCode AS Assessment_AssessmentAcademicSubjectEdFactsCode
	, AssessmentSubtest.AssessmentFormNumber AS AssessmentSubtest_AssessmentFormNumber
	, AssessmentSubtest.AssessmentAcademicSubjectCode AS AssessmentSubtest_AssessmentAcademicSubjectCode
	, AssessmentSubtest.AssessmentAcademicSubjectDescription AS AssessmentSubtest_AssessmentAcademicSubjectDescription
	, AssessmentSubtest.AssessmentSubtestIdentifierInternal AS AssessmentSubtest_AssessmentSubtestIdentifierInternal
	, AssessmentSubtest.AssessmentSubtestTitle AS AssessmentSubtest_AssessmentSubtestTitle
	, AssessmentSubtest.AssessmentSubtestAbbreviation AS AssessmentSubtest_AssessmentSubtestAbbreviation
	, AssessmentSubtest.AssessmentSubtestDescription AS AssessmentSubtest_AssessmentSubtestDescription
	, AssessmentSubtest.AssessmentSubtestVersion AS AssessmentSubtest_AssessmentSubtestVersion
	, AssessmentSubtest.AssessmentLevelForWhichDesigned AS AssessmentSubtest_AssessmentLevelForWhichDesigned
	, AssessmentSubtest.AssessmentEarlyLearningDevelopmentalDomain AS AssessmentSubtest_AssessmentEarlyLearningDevelopmentalDomain
	, AssessmentSubtest.AssessmentSubtestPublishedDate AS AssessmentSubtest_AssessmentSubtestPublishedDate
	, AssessmentSubtest.AssessmentSubtestMinimumValue AS AssessmentSubtest_AssessmentSubtestMinimumValue
	, AssessmentSubtest.AssessmentSubtestMaximumValue AS AssessmentSubtest_AssessmentSubtestMaximumValue
	, AssessmentSubtest.AssessmentSubtestScaleOptimalValue AS AssessmentSubtest_AssessmentSubtestScaleOptimalValue
	, AssessmentSubtest.AssessmentContentStandardType AS AssessmentSubtest_AssessmentContentStandardType
	, AssessmentSubtest.AssessmentPurpose AS AssessmentSubtest_AssessmentPurpose
	, AssessmentSubtest.AssessmentSubtestRules AS AssessmentSubtest_AssessmentSubtestRules
	, AssessmentSubtest.AssessmentFormSubtestTier AS AssessmentSubtest_AssessmentFormSubtestTier
	, AssessmentSubtest.AssessmentFormSubtestContainerOnly AS AssessmentSubtest_AssessmentFormSubtestContainerOnly
	, CompetencyDefinition.CompetencyDefinitionIdentifier AS CompetencyDefinition_CompetencyDefinitionIdentifier
	, CompetencyDefinition.CompetencyDefinitionCode AS CompetencyDefinition_CompetencyDefinitionCode
	, CompetencyDefinition.CompetencyDefinitionShortName AS CompetencyDefinition_CompetencyDefinitionShortName
	, CompetencyDefinition.CompetencyDefinitionStatement AS CompetencyDefinition_CompetencyDefinitionStatement
	, CompetencyDefinition.CompetencyDefinitionType AS CompetencyDefinition_CompetencyDefinitionType
	, CompetencyDefinition.CompetencyDefinitionValidStartDate AS CompetencyDefinition_CompetencyDefinitionValidStartDate
	, CompetencyDefinition.CompetencyDefinitionValidEndDate AS CompetencyDefinition_CompetencyDefinitionValidEndDate
	, GradeLevelWhenAssessed.GradeLevelCode AS GradeLevelWhenAssessed_GradeLevelCode
	, GradeLevelWhenAssessed.GradeLevelDescription AS GradeLevelWhenAssessed_GradeLevelDescription
	, GradeLevelWhenAssessed.GradeLevelEdFactsCode AS GradeLevelWhenAssessed_GradeLevelEdFactsCode
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
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
	, fact.TotalPerformanceLevel1
	, fact.TotalPerformanceLevel2
	, fact.TotalPerformanceLevel3
	, fact.TotalPerformanceLevel4
	, fact.TotalPerformanceLevel5
	, fact.TotalPerformanceLevel6
	, fact.TotalMetStandard
	, fact.TotalDidNotMeetStandard
	, fact.PercentagePerformanceLevel1
	, fact.PercentagePerformanceLevel2
	, fact.PercentagePerformanceLevel3
	, fact.PercentagePerformanceLevel4
	, fact.PercentagePerformanceLevel5
	, fact.PercentagePerformanceLevel6
	, fact.PercentageMetStandard
	, fact.PercentageDidNotMeetStandard
	, fact.AverageScaleScorePerformanceLevel1
	, fact.AverageScaleScorePerformanceLevel2
	, fact.AverageScaleScorePerformanceLevel3
	, fact.AverageScaleScorePerformanceLevel4
	, fact.AverageScaleScorePerformanceLevel5
	, fact.AverageScaleScorePerformanceLevel6
	, fact.AverageScaleScoreMetStandard
	, fact.AverageScaleScoreDidNotMeetStandard
	, fact.AverageScaleScore
	, fact.StandarDeviationScaleScorePerformanceLevel1
	, fact.StandarDeviationScaleScorePerformanceLevel2
	, fact.StandarDeviationScaleScorePerformanceLevel3
	, fact.StandarDeviationScaleScorePerformanceLevel4
	, fact.StandarDeviationScaleScorePerformanceLevel5
	, fact.StandarDeviationScaleScorePerformanceLevel6
	, fact.StandarDeviationScaleScoreMetDeviation
	, fact.StandarDeviationScaleScoreDidNotMeetDeviation
	, fact.StandarDeviationScaleScore
	, fact.TotalAssessmentCount
	, fact.TotalValidAssessmentCount
	, fact.AssessmentSubtestMinimumValueScaleScore
	, fact.AssessmentSubtestMaximumValueScaleScore
	, fact.ScaleScore25thPercentile
	, fact.ScaleScore50thPercentile
	, fact.ScaleScore75thPercentile
FROM RDS.FactK12StudentAssessmentsResultAggregates fact
JOIN RDS.DimSchoolYears SchoolYear
	ON Fact.SchoolYearId = SchoolYear.DimSchoolYearId
JOIN RDS.DimSeas Sea
	ON Fact.SeaId = Sea.DimSeaId
JOIN RDS.DimIeus Ieu
	ON Fact.IeuId = Ieu.DimIeuId
JOIN RDS.DimLeas Lea
	ON Fact.LeaId = Lea.DimLeaID
JOIN RDS.DimK12Schools K12School
	ON Fact.K12SchoolId = K12School.DimK12SchoolId
JOIN RDS.DimAcademicTermDesignators AcademicTermDesignator
	ON Fact.AcademicTermDesignatorId = AcademicTermDesignator.DimAcademicTermDesignatorId
JOIN RDS.DimAssessmentAdministration AssessmentAdministration
	ON Fact.AssessmentAdministrationId = AssessmentAdministration.DimAssessmentAdministrationId
JOIN RDS.DimAssessments Assessment
	ON Fact.AssessmentId = Assessment.DimAssessmentId
JOIN RDS.DimAssessmentSubtests AssessmentSubtest
	ON Fact.AssessmentSubtestId = AssessmentSubtest.DimAssessmentSubtestId
JOIN RDS.DimCompetencyDefinitions CompetencyDefinition
	ON Fact.CompetencyDefinitionId = CompetencyDefinition.DimCompetencyDefinitionId
JOIN RDS.DimGradeLevels GradeLevelWhenAssessed
	ON Fact.GradeLevelWhenAssessedId = GradeLevelWhenAssessed.DimGradeLevelId
JOIN RDS.DimIdeaStatuses IdeaStatus
	ON Fact.IdeaStatusId = IdeaStatus.DimIdeaStatusId
JOIN RDS.DimK12Demographics K12Demographic
	ON Fact.K12DemographicId = K12Demographic.DimK12DemographicId
JOIN RDS.DimRaces Race
	ON Fact.RaceId = Race.DimRaceId
GO
