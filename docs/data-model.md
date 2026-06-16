# Data Model

The current dashboard uses JSON-like records in `app.js` and `data/ccsd46.json`. Future versions should store these as versioned records.

## Core entities

```text
District
  id
  name
  boundaries
  communitiesServed
  schools[]
  board
  electionAuthorities[]
  publicSources[]

School
  name
  grades
  type
  enrollment
  sourceRefs[]

Board
  memberCount?              // verify for each district
  terms
  meetingCadence
  members[]
  committees[]
  sourceRefs[]

ElectionCycle
  districtId
  electionDate
  circulationStart
  filingStart
  filingDeadline
  objectionWindow
  seatsOpen
  sourceRefs[]
  verificationStatus

CandidateProfile
  mission
  familyReadiness
  financialReadiness
  professionalReadiness
  stressReadiness
  supportSystem
  redFlags[]

ReadinessAssessment
  category
  questions[]
  score
  blockers[]
  recommendation: NotReady | Exploratory | ViableWithRisks | Ready

TribalKnowledgeCard
  title
  lesson
  severity
  category
  sourceType
  confidence
  districtSpecificity
  publicSummary
  privateNotesRedacted
  validationStatus

Task
  id
  module
  title
  dueWindow
  priority
  owner
  status
  sourceRefs[]
```

## Evidence scoring

Each claim should carry:

- source type: official, candidate interview, public meeting record, press, inferred, unverified
- confidence: high, medium, low
- freshness date
- redaction status
- district-specific vs generalizable flag

## Privacy boundary

The public OS should not expose donor lists, voter files, harassment reports, private family facts, unreleased opposition strategy, or legal advice. It should expose reusable workflows, warnings, templates, and public-source intelligence.
