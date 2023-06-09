/****** Object:  View [RDS].[vwFactK12StudentAssessmentsParquet]    Script Date: 5/10/2022 2:48:07 PM ******/

CREATE OR ALTER VIEW [RDS].[vwFactK12StudentAssessmentsParquet] AS 
SELECT fact.FactK12StudentAssessmentId
	, SchoolYear.SchoolYear AS SchoolYear_SchoolYear
	, SchoolYear.SessionBeginDate AS SchoolYear_SessionBeginDate
	, SchoolYear.SessionEndDate AS SchoolYear_SessionEndDate
	, CountDate.DateValue AS CountDate_DateValue
	, CountDate.Day AS CountDate_Day
	, CountDate.DayOfWeek AS CountDate_DayOfWeek
	, CountDate.DayOfYear AS CountDate_DayOfYear
	, CountDate.Month AS CountDate_Month
	, CountDate.MonthName AS CountDate_MonthName
	, CountDate.SubmissionYear AS CountDate_SubmissionYear
	, CountDate.Year AS CountDate_Year
	, FactType.FactTypeCode AS FactType_FactTypeCode
	, FactType.FactTypeDescription AS FactType_FactTypeDescription
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
	, K12Student.FirstName AS K12Student_FirstName
	, K12Student.MiddleName AS K12Student_MiddleName
	, K12Student.LastOrSurname AS K12Student_LastOrSurname
	, K12Student.PersonalTitleOrPrefix AS K12Student_PersonalTitleOrPrefix
	, K12Student.BirthDate AS K12Student_BirthDate
	, K12Student.PositionTitle AS K12Student_PositionTitle
	, K12Student.ElectronicMailAddressHome AS K12Student_ElectronicMailAddressHome
	, K12Student.ElectronicMailAddressWork AS K12Student_ElectronicMailAddressWork
	, K12Student.ElectronicMailAddressOrganizational AS K12Student_ElectronicMailAddressOrganizational
	, K12Student.TelephoneNumberHome AS K12Student_TelephoneNumberHome
	, K12Student.TelephoneNumberWork AS K12Student_TelephoneNumberWork
	, K12Student.TelephoneNumberMobile AS K12Student_TelephoneNumberMobile
	, K12Student.TelephoneNumberFax AS K12Student_TelephoneNumberFax
	, K12Student.EarlyLearningChidIdentifierState AS K12Student_EarlyLearningChidIdentifierState
	, K12Student.K12StudentIdentifierState AS K12Student_K12StudentIdentifierState
	, K12Student.K12StudentIdentifierDistrict AS K12Student_K12StudentIdentifierDistrict
	, K12Student.K12StudentIdentifierNationalMigrant AS K12Student_K12StudentIdentifierNationalMigrant
	, K12Student.PsStudentIdentifierState AS K12Student_PsStudentIdentifierState
	, K12Student.AeStudentIdentifierState AS K12Student_AeStudentIdentifierState
	, K12Student.WorkforcePersonIdentifierState AS K12Student_WorkforcePersonIdentifierState
	, K12Student.EarlyLearningStaffMemberIdentifierState AS K12Student_EarlyLearningStaffMemberIdentifierState
	, K12Student.K12StaffMemberIdentiferState AS K12Student_K12StaffMemberIdentiferState
	, K12Student.K12StaffMemberIdentiferDistrict AS K12Student_K12StaffMemberIdentiferDistrict
	, K12Student.PsStaffMemberIdentiferState AS K12Student_PsStaffMemberIdentiferState
	, K12Student.PersonIdentifierDriversLicense AS K12Student_PersonIdentifierDriversLicense
	, K12Student.IsActiveEarlyLearningChild AS K12Student_IsActiveEarlyLearningChild
	, K12Student.IsActiveK12Student AS K12Student_IsActiveK12Student
	, K12Student.IsActivePsStudent AS K12Student_IsActivePsStudent
	, K12Student.IsActiveAeStudent AS K12Student_IsActiveAeStudent
	, K12Student.IsActiveWorkforcePerson AS K12Student_IsActiveWorkforcePerson
	, K12Student.IsActiveEarlyLearningStaffMember AS K12Student_IsActiveEarlyLearningStaffMember
	, K12Student.IsActiveK12StaffMember AS K12Student_IsActiveK12StaffMember
	, K12Student.IsActivePsStaffMember AS K12Student_IsActivePsStaffMember
	, K12Student.RecordStartDateTime AS K12Student_RecordStartDateTime
	, K12Student.RecordEndDateTime AS K12Student_RecordEndDateTime
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
	, AssessmentRegistration.AssessmentRegistrationParticipationIndicatorCode AS AssessmentRegistration_AssessmentRegistrationParticipationIndicatorCode
	, AssessmentRegistration.AssessmentRegistrationParticipationIndicatorDescription AS AssessmentRegistration_AssessmentRegistrationParticipationIndicatorDescription
	, AssessmentRegistration.AssessmentRegistrationCompletionStatusCode AS AssessmentRegistration_AssessmentRegistrationCompletionStatusCode
	, AssessmentRegistration.AssessmentRegistrationCompletionStatusDescription AS AssessmentRegistration_AssessmentRegistrationCompletionStatusDescription
	, AssessmentRegistration.StateFullAcademicYearCode AS AssessmentRegistration_StateFullAcademicYearCode
	, AssessmentRegistration.StateFullAcademicYearDescription AS AssessmentRegistration_StateFullAcademicYearDescription
	, AssessmentRegistration.StateFullAcademicYearEdFactsCode AS AssessmentRegistration_StateFullAcademicYearEdFactsCode
	, AssessmentRegistration.LeaFullAcademicYearCode AS AssessmentRegistration_LeaFullAcademicYearCode
	, AssessmentRegistration.LeaFullAcademicYearDescription AS AssessmentRegistration_LeaFullAcademicYearDescription
	, AssessmentRegistration.LeaFullAcademicYearEdFactsCode AS AssessmentRegistration_LeaFullAcademicYearEdFactsCode
	, AssessmentRegistration.SchoolFullAcademicYearCode AS AssessmentRegistration_SchoolFullAcademicYearCode
	, AssessmentRegistration.SchoolFullAcademicYearDescription AS AssessmentRegistration_SchoolFullAcademicYearDescription
	, AssessmentRegistration.SchoolFullAcademicYearEdFactsCode AS AssessmentRegistration_SchoolFullAcademicYearEdFactsCode
	, AssessmentParticipationSession.AssessmentSessionSpecialCircumstanceTypeCode AS AssessmentParticipationSession_AssessmentSessionSpecialCircumstanceTypeCode
	, AssessmentParticipationSession.AssessmentSessionSpecialCircumstanceTypeDescription AS AssessmentParticipationSession_AssessmentSessionSpecialCircumstanceTypeDescription
	, AssessmentResult.AssessmentScoreMetricTypeCode AS AssessmentResult_AssessmentScoreMetricTypeCode
	, AssessmentResult.AssessmentScoreMetricTypeDescription AS AssessmentResult_AssessmentScoreMetricTypeDescription
	, AssessmentPerformanceLevel.AssessmentPerformanceLevelIdentifier AS AssessmentPerformanceLevel_AssessmentPerformanceLevelIdentifier
	, AssessmentPerformanceLevel.AssessmentPerformanceLevelLabel AS AssessmentPerformanceLevel_AssessmentPerformanceLevelLabel
	, AssessmentPerformanceLevel.AssessmentPerformanceLevelScoreMetric AS AssessmentPerformanceLevel_AssessmentPerformanceLevelScoreMetric
	, AssessmentPerformanceLevel.AssessmentPerformanceLevelLowerCutScore AS AssessmentPerformanceLevel_AssessmentPerformanceLevelLowerCutScore
	, AssessmentPerformanceLevel.AssessmentPerformanceLevelHigherCutScore AS AssessmentPerformanceLevel_AssessmentPerformanceLevelHigherCutScore
	, CompetencyDefinition.CompetencyDefinitionIdentifier AS CompetencyDefinition_CompetencyDefinitionIdentifier
	, CompetencyDefinition.CompetencyDefinitionCode AS CompetencyDefinition_CompetencyDefinitionCode
	, CompetencyDefinition.CompetencyDefinitionShortName AS CompetencyDefinition_CompetencyDefinitionShortName
	, CompetencyDefinition.CompetencyDefinitionStatement AS CompetencyDefinition_CompetencyDefinitionStatement
	, CompetencyDefinition.CompetencyDefinitionType AS CompetencyDefinition_CompetencyDefinitionType
	, CompetencyDefinition.CompetencyDefinitionValidStartDate AS CompetencyDefinition_CompetencyDefinitionValidStartDate
	, CompetencyDefinition.CompetencyDefinitionValidEndDate AS CompetencyDefinition_CompetencyDefinitionValidEndDate
	, CteStatus.CteAeDisplacedHomemakerIndicatorCode AS CteStatus_CteAeDisplacedHomemakerIndicatorCode
	, CteStatus.CteAeDisplacedHomemakerIndicatorDescription AS CteStatus_CteAeDisplacedHomemakerIndicatorDescription
	, CteStatus.CteAeDisplacedHomemakerIndicatorEdFactsCode AS CteStatus_CteAeDisplacedHomemakerIndicatorEdFactsCode
	, CteStatus.CteNontraditionalGenderStatusCode AS CteStatus_CteNontraditionalGenderStatusCode
	, CteStatus.CteNontraditionalGenderStatusDescription AS CteStatus_CteNontraditionalGenderStatusDescription
	, CteStatus.CteNontraditionalGenderStatusEdFactsCode AS CteStatus_CteNontraditionalGenderStatusEdFactsCode
	, CteStatus.CteNontraditionalCompletionCode AS CteStatus_CteNontraditionalCompletionCode
	, CteStatus.CteNontraditionalCompletionDescription AS CteStatus_CteNontraditionalCompletionDescription
	, CteStatus.CteNontraditionalCompletionEdFactsCode AS CteStatus_CteNontraditionalCompletionEdFactsCode
	, CteStatus.SingleParentOrSinglePregnantWomanStatusCode AS CteStatus_SingleParentOrSinglePregnantWomanStatusCode
	, CteStatus.SingleParentOrSinglePregnantWomanStatusDescription AS CteStatus_SingleParentOrSinglePregnantWomanStatusDescription
	, CteStatus.SingleParentOrSinglePregnantWomanStatusEdFactsCode AS CteStatus_SingleParentOrSinglePregnantWomanStatusEdFactsCode
	, CteStatus.CteParticipantCode AS CteStatus_CteParticipantCode
	, CteStatus.CteParticipantDescription AS CteStatus_CteParticipantDescription
	, CteStatus.CteParticipantEdFactsCode AS CteStatus_CteParticipantEdFactsCode
	, CteStatus.CteConcentratorCode AS CteStatus_CteConcentratorCode
	, CteStatus.CteConcentratorDescription AS CteStatus_CteConcentratorDescription
	, CteStatus.CteConcentratorEdFactsCode AS CteStatus_CteConcentratorEdFactsCode
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
	, K12StudentStatus.DiplomaCredentialTypeCode AS K12StudentStatus_DiplomaCredentialTypeCode
	, K12StudentStatus.DiplomaCredentialTypeDescription AS K12StudentStatus_DiplomaCredentialTypeDescription
	, K12StudentStatus.DiplomaCredentialTypeEdFactsCode AS K12StudentStatus_DiplomaCredentialTypeEdFactsCode
	, K12StudentStatus.MobilityStatus12moCode AS K12StudentStatus_MobilityStatus12moCode
	, K12StudentStatus.MobilityStatus12moDescription AS K12StudentStatus_MobilityStatus12moDescription
	, K12StudentStatus.MobilityStatus12moEdFactsCode AS K12StudentStatus_MobilityStatus12moEdFactsCode
	, K12StudentStatus.MobilityStatusSYCode AS K12StudentStatus_MobilityStatusSYCode
	, K12StudentStatus.MobilityStatusSYDescription AS K12StudentStatus_MobilityStatusSYDescription
	, K12StudentStatus.MobilityStatusSYEdFactsCode AS K12StudentStatus_MobilityStatusSYEdFactsCode
	, K12StudentStatus.ReferralStatusCode AS K12StudentStatus_ReferralStatusCode
	, K12StudentStatus.ReferralStatusDescription AS K12StudentStatus_ReferralStatusDescription
	, K12StudentStatus.ReferralStatusEdFactsCode AS K12StudentStatus_ReferralStatusEdFactsCode
	, K12StudentStatus.MobilityStatus36moCode AS K12StudentStatus_MobilityStatus36moCode
	, K12StudentStatus.MobilityStatus36moDescription AS K12StudentStatus_MobilityStatus36moDescription
	, K12StudentStatus.MobilityStatus36moEdFactsCode AS K12StudentStatus_MobilityStatus36moEdFactsCode
	, K12StudentStatus.PlacementStatusCode AS K12StudentStatus_PlacementStatusCode
	, K12StudentStatus.PlacementStatusDescription AS K12StudentStatus_PlacementStatusDescription
	, K12StudentStatus.PlacementStatusEdFactsCode AS K12StudentStatus_PlacementStatusEdFactsCode
	, K12StudentStatus.PlacementTypeCode AS K12StudentStatus_PlacementTypeCode
	, K12StudentStatus.PlacementTypeDescription AS K12StudentStatus_PlacementTypeDescription
	, K12StudentStatus.PlacementTypeEdFactsCode AS K12StudentStatus_PlacementTypeEdFactsCode
	, K12StudentStatus.RepresentationStatusCode AS K12StudentStatus_RepresentationStatusCode
	, K12StudentStatus.RepresentationStatusDescription AS K12StudentStatus_RepresentationStatusDescription
	, K12StudentStatus.RepresentationStatusEdFactsCode AS K12StudentStatus_RepresentationStatusEdFactsCode
	, NOrDStatus.LongTermStatusCode AS NOrDStatus_LongTermStatusCode
	, NOrDStatus.LongTermStatusDescription AS NOrDStatus_LongTermStatusDescription
	, NOrDStatus.LongTermStatusEdFactsCode AS NOrDStatus_LongTermStatusEdFactsCode
	, NOrDStatus.NeglectedOrDelinquentProgramTypeCode AS NOrDStatus_NeglectedOrDelinquentProgramTypeCode
	, NOrDStatus.NeglectedOrDelinquentProgramTypeDescription AS NOrDStatus_NeglectedOrDelinquentProgramTypeDescription
	, NOrDStatus.NeglectedOrDelinquentProgramTypeEdFactsCode AS NOrDStatus_NeglectedOrDelinquentProgramTypeEdFactsCode
	, TitleIIIStatus.TitleIIIProgramParticipationCode AS TitleIIIStatus_TitleIIIProgramParticipationCode
	, TitleIIIStatus.TitleIIIProgramParticipationDescription AS TitleIIIStatus_TitleIIIProgramParticipationDescription
	, TitleIIIStatus.TitleIIIProgramParticipationEdFactsCode AS TitleIIIStatus_TitleIIIProgramParticipationEdFactsCode
	, TitleIIIStatus.FormerEnglishLearnerYearStatusCode AS TitleIIIStatus_FormerEnglishLearnerYearStatusCode
	, TitleIIIStatus.FormerEnglishLearnerYearStatusDescription AS TitleIIIStatus_FormerEnglishLearnerYearStatusDescription
	, TitleIIIStatus.FormerEnglishLearnerYearStatusEdFactsCode AS TitleIIIStatus_FormerEnglishLearnerYearStatusEdFactsCode
	, TitleIIIStatus.ProficiencyStatusCode AS TitleIIIStatus_ProficiencyStatusCode
	, TitleIIIStatus.ProficiencyStatusDescription AS TitleIIIStatus_ProficiencyStatusDescription
	, TitleIIIStatus.ProficiencyStatusEdFactsCode AS TitleIIIStatus_ProficiencyStatusEdFactsCode
	, fact.AssessmentCount
	, fact.AssessmentResultScoreValueRawScore
	, fact.AssessmentResultScoreValueScaleScore
	, fact.AssessmentResultScoreValuePercentile
	, fact.AssessmentResultScoreValueTScore
	, fact.AssessmentResultScoreValueZScore
	, fact.AssessmentResultScoreValueACTScore
	, fact.AssessmentResultScoreValueSATScore
	, fact.FactK12StudentAssessmentAccomodationId
FROM RDS.FactK12StudentAssessments fact
JOIN RDS.DimSchoolYears SchoolYear
	ON Fact.SchoolYearId = SchoolYear.DimSchoolYearId
JOIN RDS.DimDates CountDate
	ON Fact.CountDateId = CountDate.DimDateId
JOIN RDS.DimFactTypes FactType
	ON Fact.FactTypeId = FactType.DimFactTypeId
JOIN RDS.DimSeas Sea
	ON Fact.SeaId = Sea.DimSeaId
JOIN RDS.DimIeus Ieu
	ON Fact.IeuId = Ieu.DimIeuId
JOIN RDS.DimLeas Lea
	ON Fact.LeaId = Lea.DimLeaID
JOIN RDS.DimK12Schools K12School
	ON Fact.K12SchoolId = K12School.DimK12SchoolId
JOIN RDS.DimPeople K12Student
	ON Fact.K12StudentId = K12Student.DimPersonId
JOIN RDS.DimAssessments Assessment
	ON Fact.AssessmentId = Assessment.DimAssessmentId
JOIN RDS.DimAssessmentSubtests AssessmentSubtest
	ON Fact.AssessmentSubtestId = AssessmentSubtest.DimAssessmentSubtestId
JOIN RDS.DimAssessmentAdministration AssessmentAdministration
	ON Fact.AssessmentAdministrationId = AssessmentAdministration.DimAssessmentAdministrationId
JOIN RDS.DimAssessmentRegistrations AssessmentRegistration
	ON Fact.AssessmentRegistrationId = AssessmentRegistration.DimAssessmentRegistrationId
JOIN RDS.DimAssessmentParticipationSessions AssessmentParticipationSession
	ON Fact.AssessmentParticipationSessionId = AssessmentParticipationSession.DimAssessmentParticipationSessionId
JOIN RDS.DimAssessmentResults AssessmentResult
	ON Fact.AssessmentResultId = AssessmentResult.DimAssessmentResultId
JOIN RDS.DimAssessmentPerformanceLevels AssessmentPerformanceLevel
	ON Fact.AssessmentPerformanceLevelId = AssessmentPerformanceLevel.DimAssessmentPerformanceLevelId
JOIN RDS.DimCompetencyDefinitions CompetencyDefinition
	ON Fact.CompetencyDefinitionId = CompetencyDefinition.DimCompetencyDefinitionId
JOIN RDS.DimCteStatuses CteStatus
	ON Fact.CteStatusId = CteStatus.DimCteStatusId
JOIN RDS.DimGradeLevels GradeLevelWhenAssessed
	ON Fact.GradeLevelWhenAssessedId = GradeLevelWhenAssessed.DimGradeLevelId
JOIN RDS.DimIdeaStatuses IdeaStatus
	ON Fact.IdeaStatusId = IdeaStatus.DimIdeaStatusId
JOIN RDS.DimK12Demographics K12Demographic
	ON Fact.K12DemographicId = K12Demographic.DimK12DemographicId
JOIN RDS.DimK12StudentStatuses K12StudentStatus
	ON Fact.K12StudentStatusId = K12StudentStatus.DimK12StudentstatusId
JOIN RDS.DimNOrDStatuses NOrDStatus
	ON Fact.NOrDStatusId = NOrDStatus.DimNOrDStatusId
JOIN RDS.DimTitleIIIStatuses TitleIIIStatus
	ON Fact.TitleIIIStatusId = TitleIIIStatus.DimTitleIIIStatusId
GO
