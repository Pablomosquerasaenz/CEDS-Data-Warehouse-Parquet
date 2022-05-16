/****** Object:  View [RDS].[vwFactK12StudentCountsParquet]    Script Date: 5/10/2022 2:48:07 PM ******/

CREATE OR ALTER VIEW [RDS].[vwFactK12StudentCountsParquet] AS 
SELECT fact.FactK12StudentCountId
	, SchoolYear.SchoolYear AS SchoolYear_SchoolYear
	, SchoolYear.SessionBeginDate AS SchoolYear_SessionBeginDate
	, SchoolYear.SessionEndDate AS SchoolYear_SessionEndDate
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
	, Age.AgeCode AS Age_AgeCode
	, Age.AgeDescription AS Age_AgeDescription
	, Age.AgeEdFactsCode AS Age_AgeEdFactsCode
	, Age.AgeValue AS Age_AgeValue
	, Attendance.AbsenteeismCode AS Attendance_AbsenteeismCode
	, Attendance.AbsenteeismDescription AS Attendance_AbsenteeismDescription
	, Attendance.AbsenteeismEdFactsCode AS Attendance_AbsenteeismEdFactsCode
	, CohortStatus.CohortStatusCode AS CohortStatus_CohortStatusCode
	, CohortStatus.CohortStatusDescription AS CohortStatus_CohortStatusDescription
	, CohortStatus.CohortStatusEdFactsCode AS CohortStatus_CohortStatusEdFactsCode
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
	, EnglishLearnerStatus.EnglishLearnerStatusCode AS EnglishLearnerStatus_EnglishLearnerStatusCode
	, EnglishLearnerStatus.EnglishLearnerStatusDescription AS EnglishLearnerStatus_EnglishLearnerStatusDescription
	, EnglishLearnerStatus.EnglishLearnerStatusEdFactsCode AS EnglishLearnerStatus_EnglishLearnerStatusEdFactsCode
	, EnglishLearnerStatus.PerkinsLEPStatusCode AS EnglishLearnerStatus_PerkinsLEPStatusCode
	, EnglishLearnerStatus.PerkinsLEPStatusDescription AS EnglishLearnerStatus_PerkinsLEPStatusDescription
	, EnglishLearnerStatus.PerkinsLEPStatusEdfactsCode AS EnglishLearnerStatus_PerkinsLEPStatusEdfactsCode
	, EnglishLearnerStatus.TitleIIIAccountabilityProgressStatusCode AS EnglishLearnerStatus_TitleIIIAccountabilityProgressStatusCode
	, EnglishLearnerStatus.TitleIIIAccountabilityProgressStatusDescription AS EnglishLearnerStatus_TitleIIIAccountabilityProgressStatusDescription
	, EnglishLearnerStatus.TitleIIIAccountabilityProgressStatusEdFactsCode AS EnglishLearnerStatus_TitleIIIAccountabilityProgressStatusEdFactsCode
	, EnglishLearnerStatus.TitleIIILanguageInstructionProgramTypeCode AS EnglishLearnerStatus_TitleIIILanguageInstructionProgramTypeCode
	, EnglishLearnerStatus.TitleIIILanguageInstructionProgramTypeDescription AS EnglishLearnerStatus_TitleIIILanguageInstructionProgramTypeDescription
	, EnglishLearnerStatus.TitleIIILanguageInstructionProgramTypeEdFactsCode AS EnglishLearnerStatus_TitleIIILanguageInstructionProgramTypeEdFactsCode
	, GradeLevel.GradeLevelCode AS GradeLevel_GradeLevelCode
	, GradeLevel.GradeLevelDescription AS GradeLevel_GradeLevelDescription
	, GradeLevel.GradeLevelEdFactsCode AS GradeLevel_GradeLevelEdFactsCode
	, HomelessnessStatus.HomelessnessStatusCode AS HomelessnessStatus_HomelessnessStatusCode
	, HomelessnessStatus.HomelessnessStatusDescription AS HomelessnessStatus_HomelessnessStatusDescription
	, HomelessnessStatus.HomelessnessStatusEdFactsCode AS HomelessnessStatus_HomelessnessStatusEdFactsCode
	, HomelessnessStatus.HomelessPrimaryNighttimeResidenceCode AS HomelessnessStatus_HomelessPrimaryNighttimeResidenceCode
	, HomelessnessStatus.HomelessPrimaryNighttimeResidenceDescription AS HomelessnessStatus_HomelessPrimaryNighttimeResidenceDescription
	, HomelessnessStatus.HomelessPrimaryNighttimeResidenceEdfactsCode AS HomelessnessStatus_HomelessPrimaryNighttimeResidenceEdfactsCode
	, HomelessnessStatus.HomelessServicedIndicatorCode AS HomelessnessStatus_HomelessServicedIndicatorCode
	, HomelessnessStatus.HomelessServicedIndicatorDescription AS HomelessnessStatus_HomelessServicedIndicatorDescription
	, HomelessnessStatus.HomelessUnaccompaniedYouthStatusCode AS HomelessnessStatus_HomelessUnaccompaniedYouthStatusCode
	, HomelessnessStatus.HomelessUnaccompaniedYouthStatusDescription AS HomelessnessStatus_HomelessUnaccompaniedYouthStatusDescription
	, HomelessnessStatus.HomelessUnaccompaniedYouthStatusEdfactsCode AS HomelessnessStatus_HomelessUnaccompaniedYouthStatusEdfactsCode
	, EconomicallyDisadvantagedStatus.EconomicDisadvantageStatusCode AS EconomicallyDisadvantagedStatus_EconomicDisadvantageStatusCode
	, EconomicallyDisadvantagedStatus.EconomicDisadvantageStatusDescription AS EconomicallyDisadvantagedStatus_EconomicDisadvantageStatusDescription
	, EconomicallyDisadvantagedStatus.EconomicDisadvantageStatusEdFactsCode AS EconomicallyDisadvantagedStatus_EconomicDisadvantageStatusEdFactsCode
	, EconomicallyDisadvantagedStatus.EligibilityStatusForSchoolFoodServiceProgramsCode AS EconomicallyDisadvantagedStatus_EligibilityStatusForSchoolFoodServiceProgramsCode
	, EconomicallyDisadvantagedStatus.EligibilityStatusForSchoolFoodServiceProgramsDescription AS EconomicallyDisadvantagedStatus_EligibilityStatusForSchoolFoodServiceProgramsDescription
	, EconomicallyDisadvantagedStatus.EligibilityStatusForSchoolFoodServiceProgramsEdFactsCode AS EconomicallyDisadvantagedStatus_EligibilityStatusForSchoolFoodServiceProgramsEdFactsCode
	, EconomicallyDisadvantagedStatus.NationalSchoolLunchProgramDirectCertificationIndicatorCode AS EconomicallyDisadvantagedStatus_NationalSchoolLunchProgramDirectCertificationIndicatorCode
	, EconomicallyDisadvantagedStatus.NationalSchoolLunchProgramDirectCertificationIndicatorDescription AS EconomicallyDisadvantagedStatus_NationalSchoolLunchProgramDirectCertificationIndicatorDescription
	, FosterCareStatus.ProgramParticipationFosterCareCode AS FosterCareStatus_ProgramParticipationFosterCareCode
	, FosterCareStatus.ProgramParticipationFosterCareDescription AS FosterCareStatus_ProgramParticipationFosterCareDescription
	, FosterCareStatus.ProgramParticipationFosterCareEdFactsCode AS FosterCareStatus_ProgramParticipationFosterCareEdFactsCode
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
	, ImmigrantStatus.TitleIIIImmigrantStatusCode AS ImmigrantStatus_TitleIIIImmigrantStatusCode
	, ImmigrantStatus.TitleIIIImmigrantStatusDescription AS ImmigrantStatus_TitleIIIImmigrantStatusDescription
	, ImmigrantStatus.TitleIIIImmigrantStatusEdFactsCode AS ImmigrantStatus_TitleIIIImmigrantStatusEdFactsCode
	, ImmigrantStatus.TitleIIIImmigrantParticipationStatusCode AS ImmigrantStatus_TitleIIIImmigrantParticipationStatusCode
	, ImmigrantStatus.TitleIIIImmigrantParticipationStatusDescription AS ImmigrantStatus_TitleIIIImmigrantParticipationStatusDescription
	, ImmigrantStatus.TitleIIIImmigrantParticipationStatusEdFactsCode AS ImmigrantStatus_TitleIIIImmigrantParticipationStatusEdFactsCode
	, K12Demographic.SexCode AS K12Demographic_SexCode
	, K12Demographic.SexDescription AS K12Demographic_SexDescription
	, K12Demographic.SexEdFactsCode AS K12Demographic_SexEdFactsCode
	, K12EnrollmentStatus.EnrollmentStatusCode AS K12EnrollmentStatus_EnrollmentStatusCode
	, K12EnrollmentStatus.EnrollmentStatusDescription AS K12EnrollmentStatus_EnrollmentStatusDescription
	, K12EnrollmentStatus.EntryTypeCode AS K12EnrollmentStatus_EntryTypeCode
	, K12EnrollmentStatus.EntryTypeDescription AS K12EnrollmentStatus_EntryTypeDescription
	, K12EnrollmentStatus.ExitOrWithdrawalTypeCode AS K12EnrollmentStatus_ExitOrWithdrawalTypeCode
	, K12EnrollmentStatus.ExitOrWithdrawalTypeDescription AS K12EnrollmentStatus_ExitOrWithdrawalTypeDescription
	, K12EnrollmentStatus.PostSecondaryEnrollmentStatusCode AS K12EnrollmentStatus_PostSecondaryEnrollmentStatusCode
	, K12EnrollmentStatus.PostSecondaryEnrollmentStatusDescription AS K12EnrollmentStatus_PostSecondaryEnrollmentStatusDescription
	, K12EnrollmentStatus.PostSecondaryEnrollmentStatusEdFactsCode AS K12EnrollmentStatus_PostSecondaryEnrollmentStatusEdFactsCode
	, K12EnrollmentStatus.EdFactsAcademicOrCareerAndTechnicalOutcomeTypeCode AS K12EnrollmentStatus_EdFactsAcademicOrCareerAndTechnicalOutcomeTypeCode
	, K12EnrollmentStatus.EdFactsAcademicOrCareerAndTechnicalOutcomeTypeDescription AS K12EnrollmentStatus_EdFactsAcademicOrCareerAndTechnicalOutcomeTypeDescription
	, K12EnrollmentStatus.EdFactsAcademicOrCareerAndTechnicalOutcomeTypeEdFactsCode AS K12EnrollmentStatus_EdFactsAcademicOrCareerAndTechnicalOutcomeTypeEdFactsCode
	, K12EnrollmentStatus.EdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeCode AS K12EnrollmentStatus_EdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeCode
	, K12EnrollmentStatus.EdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeDescription AS K12EnrollmentStatus_EdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeDescription
	, K12EnrollmentStatus.EdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeEdFactsCode AS K12EnrollmentStatus_EdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeEdFactsCode
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
	, Language.Iso6392LanguageCode AS Language_Iso6392LanguageCode
	, Language.Iso6392LanguageDescription AS Language_Iso6392LanguageDescription
	, Language.Iso6392LanguageEdFactsCode AS Language_Iso6392LanguageEdFactsCode
	, Language.Iso6393LanguageCode AS Language_Iso6393LanguageCode
	, Language.Iso6393LanguageDescription AS Language_Iso6393LanguageDescription
	, MigrantStatus.MigrantStatusCode AS MigrantStatus_MigrantStatusCode
	, MigrantStatus.MigrantStatusDescription AS MigrantStatus_MigrantStatusDescription
	, MigrantStatus.MigrantStatusEdFactsCode AS MigrantStatus_MigrantStatusEdFactsCode
	, MigrantStatus.MigrantEducationProgramEnrollmentTypeCode AS MigrantStatus_MigrantEducationProgramEnrollmentTypeCode
	, MigrantStatus.MigrantEducationProgramEnrollmentTypeDescription AS MigrantStatus_MigrantEducationProgramEnrollmentTypeDescription
	, MigrantStatus.MigrantEducationProgramEnrollmentTypeEdFactsCode AS MigrantStatus_MigrantEducationProgramEnrollmentTypeEdFactsCode
	, MigrantStatus.ContinuationOfServicesReasonCode AS MigrantStatus_ContinuationOfServicesReasonCode
	, MigrantStatus.ContinuationOfServicesReasonDescription AS MigrantStatus_ContinuationOfServicesReasonDescription
	, MigrantStatus.ContinuationOfServicesReasonEdFactsCode AS MigrantStatus_ContinuationOfServicesReasonEdFactsCode
	, MigrantStatus.MigrantEducationProgramServicesTypeCode AS MigrantStatus_MigrantEducationProgramServicesTypeCode
	, MigrantStatus.MigrantEducationProgramServicesTypeDescription AS MigrantStatus_MigrantEducationProgramServicesTypeDescription
	, MigrantStatus.MigrantEducationProgramServicesTypeEdFactsCode AS MigrantStatus_MigrantEducationProgramServicesTypeEdFactsCode
	, MigrantStatus.MigrantPrioritizedForServicesCode AS MigrantStatus_MigrantPrioritizedForServicesCode
	, MigrantStatus.MigrantPrioritizedForServicesDescription AS MigrantStatus_MigrantPrioritizedForServicesDescription
	, MigrantStatus.MigrantPrioritizedForServicesEdFactsCode AS MigrantStatus_MigrantPrioritizedForServicesEdFactsCode
	, NOrDStatus.LongTermStatusCode AS NOrDStatus_LongTermStatusCode
	, NOrDStatus.LongTermStatusDescription AS NOrDStatus_LongTermStatusDescription
	, NOrDStatus.LongTermStatusEdFactsCode AS NOrDStatus_LongTermStatusEdFactsCode
	, NOrDStatus.NeglectedOrDelinquentProgramTypeCode AS NOrDStatus_NeglectedOrDelinquentProgramTypeCode
	, NOrDStatus.NeglectedOrDelinquentProgramTypeDescription AS NOrDStatus_NeglectedOrDelinquentProgramTypeDescription
	, NOrDStatus.NeglectedOrDelinquentProgramTypeEdFactsCode AS NOrDStatus_NeglectedOrDelinquentProgramTypeEdFactsCode
	, PrimaryDisabilityType.IdeaDisabilityTypeCode AS PrimaryDisabilityType_IdeaDisabilityTypeCode
	, PrimaryDisabilityType.IdeaDisabilityTypeDescription AS PrimaryDisabilityType_IdeaDisabilityTypeDescription
	, PrimaryDisabilityType.IdeaDisabilityTypeEdFactsCode AS PrimaryDisabilityType_IdeaDisabilityTypeEdFactsCode
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
	, SpecialEducationServicesExitDate.DateValue AS SpecialEducationServicesExitDate_DateValue
	, SpecialEducationServicesExitDate.Day AS SpecialEducationServicesExitDate_Day
	, SpecialEducationServicesExitDate.DayOfWeek AS SpecialEducationServicesExitDate_DayOfWeek
	, SpecialEducationServicesExitDate.DayOfYear AS SpecialEducationServicesExitDate_DayOfYear
	, SpecialEducationServicesExitDate.Month AS SpecialEducationServicesExitDate_Month
	, SpecialEducationServicesExitDate.MonthName AS SpecialEducationServicesExitDate_MonthName
	, SpecialEducationServicesExitDate.SubmissionYear AS SpecialEducationServicesExitDate_SubmissionYear
	, SpecialEducationServicesExitDate.Year AS SpecialEducationServicesExitDate_Year
	, TitleIStatus.TitleIInstructionalServicesCode AS TitleIStatus_TitleIInstructionalServicesCode
	, TitleIStatus.TitleIInstructionalServicesDescription AS TitleIStatus_TitleIInstructionalServicesDescription
	, TitleIStatus.TitleIInstructionalServicesEdFactsCode AS TitleIStatus_TitleIInstructionalServicesEdFactsCode
	, TitleIStatus.TitleIProgramTypeCode AS TitleIStatus_TitleIProgramTypeCode
	, TitleIStatus.TitleIProgramTypeDescription AS TitleIStatus_TitleIProgramTypeDescription
	, TitleIStatus.TitleIProgramTypeEdFactsCode AS TitleIStatus_TitleIProgramTypeEdFactsCode
	, TitleIStatus.TitleISchoolStatusCode AS TitleIStatus_TitleISchoolStatusCode
	, TitleIStatus.TitleISchoolStatusDescription AS TitleIStatus_TitleISchoolStatusDescription
	, TitleIStatus.TitleISchoolStatusEdFactsCode AS TitleIStatus_TitleISchoolStatusEdFactsCode
	, TitleIStatus.TitleISupportServicesCode AS TitleIStatus_TitleISupportServicesCode
	, TitleIStatus.TitleISupportServicesDescription AS TitleIStatus_TitleISupportServicesDescription
	, TitleIStatus.TitleISupportServicesEdFactsCode AS TitleIStatus_TitleISupportServicesEdFactsCode
	, TitleIIIStatus.TitleIIIProgramParticipationCode AS TitleIIIStatus_TitleIIIProgramParticipationCode
	, TitleIIIStatus.TitleIIIProgramParticipationDescription AS TitleIIIStatus_TitleIIIProgramParticipationDescription
	, TitleIIIStatus.TitleIIIProgramParticipationEdFactsCode AS TitleIIIStatus_TitleIIIProgramParticipationEdFactsCode
	, TitleIIIStatus.FormerEnglishLearnerYearStatusCode AS TitleIIIStatus_FormerEnglishLearnerYearStatusCode
	, TitleIIIStatus.FormerEnglishLearnerYearStatusDescription AS TitleIIIStatus_FormerEnglishLearnerYearStatusDescription
	, TitleIIIStatus.FormerEnglishLearnerYearStatusEdFactsCode AS TitleIIIStatus_FormerEnglishLearnerYearStatusEdFactsCode
	, TitleIIIStatus.ProficiencyStatusCode AS TitleIIIStatus_ProficiencyStatusCode
	, TitleIIIStatus.ProficiencyStatusDescription AS TitleIIIStatus_ProficiencyStatusDescription
	, TitleIIIStatus.ProficiencyStatusEdFactsCode AS TitleIIIStatus_ProficiencyStatusEdFactsCode
	, fact.StudentCount
FROM RDS.FactK12StudentCounts fact
JOIN RDS.DimSchoolYears SchoolYear
	ON Fact.SchoolYearId = SchoolYear.DimSchoolYearId
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
JOIN RDS.DimAges Age
	ON Fact.AgeId = Age.DimAgeId
JOIN RDS.DimAttendance Attendance
	ON Fact.AttendanceId = Attendance.DimAttendanceId
JOIN RDS.DimCohortStatuses CohortStatus
	ON Fact.CohortStatusId = CohortStatus.DimCohortStatusId
JOIN RDS.DimCteStatuses CteStatus
	ON Fact.CteStatusId = CteStatus.DimCteStatusId
JOIN RDS.DimEnglishLearnerStatuses EnglishLearnerStatus
	ON Fact.EnglishLearnerStatusId = EnglishLearnerStatus.DimEnglishLearnerStatusId
JOIN RDS.DimGradeLevels GradeLevel
	ON Fact.GradeLevelId = GradeLevel.DimGradeLevelId
JOIN RDS.DimHomelessnessStatuses HomelessnessStatus
	ON Fact.HomelessnessStatusId = HomelessnessStatus.DimHomelessnessStatusId
JOIN RDS.DimEconomicallyDisadvantagedStatuses EconomicallyDisadvantagedStatus
	ON Fact.EconomicallyDisadvantagedStatusId = EconomicallyDisadvantagedStatus.DimEconomicallyDisadvantagedStatusId
JOIN RDS.DimFosterCareStatuses FosterCareStatus
	ON Fact.FosterCareStatusId = FosterCareStatus.DimFosterCareStatusId
JOIN RDS.DimIdeaStatuses IdeaStatus
	ON Fact.IdeaStatusId = IdeaStatus.DimIdeaStatusId
JOIN RDS.DimImmigrantStatuses ImmigrantStatus
	ON Fact.ImmigrantStatusId = ImmigrantStatus.DimImmigrantStatusId
JOIN RDS.DimK12Demographics K12Demographic
	ON Fact.K12DemographicId = K12Demographic.DimK12DemographicId
JOIN RDS.DimK12EnrollmentStatuses K12EnrollmentStatus
	ON Fact.K12EnrollmentStatusId = K12EnrollmentStatus.DimK12EnrollmentStatusId
JOIN RDS.DimK12StudentStatuses K12StudentStatus
	ON Fact.K12StudentStatusId = K12StudentStatus.DimK12StudentstatusId
JOIN RDS.DimLanguages Language
	ON Fact.LanguageId = Language.DimLanguageId
JOIN RDS.DimMigrantStatuses MigrantStatus
	ON Fact.MigrantStatusId = MigrantStatus.DimMigrantStatusId
JOIN RDS.DimNOrDStatuses NOrDStatus
	ON Fact.NOrDStatusId = NOrDStatus.DimNOrDStatusId
JOIN RDS.DimIdeaDisabilityTypes PrimaryDisabilityType
	ON Fact.PrimaryDisabilityTypeId = PrimaryDisabilityType.DimIdeaDisabilityTypeId
JOIN RDS.DimRaces Race
	ON Fact.RaceId = Race.DimRaceId
JOIN RDS.DimDates SpecialEducationServicesExitDate
	ON Fact.SpecialEducationServicesExitDateId = SpecialEducationServicesExitDate.DimDateId
JOIN RDS.DimTitleIStatuses TitleIStatus
	ON Fact.TitleIStatusId = TitleIStatus.DimTitleIStatusId
JOIN RDS.DimTitleIIIStatuses TitleIIIStatus
	ON Fact.TitleIIIStatusId = TitleIIIStatus.DimTitleIIIStatusId
GO
