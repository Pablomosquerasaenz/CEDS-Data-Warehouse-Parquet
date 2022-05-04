USE [CEDS-Data-Warehouse-V9-2-0-0]
GO
/****** Object:  View [dbo].[vwFactPsStudentAcademicAwardsParquet]    Script Date: 5/2/2022 3:48:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   VIEW [dbo].[vwFactPsStudentAcademicAwardsParquet] AS SELECT fact.FactPsStudentAcademicAwardId
	, PsInstitution.NameOfInstitution AS PsInstitution_NameOfInstitution
	, PsInstitution.ShortNameOfInstitution AS PsInstitution_ShortNameOfInstitution
	, PsInstitution.IPEDSIdentifier AS PsInstitution_IPEDSIdentifier
	, PsInstitution.OrganizationOperationalStatus AS PsInstitution_OrganizationOperationalStatus
	, PsInstitution.OperationalStatusEffectiveDate AS PsInstitution_OperationalStatusEffectiveDate
	, PsInstitution.MailingAddressStreetNameAndNumber AS PsInstitution_MailingAddressStreetNameAndNumber
	, PsInstitution.MailingAddressApartmentRoomOrSuite AS PsInstitution_MailingAddressApartmentRoomOrSuite
	, PsInstitution.MailingAddressCity AS PsInstitution_MailingAddressCity
	, PsInstitution.MailingAddressPostalCode AS PsInstitution_MailingAddressPostalCode
	, PsInstitution.MailingAddressStateAbbreviation AS PsInstitution_MailingAddressStateAbbreviation
	, PsInstitution.MailingAddressCountyAnsiCode AS PsInstitution_MailingAddressCountyAnsiCode
	, PsInstitution.PhysicalAddressStreetNameAndNumber AS PsInstitution_PhysicalAddressStreetNameAndNumber
	, PsInstitution.PhysicalAddressApartmentRoomOrSuite AS PsInstitution_PhysicalAddressApartmentRoomOrSuite
	, PsInstitution.PhysicalAddressCity AS PsInstitution_PhysicalAddressCity
	, PsInstitution.PhysicalAddressPostalCode AS PsInstitution_PhysicalAddressPostalCode
	, PsInstitution.PhysicalAddressStateAbbreviation AS PsInstitution_PhysicalAddressStateAbbreviation
	, PsInstitution.PhysicalAddressCountyAnsiCode AS PsInstitution_PhysicalAddressCountyAnsiCode
	, PsInstitution.TelephoneNumber AS PsInstitution_TelephoneNumber
	, PsInstitution.WebsiteAddress AS PsInstitution_WebsiteAddress
	, PsInstitution.Latitude AS PsInstitution_Latitude
	, PsInstitution.Longitude AS PsInstitution_Longitude
	, PsInstitution.RecordStartDateTime AS PsInstitution_RecordStartDateTime
	, PsInstitution.RecordEndDateTime AS PsInstitution_RecordEndDateTime
	, PsStudent.FirstName AS PsStudent_FirstName
	, PsStudent.MiddleName AS PsStudent_MiddleName
	, PsStudent.LastOrSurname AS PsStudent_LastOrSurname
	, PsStudent.PersonalTitleOrPrefix AS PsStudent_PersonalTitleOrPrefix
	, PsStudent.BirthDate AS PsStudent_BirthDate
	, PsStudent.PositionTitle AS PsStudent_PositionTitle
	, PsStudent.ElectronicMailAddressHome AS PsStudent_ElectronicMailAddressHome
	, PsStudent.ElectronicMailAddressWork AS PsStudent_ElectronicMailAddressWork
	, PsStudent.ElectronicMailAddressOrganizational AS PsStudent_ElectronicMailAddressOrganizational
	, PsStudent.TelephoneNumberHome AS PsStudent_TelephoneNumberHome
	, PsStudent.TelephoneNumberWork AS PsStudent_TelephoneNumberWork
	, PsStudent.TelephoneNumberMobile AS PsStudent_TelephoneNumberMobile
	, PsStudent.TelephoneNumberFax AS PsStudent_TelephoneNumberFax
	, PsStudent.EarlyLearningChidIdentifierState AS PsStudent_EarlyLearningChidIdentifierState
	, PsStudent.K12StudentIdentifierState AS PsStudent_K12StudentIdentifierState
	, PsStudent.K12StudentIdentifierDistrict AS PsStudent_K12StudentIdentifierDistrict
	, PsStudent.K12StudentIdentifierNationalMigrant AS PsStudent_K12StudentIdentifierNationalMigrant
	, PsStudent.PsStudentIdentifierState AS PsStudent_PsStudentIdentifierState
	, PsStudent.AeStudentIdentifierState AS PsStudent_AeStudentIdentifierState
	, PsStudent.WorkforcePersonIdentifierState AS PsStudent_WorkforcePersonIdentifierState
	, PsStudent.EarlyLearningStaffMemberIdentifierState AS PsStudent_EarlyLearningStaffMemberIdentifierState
	, PsStudent.K12StaffMemberIdentiferState AS PsStudent_K12StaffMemberIdentiferState
	, PsStudent.K12StaffMemberIdentiferDistrict AS PsStudent_K12StaffMemberIdentiferDistrict
	, PsStudent.PsStaffMemberIdentiferState AS PsStudent_PsStaffMemberIdentiferState
	, PsStudent.PersonIdentifierDriversLicense AS PsStudent_PersonIdentifierDriversLicense
	, PsStudent.IsActiveEarlyLearningChild AS PsStudent_IsActiveEarlyLearningChild
	, PsStudent.IsActiveK12Student AS PsStudent_IsActiveK12Student
	, PsStudent.IsActivePsStudent AS PsStudent_IsActivePsStudent
	, PsStudent.IsActiveAeStudent AS PsStudent_IsActiveAeStudent
	, PsStudent.IsActiveWorkforcePerson AS PsStudent_IsActiveWorkforcePerson
	, PsStudent.IsActiveEarlyLearningStaffMember AS PsStudent_IsActiveEarlyLearningStaffMember
	, PsStudent.IsActiveK12StaffMember AS PsStudent_IsActiveK12StaffMember
	, PsStudent.IsActivePsStaffMember AS PsStudent_IsActivePsStaffMember
	, PsStudent.RecordStartDateTime AS PsStudent_RecordStartDateTime
	, PsStudent.RecordEndDateTime AS PsStudent_RecordEndDateTime
	, PsAcademicAwardTitle.AcademicAwardTitle AS PsAcademicAwardTitle_AcademicAwardTitle
	, AcademicAwardDate.DateValue AS AcademicAwardDate_DateValue
	, AcademicAwardDate.Day AS AcademicAwardDate_Day
	, AcademicAwardDate.DayOfWeek AS AcademicAwardDate_DayOfWeek
	, AcademicAwardDate.DayOfYear AS AcademicAwardDate_DayOfYear
	, AcademicAwardDate.Month AS AcademicAwardDate_Month
	, AcademicAwardDate.MonthName AS AcademicAwardDate_MonthName
	, AcademicAwardDate.SubmissionYear AS AcademicAwardDate_SubmissionYear
	, AcademicAwardDate.Year AS AcademicAwardDate_Year
	, PsAcademicAwardStatus.PescAwardLevelTypeCode AS PsAcademicAwardStatus_PescAwardLevelTypeCode
	, PsAcademicAwardStatus.PescAwardLevelTypeDescription AS PsAcademicAwardStatus_PescAwardLevelTypeDescription
	, PsAcademicAwardStatus.ProfessionalOrTechnicalCredentialConferredCode AS PsAcademicAwardStatus_ProfessionalOrTechnicalCredentialConferredCode
	, PsAcademicAwardStatus.ProfessionalOrTechnicalCredentialConferredDescription AS PsAcademicAwardStatus_ProfessionalOrTechnicalCredentialConferredDescription
	, fact.StudentCount
FROM RDS.FactPsStudentAcademicAwards fact
JOIN RDS.DimPsInstitutions PsInstitution
	ON Fact.PsInstitutionID = PsInstitution.DimPsInstitutionID
JOIN RDS.DimPeople PsStudent
	ON Fact.PsStudentId = PsStudent.DimPersonId
JOIN RDS.DimPsAcademicAwardTitles PsAcademicAwardTitle
	ON Fact.PsAcademicAwardTitleId = PsAcademicAwardTitle.DimPsAcademicAwardTitleId
JOIN RDS.DimDates AcademicAwardDate
	ON Fact.AcademicAwardDateId = AcademicAwardDate.DimDateId
JOIN RDS.DimPsAcademicAwardStatuses PsAcademicAwardStatus
	ON Fact.PsAcademicAwardStatusId = PsAcademicAwardStatus.DimPsAcademicAwardStatusId
GO
