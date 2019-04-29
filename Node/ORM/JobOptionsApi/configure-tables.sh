#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

node ${__dir}\server\bin\discover-schema.js -ds Applications -sn Address
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn AddressTypes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn AlternateName
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn Applicant
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn ApplicantDisability
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn ApplicantDisabilityCode
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn ApplicantEmployment
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn ApplicantEmploymentCode
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn ApplicantLocation
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn ApplicantPosition
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn ApplicantStatus
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn Application
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn CaseCodeTypes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn ConsiderationTypes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn DisabilityTypes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn Document
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn DocumentTypes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn Education
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn EmergencyContact
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn EmploymentTypes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn EthnicityTypes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn GenderTypes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn Interview
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn LocationTypes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn Note
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn NoteTypes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn OwnerTypes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn Phone
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn PhoneTypes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn PositionTypes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn PreviousEmployer
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn QuestionTypes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn Reference
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn SectionTaskCodeTypes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn ServiceRecord
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn Site
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn SpecialtyCodes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn StateTypes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn StatusTypes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn TitleCodes
node ${__dir}\server\bin\discover-schema.js -ds Applications -sn vi_ApplicantSearch

