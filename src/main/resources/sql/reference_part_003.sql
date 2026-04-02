-- ============================================
-- Reference Data Part 3 of 3
-- Records: 12 (max 400 per file)
-- Generated: 2026-04-02 22:47:07.399258
-- ============================================

-- Drop and create reference table
DROP TABLE IF EXISTS Teamsref_v3;

CREATE TABLE Teamsref_v3 (
    orgId VARCHAR(50),
    orgName VARCHAR(100),
    teamId VARCHAR(50),
    teamName VARCHAR(100),
    projectId VARCHAR(50),
    projectName VARCHAR(100),
    deptId VARCHAR(50),
    deptName VARCHAR(100),
    officeId VARCHAR(50),
    loc VARCHAR(200)
);

-- Insert reference data
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000010', 'Organization_0010', 'TEAM_VELOCITY_LABS_10', 'VELOCITY', 'PRJ_INVENTORY_MGMT_10', 'INVENTORY Project', 'DEPT_MARKETING_10', 'Marketing', 'OFFICE_US_SF_10', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000010', 'Organization_0010', 'TEAM_PRODUCT_10', 'Product Management', 'PRJ_PHOENIX_RISE_10', 'PHOENIX', 'DEPT_FINANCE_10', 'Finance', 'OFFICE_MY_KL_10', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000010', 'Organization_0010', 'TEAM_PLATFORM_10', 'Platform Engineering', 'PRJ_INVENTORY_MGMT_10', 'INVENTORY Project', 'DEPT_CUSTOMER_EXPERIENCE_10', 'CUSTOMER', 'OFFICE_US_SF_10', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000010', 'Organization_0010', 'TEAM_PLATFORM_10', 'Platform Engineering', 'PRJ_LLM_PLATFORM_10', 'LLM Project', 'DEPT_FINANCE_10', 'Finance', 'OFFICE_JP_TOKYO_10', 'JP');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000010', 'Organization_0010', 'TEAM_VELOCITY_LABS_10', 'VELOCITY', 'PRJ_LLM_PLATFORM_10', 'LLM Project', 'DEPT_MARKETING_10', 'Marketing', 'OFFICE_MY_KL_10', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000010', 'Organization_0010', 'TEAM_PRODUCT_10', 'Product Management', 'PRJ_PHOENIX_RISE_10', 'PHOENIX', 'DEPT_MARKETING_10', 'Marketing', 'OFFICE_MY_KL_10', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000010', 'Organization_0010', 'TEAM_PRODUCT_10', 'Product Management', 'PRJ_INVENTORY_MGMT_10', 'INVENTORY Project', 'DEPT_STRATEGIC_INITIATIVES_10', 'STRATEGIC', 'OFFICE_MY_KL_10', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000010', 'Organization_0010', 'TEAM_PLATFORM_10', 'Platform Engineering', 'PRJ_LLM_PLATFORM_10', 'LLM Project', 'DEPT_FINANCE_10', 'Finance', 'OFFICE_JP_TOKYO_10', 'JP');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000010', 'Organization_0010', 'TEAM_QUANTUM_EDGE_10', 'QUANTUM', 'PRJ_INVENTORY_MGMT_10', 'INVENTORY Project', 'DEPT_HR_10', 'Human Resources', 'OFFICE_MY_KL_10', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000010', 'Organization_0010', 'TEAM_PLATFORM_10', 'Platform Engineering', 'PRJ_ECHO_SYSTEM_10', 'ECHO', 'DEPT_MARKETING_10', 'Marketing', 'OFFICE_US_SF_10', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000010', 'Organization_0010', 'TEAM_PLATFORM_10', 'Platform Engineering', 'PRJ_INVENTORY_MGMT_10', 'INVENTORY Project', 'DEPT_STRATEGIC_INITIATIVES_10', 'STRATEGIC', 'OFFICE_US_SF_10', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000010', 'Organization_0010', 'TEAM_PLATFORM_10', 'Platform Engineering', 'PRJ_LLM_PLATFORM_10', 'LLM Project', 'DEPT_HR_10', 'Human Resources', 'OFFICE_BR_SAOPAULO_10', 'BR');

-- ============================================
-- Verification queries
-- ============================================

-- Count records in this file
SELECT COUNT(*) as record_count FROM Teamsref_v3;

-- Show sample (first 10 records)
SELECT * FROM Teamsref_v3 LIMIT 10;
