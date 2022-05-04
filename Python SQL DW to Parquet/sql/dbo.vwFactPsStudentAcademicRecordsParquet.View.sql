USE [CEDS-Data-Warehouse-V9-2-0-0]
GO
/****** Object:  View [dbo].[vwFactPsStudentAcademicRecordsParquet]    Script Date: 5/2/2022 3:48:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   VIEW [dbo].[vwFactPsStudentAcademicRecordsParquet] AS SELECT fact.FactPsStudentAcademicRecordId
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
	, AcademicTermDesignator.AcademicTermDesignatorCode AS AcademicTermDesignator_AcademicTermDesignatorCode
	, AcademicTermDesignator.AcademicTermDesignatorDescription AS AcademicTermDesignator_AcademicTermDesignatorDescription
	, PsInstitutionStatus.LevelOfInstitutionCode AS PsInstitutionStatus_LevelOfInstitutionCode
	, PsInstitutionStatus.LevelOfInstitutionDescription AS PsInstitutionStatus_LevelOfInstitutionDescription
	, PsInstitutionStatus.ControlOfInstitutionCode AS PsInstitutionStatus_ControlOfInstitutionCode
	, PsInstitutionStatus.ControlOfInstitutionDescription AS PsInstitutionStatus_ControlOfInstitutionDescription
	, PsInstitutionStatus.VirtualIndicatorCode AS PsInstitutionStatus_VirtualIndicatorCode
	, PsInstitutionStatus.VirtualIndicatorDescription AS PsInstitutionStatus_VirtualIndicatorDescription
	, PsInstitutionStatus.CarnegieBasicClassificationCode AS PsInstitutionStatus_CarnegieBasicClassificationCode
	, PsInstitutionStatus.CarnegieBasicClassificationDescription AS PsInstitutionStatus_CarnegieBasicClassificationDescription
	, PsInstitutionStatus.MostPrevalentLevelOfInstitutionCode AS PsInstitutionStatus_MostPrevalentLevelOfInstitutionCode
	, PsInstitutionStatus.MostPrevalentLevelOfInstitutionDescription AS PsInstitutionStatus_MostPrevalentLevelOfInstitutionDescription
	, PsInstitutionStatus.PredominantCalendarSystemCode AS PsInstitutionStatus_PredominantCalendarSystemCode
	, PsInstitutionStatus.PredominantCalendarSystemDescription AS PsInstitutionStatus_PredominantCalendarSystemDescription
	, PsEnrollmentStatus.PostsecondaryExitOrWithdrawalTypeCode AS PsEnrollmentStatus_PostsecondaryExitOrWithdrawalTypeCode
	, PsEnrollmentStatus.PostsecondaryExitOrWithdrawalTypeDescription AS PsEnrollmentStatus_PostsecondaryExitOrWithdrawalTypeDescription
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
	, DataCollection.SourceSystemDataCollectionIdentifier AS DataCollection_SourceSystemDataCollectionIdentifier
	, DataCollection.SourceSystemName AS DataCollection_SourceSystemName
	, DataCollection.DataCollectionName AS DataCollection_DataCollectionName
	, DataCollection.DataCollectionDescription AS DataCollection_DataCollectionDescription
	, DataCollection.DataCollectionOpenDate AS DataCollection_DataCollectionOpenDate
	, DataCollection.DataCollectionCloseDate AS DataCollection_DataCollectionCloseDate
	, DataCollection.DataCollectionAcademicSchoolYear AS DataCollection_DataCollectionAcademicSchoolYear
	, DataCollection.DataCollectionSchoolYear AS DataCollection_DataCollectionSchoolYear
	, fact.GradePointAverage
	, fact.GradePointAverageCumulative
	, fact.DualCreditDualEnrollmentCreditsAwarded
	, fact.APCreditsAwarded
	, fact.CourseTotal
	, fact.StudentCourseCount
FROM RDS.FactPsStudentAcademicRecords fact
JOIN RDS.DimSchoolYears SchoolYear
	ON Fact.SchoolYearId = SchoolYear.DimSchoolYearId
JOIN RDS.DimSeas Sea
	ON Fact.SeaId = Sea.DimSeaId
JOIN RDS.DimPsInstitutions PsInstitution
	ON Fact.PsInstitutionID = PsInstitution.DimPsInstitutionID
JOIN RDS.DimPeople PsStudent
	ON Fact.PsStudentId = PsStudent.DimPersonId
JOIN RDS.DimAcademicTermDesignators AcademicTermDesignator
	ON Fact.AcademicTermDesignatorId = AcademicTermDesignator.DimAcademicTermDesignatorId
JOIN RDS.DimPsInstitutionStatuses PsInstitutionStatus
	ON Fact.PsInstitutionStatusId = PsInstitutionStatus.DimPsInstitutionStatusId
JOIN RDS.DimPsEnrollmentStatuses PsEnrollmentStatus
	ON Fact.PsEnrollmentStatusId = PsEnrollmentStatus.DimPsEnrollmentStatusId
JOIN RDS.DimDates EnrollmentEntryDate
	ON Fact.EnrollmentEntryDateId = EnrollmentEntryDate.DimDateId
JOIN RDS.DimDates EnrollmentExitDate
	ON Fact.EnrollmentExitDateId = EnrollmentExitDate.DimDateId
JOIN RDS.DimDataCollections DataCollection
	ON Fact.DataCollectionId = DataCollection.DimDataCollectionId
GO
