USE [CEDS-Data-Warehouse-V9-2-0-0]
GO
/****** Object:  View [dbo].[vwFactK12StudentAttendanceParquet]    Script Date: 5/2/2022 3:48:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   VIEW [dbo].[vwFactK12StudentAttendanceParquet] AS SELECT fact.FactK12StudentAttendanceId
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
	, Attendance.AbsenteeismCode AS Attendance_AbsenteeismCode
	, Attendance.AbsenteeismDescription AS Attendance_AbsenteeismDescription
	, Attendance.AbsenteeismEdFactsCode AS Attendance_AbsenteeismEdFactsCode
	, K12Demographic.SexCode AS K12Demographic_SexCode
	, K12Demographic.SexDescription AS K12Demographic_SexDescription
	, K12Demographic.SexEdFactsCode AS K12Demographic_SexEdFactsCode
	, fact.StudentAttendanceRate
FROM RDS.FactK12StudentAttendance fact
JOIN RDS.DimSchoolYears SchoolYear
	ON Fact.SchoolYearId = SchoolYear.DimSchoolYearId
JOIN RDS.DimFactTypes FactType
	ON Fact.FactTypeId = FactType.DimFactTypeId
JOIN RDS.DimSeas Sea
	ON Fact.SeaId = Sea.DimSeaId
JOIN RDS.DimLeas Lea
	ON Fact.LeaId = Lea.DimLeaID
JOIN RDS.DimK12Schools K12School
	ON Fact.K12SchoolId = K12School.DimK12SchoolId
JOIN RDS.DimPeople K12Student
	ON Fact.K12StudentId = K12Student.DimPersonId
JOIN RDS.DimAttendance Attendance
	ON Fact.AttendanceId = Attendance.DimAttendanceId
JOIN RDS.DimK12Demographics K12Demographic
	ON Fact.K12DemographicId = K12Demographic.DimK12DemographicId
GO
