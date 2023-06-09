/****** Object:  View [RDS].[vwFactAeStudentEnrollmentsParquet]    Script Date: 5/10/2022 2:48:07 PM ******/

CREATE OR ALTER VIEW [RDS].[vwFactAeStudentEnrollmentsParquet] AS 
SELECT fact.FactAeStudentEnrollmentId
	, fact.ProgramYearId
	, DataCollection.SourceSystemDataCollectionIdentifier AS DataCollection_SourceSystemDataCollectionIdentifier
	, DataCollection.SourceSystemName AS DataCollection_SourceSystemName
	, DataCollection.DataCollectionName AS DataCollection_DataCollectionName
	, DataCollection.DataCollectionDescription AS DataCollection_DataCollectionDescription
	, DataCollection.DataCollectionOpenDate AS DataCollection_DataCollectionOpenDate
	, DataCollection.DataCollectionCloseDate AS DataCollection_DataCollectionCloseDate
	, DataCollection.DataCollectionAcademicSchoolYear AS DataCollection_DataCollectionAcademicSchoolYear
	, DataCollection.DataCollectionSchoolYear AS DataCollection_DataCollectionSchoolYear
	, AeStudent.FirstName AS AeStudent_FirstName
	, AeStudent.MiddleName AS AeStudent_MiddleName
	, AeStudent.LastOrSurname AS AeStudent_LastOrSurname
	, AeStudent.PersonalTitleOrPrefix AS AeStudent_PersonalTitleOrPrefix
	, AeStudent.BirthDate AS AeStudent_BirthDate
	, AeStudent.PositionTitle AS AeStudent_PositionTitle
	, AeStudent.ElectronicMailAddressHome AS AeStudent_ElectronicMailAddressHome
	, AeStudent.ElectronicMailAddressWork AS AeStudent_ElectronicMailAddressWork
	, AeStudent.ElectronicMailAddressOrganizational AS AeStudent_ElectronicMailAddressOrganizational
	, AeStudent.TelephoneNumberHome AS AeStudent_TelephoneNumberHome
	, AeStudent.TelephoneNumberWork AS AeStudent_TelephoneNumberWork
	, AeStudent.TelephoneNumberMobile AS AeStudent_TelephoneNumberMobile
	, AeStudent.TelephoneNumberFax AS AeStudent_TelephoneNumberFax
	, AeStudent.EarlyLearningChidIdentifierState AS AeStudent_EarlyLearningChidIdentifierState
	, AeStudent.K12StudentIdentifierState AS AeStudent_K12StudentIdentifierState
	, AeStudent.K12StudentIdentifierDistrict AS AeStudent_K12StudentIdentifierDistrict
	, AeStudent.K12StudentIdentifierNationalMigrant AS AeStudent_K12StudentIdentifierNationalMigrant
	, AeStudent.PsStudentIdentifierState AS AeStudent_PsStudentIdentifierState
	, AeStudent.AeStudentIdentifierState AS AeStudent_AeStudentIdentifierState
	, AeStudent.WorkforcePersonIdentifierState AS AeStudent_WorkforcePersonIdentifierState
	, AeStudent.EarlyLearningStaffMemberIdentifierState AS AeStudent_EarlyLearningStaffMemberIdentifierState
	, AeStudent.K12StaffMemberIdentiferState AS AeStudent_K12StaffMemberIdentiferState
	, AeStudent.K12StaffMemberIdentiferDistrict AS AeStudent_K12StaffMemberIdentiferDistrict
	, AeStudent.PsStaffMemberIdentiferState AS AeStudent_PsStaffMemberIdentiferState
	, AeStudent.PersonIdentifierDriversLicense AS AeStudent_PersonIdentifierDriversLicense
	, AeStudent.IsActiveEarlyLearningChild AS AeStudent_IsActiveEarlyLearningChild
	, AeStudent.IsActiveK12Student AS AeStudent_IsActiveK12Student
	, AeStudent.IsActivePsStudent AS AeStudent_IsActivePsStudent
	, AeStudent.IsActiveAeStudent AS AeStudent_IsActiveAeStudent
	, AeStudent.IsActiveWorkforcePerson AS AeStudent_IsActiveWorkforcePerson
	, AeStudent.IsActiveEarlyLearningStaffMember AS AeStudent_IsActiveEarlyLearningStaffMember
	, AeStudent.IsActiveK12StaffMember AS AeStudent_IsActiveK12StaffMember
	, AeStudent.IsActivePsStaffMember AS AeStudent_IsActivePsStaffMember
	, AeStudent.RecordStartDateTime AS AeStudent_RecordStartDateTime
	, AeStudent.RecordEndDateTime AS AeStudent_RecordEndDateTime
	, AeProvider.AeServiceProviderIdentifierSea AS AeProvider_AeServiceProviderIdentifierSea
	, AeProvider.NameOfInstitution AS AeProvider_NameOfInstitution
	, AeProvider.ShortNameOfInstitution AS AeProvider_ShortNameOfInstitution
	, AeProvider.AdultEducationProviderTypeCode AS AeProvider_AdultEducationProviderTypeCode
	, AeProvider.AdultEducationProviderTypeDescription AS AeProvider_AdultEducationProviderTypeDescription
	, AeProvider.LevelOfInstitutionCode AS AeProvider_LevelOfInstitutionCode
	, AeProvider.LevelOfInstitutionDescription AS AeProvider_LevelOfInstitutionDescription
	, AeProvider.TelephoneNumber AS AeProvider_TelephoneNumber
	, AeProvider.WebSiteAddress AS AeProvider_WebSiteAddress
	, AeProvider.MailingAddressStreetNumberAndName AS AeProvider_MailingAddressStreetNumberAndName
	, AeProvider.MailingAddressApartmentRoomOrSuiteNumber AS AeProvider_MailingAddressApartmentRoomOrSuiteNumber
	, AeProvider.MailingAddressCity AS AeProvider_MailingAddressCity
	, AeProvider.MailingAddressStateAbbreviation AS AeProvider_MailingAddressStateAbbreviation
	, AeProvider.MailingAddressPostalCode AS AeProvider_MailingAddressPostalCode
	, AeProvider.MailingAddressCountyAnsiCode AS AeProvider_MailingAddressCountyAnsiCode
	, AeProvider.PhysicalAddressStreetNumberAndName AS AeProvider_PhysicalAddressStreetNumberAndName
	, AeProvider.PhysicalAddressApartmentRoomOrSuiteNumber AS AeProvider_PhysicalAddressApartmentRoomOrSuiteNumber
	, AeProvider.PhysicalAddressCity AS AeProvider_PhysicalAddressCity
	, AeProvider.PhysicalAddressStateAbbreviation AS AeProvider_PhysicalAddressStateAbbreviation
	, AeProvider.PhysicalAddressPostalCode AS AeProvider_PhysicalAddressPostalCode
	, AeProvider.PhysicalAddressCountyAnsiCode AS AeProvider_PhysicalAddressCountyAnsiCode
	, AeProvider.Latitude AS AeProvider_Latitude
	, AeProvider.Longitude AS AeProvider_Longitude
	, AeProvider.RecordStartDateTime AS AeProvider_RecordStartDateTime
	, AeProvider.RecordEndDateTime AS AeProvider_RecordEndDateTime
	, AeProgramType.AeInstructionalProgramTypeCode AS AeProgramType_AeInstructionalProgramTypeCode
	, AeProgramType.AeInstructionalProgramTypeDescription AS AeProgramType_AeInstructionalProgramTypeDescription
	, AeProgramType.AeSpecialProgramTypeCode AS AeProgramType_AeSpecialProgramTypeCode
	, AeProgramType.AeSpecialProgramTypeDescription AS AeProgramType_AeSpecialProgramTypeDescription
	, AeProgramType.WioaCareerServicesCode AS AeProgramType_WioaCareerServicesCode
	, AeProgramType.WioaCareerServicesDescription AS AeProgramType_WioaCareerServicesDescription
	, AeProgramType.WioaTrainingServicesCode AS AeProgramType_WioaTrainingServicesCode
	, AeProgramType.WioaTrainingServicesDescription AS AeProgramType_WioaTrainingServicesDescription
	, AeStudentStatus.AeFunctioningLevelAtIntakeCode AS AeStudentStatus_AeFunctioningLevelAtIntakeCode
	, AeStudentStatus.AeFunctioningLevelAtIntakeDescription AS AeStudentStatus_AeFunctioningLevelAtIntakeDescription
	, AeStudentStatus.AeFunctioningLevelAtPosttestCode AS AeStudentStatus_AeFunctioningLevelAtPosttestCode
	, AeStudentStatus.AeFunctioningLevelAtPosttestDescription AS AeStudentStatus_AeFunctioningLevelAtPosttestDescription
	, AeStudentStatus.AePostsecondaryTransitionActionCode AS AeStudentStatus_AePostsecondaryTransitionActionCode
	, AeStudentStatus.AePostsecondaryTransitionActionDescription AS AeStudentStatus_AePostsecondaryTransitionActionDescription
	, AeStudentStatus.EmployedWhileEnrolledCode AS AeStudentStatus_EmployedWhileEnrolledCode
	, AeStudentStatus.EmployedWhileEnrolledDescription AS AeStudentStatus_EmployedWhileEnrolledDescription
	, AeStudentStatus.EmployedAfterExitCode AS AeStudentStatus_EmployedAfterExitCode
	, AeStudentStatus.EmployedAfterExitDescription AS AeStudentStatus_EmployedAfterExitDescription
	, AeStudentStatus.AdultEducationCredentialAttainmentPostsecondaryEnrollmentIndicatorCode AS AeStudentStatus_AdultEducationCredentialAttainmentPostsecondaryEnrollmentIndicatorCode
	, AeStudentStatus.AdultEducationCredentialAttainmentPostsecondaryEnrollmentIndicatorDescription AS AeStudentStatus_AdultEducationCredentialAttainmentPostsecondaryEnrollmentIndicatorDescription
	, AeStudentStatus.AdultEducationCredentialAttainmentEmployedIndicatorCode AS AeStudentStatus_AdultEducationCredentialAttainmentEmployedIndicatorCode
	, AeStudentStatus.AdultEducationCredentialAttainmentEmployedIndicatorDescription AS AeStudentStatus_AdultEducationCredentialAttainmentEmployedIndicatorDescription
	, AeStudentStatus.AdultEducationCredentialAttainmentPostsecondaryCredentialIndicatorCode AS AeStudentStatus_AdultEducationCredentialAttainmentPostsecondaryCredentialIndicatorCode
	, AeStudentStatus.AdultEducationCredentialAttainmentPostsecondaryCredentialIndicatorDescription AS AeStudentStatus_AdultEducationCredentialAttainmentPostsecondaryCredentialIndicatorDescription
	, ApplicationDate.DateValue AS ApplicationDate_DateValue
	, ApplicationDate.Day AS ApplicationDate_Day
	, ApplicationDate.DayOfWeek AS ApplicationDate_DayOfWeek
	, ApplicationDate.DayOfYear AS ApplicationDate_DayOfYear
	, ApplicationDate.Month AS ApplicationDate_Month
	, ApplicationDate.MonthName AS ApplicationDate_MonthName
	, ApplicationDate.SubmissionYear AS ApplicationDate_SubmissionYear
	, ApplicationDate.Year AS ApplicationDate_Year
	, EnrollmentEntryDate.DateValue AS EnrollmentEntryDate_DateValue
	, EnrollmentEntryDate.Day AS EnrollmentEntryDate_Day
	, EnrollmentEntryDate.DayOfWeek AS EnrollmentEntryDate_DayOfWeek
	, EnrollmentEntryDate.DayOfYear AS EnrollmentEntryDate_DayOfYear
	, EnrollmentEntryDate.Month AS EnrollmentEntryDate_Month
	, EnrollmentEntryDate.MonthName AS EnrollmentEntryDate_MonthName
	, EnrollmentEntryDate.SubmissionYear AS EnrollmentEntryDate_SubmissionYear
	, EnrollmentEntryDate.Year AS EnrollmentEntryDate_Year
	, EnrollmentExitDate.DateValue AS EnrollmentExitDate_DateValue
	, EnrollmentExitDate.Day AS EnrollmentExitDate_Day
	, EnrollmentExitDate.DayOfWeek AS EnrollmentExitDate_DayOfWeek
	, EnrollmentExitDate.DayOfYear AS EnrollmentExitDate_DayOfYear
	, EnrollmentExitDate.Month AS EnrollmentExitDate_Month
	, EnrollmentExitDate.MonthName AS EnrollmentExitDate_MonthName
	, EnrollmentExitDate.SubmissionYear AS EnrollmentExitDate_SubmissionYear
	, EnrollmentExitDate.Year AS EnrollmentExitDate_Year
	, AePostsecondaryTransitionDate.DateValue AS AePostsecondaryTransitionDate_DateValue
	, AePostsecondaryTransitionDate.Day AS AePostsecondaryTransitionDate_Day
	, AePostsecondaryTransitionDate.DayOfWeek AS AePostsecondaryTransitionDate_DayOfWeek
	, AePostsecondaryTransitionDate.DayOfYear AS AePostsecondaryTransitionDate_DayOfYear
	, AePostsecondaryTransitionDate.Month AS AePostsecondaryTransitionDate_Month
	, AePostsecondaryTransitionDate.MonthName AS AePostsecondaryTransitionDate_MonthName
	, AePostsecondaryTransitionDate.SubmissionYear AS AePostsecondaryTransitionDate_SubmissionYear
	, AePostsecondaryTransitionDate.Year AS AePostsecondaryTransitionDate_Year
	, AeDemographic.EconomicDisadvantageStatusCode AS AeDemographic_EconomicDisadvantageStatusCode
	, AeDemographic.EconomicDisadvantageStatusDescription AS AeDemographic_EconomicDisadvantageStatusDescription
	, AeDemographic.HomelessnessStatusCode AS AeDemographic_HomelessnessStatusCode
	, AeDemographic.HomelessnessStatusDescription AS AeDemographic_HomelessnessStatusDescription
	, AeDemographic.EnglishLearnerStatusCode AS AeDemographic_EnglishLearnerStatusCode
	, AeDemographic.EnglishLearnerStatusDescription AS AeDemographic_EnglishLearnerStatusDescription
	, AeDemographic.MigrantStatusCode AS AeDemographic_MigrantStatusCode
	, AeDemographic.MigrantStatusDescription AS AeDemographic_MigrantStatusDescription
	, AeDemographic.MilitaryConnectedStudentIndicatorCode AS AeDemographic_MilitaryConnectedStudentIndicatorCode
	, AeDemographic.MilitaryConnectedStudentIndicatorDescription AS AeDemographic_MilitaryConnectedStudentIndicatorDescription
	, AeDemographic.HomelessPrimaryNighttimeResidenceCode AS AeDemographic_HomelessPrimaryNighttimeResidenceCode
	, AeDemographic.HomelessPrimaryNighttimeResidenceDescription AS AeDemographic_HomelessPrimaryNighttimeResidenceDescription
	, AeDemographic.HomelessUnaccompaniedYouthStatusCode AS AeDemographic_HomelessUnaccompaniedYouthStatusCode
	, AeDemographic.HomelessUnaccompaniedYouthStatusDescription AS AeDemographic_HomelessUnaccompaniedYouthStatusDescription
	, AeDemographic.SexCode AS AeDemographic_SexCode
	, AeDemographic.SexDescription AS AeDemographic_SexDescription
	, K12DiplomaOrCredentialAwardDate.DateValue AS K12DiplomaOrCredentialAwardDate_DateValue
	, K12DiplomaOrCredentialAwardDate.Day AS K12DiplomaOrCredentialAwardDate_Day
	, K12DiplomaOrCredentialAwardDate.DayOfWeek AS K12DiplomaOrCredentialAwardDate_DayOfWeek
	, K12DiplomaOrCredentialAwardDate.DayOfYear AS K12DiplomaOrCredentialAwardDate_DayOfYear
	, K12DiplomaOrCredentialAwardDate.Month AS K12DiplomaOrCredentialAwardDate_Month
	, K12DiplomaOrCredentialAwardDate.MonthName AS K12DiplomaOrCredentialAwardDate_MonthName
	, K12DiplomaOrCredentialAwardDate.SubmissionYear AS K12DiplomaOrCredentialAwardDate_SubmissionYear
	, K12DiplomaOrCredentialAwardDate.Year AS K12DiplomaOrCredentialAwardDate_Year
	, K12AcademicAwardStatus.HighSchoolDiplomaTypeCode AS K12AcademicAwardStatus_HighSchoolDiplomaTypeCode
	, K12AcademicAwardStatus.HighSchoolDiplomaTypeDescription AS K12AcademicAwardStatus_HighSchoolDiplomaTypeDescription
	, fact.QuarterlyEarningsAfterExitQ1
	, fact.QuarterlyEarningsAfterExitQ2
	, fact.QuarterlyEarningsAfterExitQ3
	, fact.QuarterlyEarningsAfterExitQ4
	, fact.QuarterlyEarningsAfterExitQ5
	, fact.QuarterlyEarningsAfterExitQ6
	, fact.QuarterlyEarningsAfterExitQ7
	, fact.QuarterlyEarningsAfterExitQ8
	, fact.QuarterlyEarningsAfterExitQ9
	, fact.QuarterlyEarningsAfterExitQ10
	, fact.QuarterlyEarningsAfterExitQ11
	, fact.QuarterlyEarningsAfterExitQ12
	, fact.QuarterlyEarningsAfterExitQ13
	, fact.InstructionalActivityHoursCompleted
	, fact.StudentCount
FROM RDS.FactAeStudentEnrollments fact
JOIN RDS.DimDataCollections DataCollection
	ON Fact.DataCollectionId = DataCollection.DimDataCollectionId
JOIN RDS.DimPeople AeStudent
	ON Fact.AeStudentId = AeStudent.DimPersonId
JOIN RDS.DimAeProviders AeProvider
	ON Fact.AeProviderId = AeProvider.DimAeProviderId
JOIN RDS.DimAeProgramTypes AeProgramType
	ON Fact.AeProgramTypeId = AeProgramType.DimAeProgramTypeId
JOIN RDS.DimAeStudentStatuses AeStudentStatus
	ON Fact.AeStudentStatusId = AeStudentStatus.DimAeStudentStatusId
JOIN RDS.DimDates ApplicationDate
	ON Fact.ApplicationDateId = ApplicationDate.DimDateId
JOIN RDS.DimDates EnrollmentEntryDate
	ON Fact.EnrollmentEntryDateId = EnrollmentEntryDate.DimDateId
JOIN RDS.DimDates EnrollmentExitDate
	ON Fact.EnrollmentExitDateId = EnrollmentExitDate.DimDateId
JOIN RDS.DimDates AePostsecondaryTransitionDate
	ON Fact.AePostsecondaryTransitionDateId = AePostsecondaryTransitionDate.DimDateId
JOIN RDS.DimAeDemographics AeDemographic
	ON Fact.AeDemographicId = AeDemographic.DimAeDemographicId
JOIN RDS.DimDates K12DiplomaOrCredentialAwardDate
	ON Fact.K12DiplomaOrCredentialAwardDateId = K12DiplomaOrCredentialAwardDate.DimDateId
JOIN RDS.DimK12AcademicAwardStatuses K12AcademicAwardStatus
	ON Fact.K12AcademicAwardStatusId = K12AcademicAwardStatus.DimK12AcademicAwardStatusId
GO
