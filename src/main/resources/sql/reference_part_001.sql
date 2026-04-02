-- ============================================
-- Reference Data Part 1 of 3
-- Records: 400 (max 400 per file)
-- Generated: 2026-04-02 22:47:07.392951
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
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_CUSTOMER_PORTAL_1', 'Customer Portal', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_UK_LON_1', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_CUSTOMER_PORTAL_1', 'Customer Portal', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_US_SF_1', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_CUSTOMER_PORTAL_1', 'Customer Portal', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_SG_MARINA_1', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_CUSTOMER_PORTAL_1', 'Customer Portal', 'DEPT_SALES_1', 'Sales', 'OFFICE_UK_LON_1', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_CUSTOMER_PORTAL_1', 'Customer Portal', 'DEPT_SALES_1', 'Sales', 'OFFICE_US_SF_1', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_CUSTOMER_PORTAL_1', 'Customer Portal', 'DEPT_SALES_1', 'Sales', 'OFFICE_SG_MARINA_1', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_CUSTOMER_PORTAL_1', 'Customer Portal', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_UK_LON_1', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_CUSTOMER_PORTAL_1', 'Customer Portal', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_US_SF_1', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_CUSTOMER_PORTAL_1', 'Customer Portal', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_SG_MARINA_1', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_PAYMENT_GATEWAY_1', 'Payment Gateway', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_UK_LON_1', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_PAYMENT_GATEWAY_1', 'Payment Gateway', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_US_SF_1', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_PAYMENT_GATEWAY_1', 'Payment Gateway', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_SG_MARINA_1', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_PAYMENT_GATEWAY_1', 'Payment Gateway', 'DEPT_SALES_1', 'Sales', 'OFFICE_UK_LON_1', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_PAYMENT_GATEWAY_1', 'Payment Gateway', 'DEPT_SALES_1', 'Sales', 'OFFICE_US_SF_1', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_PAYMENT_GATEWAY_1', 'Payment Gateway', 'DEPT_SALES_1', 'Sales', 'OFFICE_SG_MARINA_1', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_PAYMENT_GATEWAY_1', 'Payment Gateway', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_UK_LON_1', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_PAYMENT_GATEWAY_1', 'Payment Gateway', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_US_SF_1', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_PAYMENT_GATEWAY_1', 'Payment Gateway', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_SG_MARINA_1', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_MOBILE_APP_1', 'Mobile App', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_UK_LON_1', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_MOBILE_APP_1', 'Mobile App', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_US_SF_1', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_MOBILE_APP_1', 'Mobile App', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_SG_MARINA_1', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_MOBILE_APP_1', 'Mobile App', 'DEPT_SALES_1', 'Sales', 'OFFICE_UK_LON_1', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_MOBILE_APP_1', 'Mobile App', 'DEPT_SALES_1', 'Sales', 'OFFICE_US_SF_1', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_MOBILE_APP_1', 'Mobile App', 'DEPT_SALES_1', 'Sales', 'OFFICE_SG_MARINA_1', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_MOBILE_APP_1', 'Mobile App', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_UK_LON_1', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_MOBILE_APP_1', 'Mobile App', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_US_SF_1', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_MOBILE_APP_1', 'Mobile App', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_SG_MARINA_1', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_CUSTOMER_PORTAL_1', 'Customer Portal', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_UK_LON_1', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_CUSTOMER_PORTAL_1', 'Customer Portal', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_US_SF_1', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_CUSTOMER_PORTAL_1', 'Customer Portal', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_SG_MARINA_1', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_CUSTOMER_PORTAL_1', 'Customer Portal', 'DEPT_SALES_1', 'Sales', 'OFFICE_UK_LON_1', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_CUSTOMER_PORTAL_1', 'Customer Portal', 'DEPT_SALES_1', 'Sales', 'OFFICE_US_SF_1', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_CUSTOMER_PORTAL_1', 'Customer Portal', 'DEPT_SALES_1', 'Sales', 'OFFICE_SG_MARINA_1', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_CUSTOMER_PORTAL_1', 'Customer Portal', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_UK_LON_1', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_CUSTOMER_PORTAL_1', 'Customer Portal', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_US_SF_1', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_CUSTOMER_PORTAL_1', 'Customer Portal', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_SG_MARINA_1', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_PAYMENT_GATEWAY_1', 'Payment Gateway', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_UK_LON_1', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_PAYMENT_GATEWAY_1', 'Payment Gateway', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_US_SF_1', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_PAYMENT_GATEWAY_1', 'Payment Gateway', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_SG_MARINA_1', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_PAYMENT_GATEWAY_1', 'Payment Gateway', 'DEPT_SALES_1', 'Sales', 'OFFICE_UK_LON_1', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_PAYMENT_GATEWAY_1', 'Payment Gateway', 'DEPT_SALES_1', 'Sales', 'OFFICE_US_SF_1', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_PAYMENT_GATEWAY_1', 'Payment Gateway', 'DEPT_SALES_1', 'Sales', 'OFFICE_SG_MARINA_1', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_PAYMENT_GATEWAY_1', 'Payment Gateway', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_UK_LON_1', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_PAYMENT_GATEWAY_1', 'Payment Gateway', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_US_SF_1', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_PAYMENT_GATEWAY_1', 'Payment Gateway', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_SG_MARINA_1', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_MOBILE_APP_1', 'Mobile App', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_UK_LON_1', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_MOBILE_APP_1', 'Mobile App', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_US_SF_1', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_MOBILE_APP_1', 'Mobile App', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_SG_MARINA_1', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_MOBILE_APP_1', 'Mobile App', 'DEPT_SALES_1', 'Sales', 'OFFICE_UK_LON_1', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_MOBILE_APP_1', 'Mobile App', 'DEPT_SALES_1', 'Sales', 'OFFICE_US_SF_1', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_MOBILE_APP_1', 'Mobile App', 'DEPT_SALES_1', 'Sales', 'OFFICE_SG_MARINA_1', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_MOBILE_APP_1', 'Mobile App', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_UK_LON_1', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_MOBILE_APP_1', 'Mobile App', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_US_SF_1', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_MOBILE_APP_1', 'Mobile App', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_SG_MARINA_1', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_OMEGA_FORCE_1', 'OMEGA', 'PRJ_CUSTOMER_PORTAL_1', 'CUSTOMER Project', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_SG_MARINA_1', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_TITAN_GATE_1', 'TITAN', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_US_SF_1', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_MOBILE_APP_1', 'MOBILE Project', 'DEPT_BUSINESS_INTELLIGENCE_1', 'BUSINESS', 'OFFICE_UK_LON_1', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_CUSTOMER_PORTAL_1', 'CUSTOMER Project', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_BR_SAOPAULO_1', 'BR');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_CRIMSON_WOLF_1', 'CRIMSON', 'PRJ_CUSTOMER_PORTAL_1', 'CUSTOMER Project', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_UK_LON_1', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_AURORA_NEXUS_1', 'AURORA', 'DEPT_SALES_1', 'Sales', 'OFFICE_SG_MARINA_1', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_PAYMENT_GATEWAY_1', 'PAYMENT Project', 'DEPT_TECHNICAL_OPERATIONS_1', 'TECHNICAL', 'OFFICE_US_SF_1', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_CUSTOMER_PORTAL_1', 'CUSTOMER Project', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_JP_TOKYO_1', 'JP');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_QUANTUM_EDGE_1', 'QUANTUM', 'PRJ_CUSTOMER_PORTAL_1', 'CUSTOMER Project', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_SG_MARINA_1', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_AURORA_NEXUS_1', 'AURORA', 'DEPT_SALES_1', 'Sales', 'OFFICE_SG_MARINA_1', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_MOBILE_APP_1', 'MOBILE Project', 'DEPT_TECHNICAL_OPERATIONS_1', 'TECHNICAL', 'OFFICE_US_SF_1', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_PAYMENT_GATEWAY_1', 'PAYMENT Project', 'DEPT_SALES_1', 'Sales', 'OFFICE_JP_TOKYO_1', 'JP');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_OMEGA_FORCE_1', 'OMEGA', 'PRJ_PAYMENT_GATEWAY_1', 'PAYMENT Project', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_SG_MARINA_1', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_AURORA_NEXUS_1', 'AURORA', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_US_SF_1', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_CUSTOMER_PORTAL_1', 'CUSTOMER Project', 'DEPT_BUSINESS_INTELLIGENCE_1', 'BUSINESS', 'OFFICE_UK_LON_1', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_PAYMENT_GATEWAY_1', 'PAYMENT Project', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_JP_TOKYO_1', 'JP');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_NEBULA_CORE_1', 'NEBULA', 'PRJ_PAYMENT_GATEWAY_1', 'PAYMENT Project', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_US_SF_1', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_ECHO_SYSTEM_1', 'ECHO', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_SG_MARINA_1', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_PAYMENT_GATEWAY_1', 'PAYMENT Project', 'DEPT_STRATEGIC_INITIATIVES_1', 'STRATEGIC', 'OFFICE_UK_LON_1', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_MOBILE_APP_1', 'MOBILE Project', 'DEPT_SALES_1', 'Sales', 'OFFICE_DE_BERLIN_1', 'DE');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_VELOCITY_LABS_1', 'VELOCITY', 'PRJ_MOBILE_APP_1', 'MOBILE Project', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_US_SF_1', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_NOVA_ONE_1', 'NOVA', 'DEPT_SALES_1', 'Sales', 'OFFICE_SG_MARINA_1', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_PAYMENT_GATEWAY_1', 'PAYMENT Project', 'DEPT_TECHNICAL_OPERATIONS_1', 'TECHNICAL', 'OFFICE_US_SF_1', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_PAYMENT_GATEWAY_1', 'PAYMENT Project', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_DE_BERLIN_1', 'DE');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_QUANTUM_EDGE_1', 'QUANTUM', 'PRJ_MOBILE_APP_1', 'MOBILE Project', 'DEPT_SALES_1', 'Sales', 'OFFICE_SG_MARINA_1', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_PHOENIX_RISE_1', 'PHOENIX', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_US_SF_1', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_CUSTOMER_PORTAL_1', 'CUSTOMER Project', 'DEPT_TECHNICAL_OPERATIONS_1', 'TECHNICAL', 'OFFICE_UK_LON_1', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_PAYMENT_GATEWAY_1', 'PAYMENT Project', 'DEPT_SALES_1', 'Sales', 'OFFICE_JP_TOKYO_1', 'JP');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_QUANTUM_EDGE_1', 'QUANTUM', 'PRJ_MOBILE_APP_1', 'MOBILE Project', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_US_SF_1', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_TITAN_GATE_1', 'TITAN', 'DEPT_SALES_1', 'Sales', 'OFFICE_SG_MARINA_1', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_MOBILE_APP_1', 'MOBILE Project', 'DEPT_TECHNICAL_OPERATIONS_1', 'TECHNICAL', 'OFFICE_SG_MARINA_1', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_CUSTOMER_PORTAL_1', 'CUSTOMER Project', 'DEPT_SALES_1', 'Sales', 'OFFICE_AU_SYDNEY_1', 'AU');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_OMEGA_FORCE_1', 'OMEGA', 'PRJ_MOBILE_APP_1', 'MOBILE Project', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_US_SF_1', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_TITAN_GATE_1', 'TITAN', 'DEPT_SALES_1', 'Sales', 'OFFICE_UK_LON_1', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_CUSTOMER_PORTAL_1', 'CUSTOMER Project', 'DEPT_BUSINESS_INTELLIGENCE_1', 'BUSINESS', 'OFFICE_SG_MARINA_1', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_MOBILE_APP_1', 'MOBILE Project', 'DEPT_SALES_1', 'Sales', 'OFFICE_AU_SYDNEY_1', 'AU');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_VELOCITY_LABS_1', 'VELOCITY', 'PRJ_PAYMENT_GATEWAY_1', 'PAYMENT Project', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_UK_LON_1', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_AURORA_NEXUS_1', 'AURORA', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_US_SF_1', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_CUSTOMER_PORTAL_1', 'CUSTOMER Project', 'DEPT_BUSINESS_INTELLIGENCE_1', 'BUSINESS', 'OFFICE_SG_MARINA_1', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_CUSTOMER_PORTAL_1', 'CUSTOMER Project', 'DEPT_SALES_1', 'Sales', 'OFFICE_DE_BERLIN_1', 'DE');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_QUANTUM_EDGE_1', 'QUANTUM', 'PRJ_PAYMENT_GATEWAY_1', 'PAYMENT Project', 'DEPT_SALES_1', 'Sales', 'OFFICE_US_SF_1', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_TITAN_GATE_1', 'TITAN', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_US_SF_1', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_CUSTOMER_PORTAL_1', 'CUSTOMER Project', 'DEPT_TECHNICAL_OPERATIONS_1', 'TECHNICAL', 'OFFICE_SG_MARINA_1', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_CUSTOMER_PORTAL_1', 'CUSTOMER Project', 'DEPT_SALES_1', 'Sales', 'OFFICE_AU_SYDNEY_1', 'AU');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_VELOCITY_LABS_1', 'VELOCITY', 'PRJ_MOBILE_APP_1', 'MOBILE Project', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_SG_MARINA_1', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_NOVA_ONE_1', 'NOVA', 'DEPT_SALES_1', 'Sales', 'OFFICE_UK_LON_1', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_MOBILE_APP_1', 'MOBILE Project', 'DEPT_CUSTOMER_EXPERIENCE_1', 'CUSTOMER', 'OFFICE_UK_LON_1', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_MOBILE_APP_1', 'MOBILE Project', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_CA_TORONTO_1', 'CA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_CRIMSON_WOLF_1', 'CRIMSON', 'PRJ_MOBILE_APP_1', 'MOBILE Project', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_UK_LON_1', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DEVOPS_1', 'DevOps Engineering', 'PRJ_ECHO_SYSTEM_1', 'ECHO', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_US_SF_1', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_CUSTOMER_PORTAL_1', 'CUSTOMER Project', 'DEPT_CUSTOMER_EXPERIENCE_1', 'CUSTOMER', 'OFFICE_UK_LON_1', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_PAYMENT_GATEWAY_1', 'PAYMENT Project', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_BR_SAOPAULO_1', 'BR');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_OMEGA_FORCE_1', 'OMEGA', 'PRJ_PAYMENT_GATEWAY_1', 'PAYMENT Project', 'DEPT_PRODUCT_1', 'Product', 'OFFICE_SG_MARINA_1', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000001', 'Organization_0001', 'TEAM_DESIGN_1', 'Design Team', 'PRJ_PHOENIX_RISE_1', 'PHOENIX', 'DEPT_MARKETING_1', 'Marketing', 'OFFICE_US_SF_1', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Engineering', 'PRJ_INVENTORY_MGMT_2', 'Inventory Management', 'DEPT_SALES_2', 'Sales', 'OFFICE_SG_MARINA_2', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Engineering', 'PRJ_INVENTORY_MGMT_2', 'Inventory Management', 'DEPT_SALES_2', 'Sales', 'OFFICE_UK_LON_2', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Engineering', 'PRJ_INVENTORY_MGMT_2', 'Inventory Management', 'DEPT_SALES_2', 'Sales', 'OFFICE_MY_KL_2', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Engineering', 'PRJ_INVENTORY_MGMT_2', 'Inventory Management', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_SG_MARINA_2', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Engineering', 'PRJ_INVENTORY_MGMT_2', 'Inventory Management', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_UK_LON_2', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Engineering', 'PRJ_INVENTORY_MGMT_2', 'Inventory Management', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_MY_KL_2', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Engineering', 'PRJ_CUSTOMER_PORTAL_2', 'Customer Portal', 'DEPT_SALES_2', 'Sales', 'OFFICE_SG_MARINA_2', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Engineering', 'PRJ_CUSTOMER_PORTAL_2', 'Customer Portal', 'DEPT_SALES_2', 'Sales', 'OFFICE_UK_LON_2', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Engineering', 'PRJ_CUSTOMER_PORTAL_2', 'Customer Portal', 'DEPT_SALES_2', 'Sales', 'OFFICE_MY_KL_2', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Engineering', 'PRJ_CUSTOMER_PORTAL_2', 'Customer Portal', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_SG_MARINA_2', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Engineering', 'PRJ_CUSTOMER_PORTAL_2', 'Customer Portal', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_UK_LON_2', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Engineering', 'PRJ_CUSTOMER_PORTAL_2', 'Customer Portal', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_MY_KL_2', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Engineering', 'PRJ_MOBILE_APP_2', 'Mobile App', 'DEPT_SALES_2', 'Sales', 'OFFICE_SG_MARINA_2', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Engineering', 'PRJ_MOBILE_APP_2', 'Mobile App', 'DEPT_SALES_2', 'Sales', 'OFFICE_UK_LON_2', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Engineering', 'PRJ_MOBILE_APP_2', 'Mobile App', 'DEPT_SALES_2', 'Sales', 'OFFICE_MY_KL_2', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Engineering', 'PRJ_MOBILE_APP_2', 'Mobile App', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_SG_MARINA_2', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Engineering', 'PRJ_MOBILE_APP_2', 'Mobile App', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_UK_LON_2', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Engineering', 'PRJ_MOBILE_APP_2', 'Mobile App', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_MY_KL_2', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_INVENTORY_MGMT_2', 'Inventory Management', 'DEPT_SALES_2', 'Sales', 'OFFICE_SG_MARINA_2', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_INVENTORY_MGMT_2', 'Inventory Management', 'DEPT_SALES_2', 'Sales', 'OFFICE_UK_LON_2', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_INVENTORY_MGMT_2', 'Inventory Management', 'DEPT_SALES_2', 'Sales', 'OFFICE_MY_KL_2', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_INVENTORY_MGMT_2', 'Inventory Management', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_SG_MARINA_2', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_INVENTORY_MGMT_2', 'Inventory Management', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_UK_LON_2', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_INVENTORY_MGMT_2', 'Inventory Management', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_MY_KL_2', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_CUSTOMER_PORTAL_2', 'Customer Portal', 'DEPT_SALES_2', 'Sales', 'OFFICE_SG_MARINA_2', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_CUSTOMER_PORTAL_2', 'Customer Portal', 'DEPT_SALES_2', 'Sales', 'OFFICE_UK_LON_2', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_CUSTOMER_PORTAL_2', 'Customer Portal', 'DEPT_SALES_2', 'Sales', 'OFFICE_MY_KL_2', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_CUSTOMER_PORTAL_2', 'Customer Portal', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_SG_MARINA_2', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_CUSTOMER_PORTAL_2', 'Customer Portal', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_UK_LON_2', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_CUSTOMER_PORTAL_2', 'Customer Portal', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_MY_KL_2', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_MOBILE_APP_2', 'Mobile App', 'DEPT_SALES_2', 'Sales', 'OFFICE_SG_MARINA_2', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_MOBILE_APP_2', 'Mobile App', 'DEPT_SALES_2', 'Sales', 'OFFICE_UK_LON_2', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_MOBILE_APP_2', 'Mobile App', 'DEPT_SALES_2', 'Sales', 'OFFICE_MY_KL_2', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_MOBILE_APP_2', 'Mobile App', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_SG_MARINA_2', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_MOBILE_APP_2', 'Mobile App', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_UK_LON_2', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_MOBILE_APP_2', 'Mobile App', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_MY_KL_2', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_CRIMSON_WOLF_2', 'CRIMSON', 'PRJ_MOBILE_APP_2', 'MOBILE Project', 'DEPT_SALES_2', 'Sales', 'OFFICE_UK_LON_2', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_AURORA_NEXUS_2', 'AURORA', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_MY_KL_2', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_CUSTOMER_PORTAL_2', 'CUSTOMER Project', 'DEPT_STRATEGIC_INITIATIVES_2', 'STRATEGIC', 'OFFICE_UK_LON_2', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_INVENTORY_MGMT_2', 'INVENTORY Project', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_DE_BERLIN_2', 'DE');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_VELOCITY_LABS_2', 'VELOCITY', 'PRJ_INVENTORY_MGMT_2', 'INVENTORY Project', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_SG_MARINA_2', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_NOVA_ONE_2', 'NOVA', 'DEPT_SALES_2', 'Sales', 'OFFICE_UK_LON_2', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_INVENTORY_MGMT_2', 'INVENTORY Project', 'DEPT_CUSTOMER_EXPERIENCE_2', 'CUSTOMER', 'OFFICE_SG_MARINA_2', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_MOBILE_APP_2', 'MOBILE Project', 'DEPT_SALES_2', 'Sales', 'OFFICE_DE_BERLIN_2', 'DE');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_CRIMSON_WOLF_2', 'CRIMSON', 'PRJ_INVENTORY_MGMT_2', 'INVENTORY Project', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_MY_KL_2', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_AURORA_NEXUS_2', 'AURORA', 'DEPT_SALES_2', 'Sales', 'OFFICE_MY_KL_2', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_CUSTOMER_PORTAL_2', 'CUSTOMER Project', 'DEPT_BUSINESS_INTELLIGENCE_2', 'BUSINESS', 'OFFICE_SG_MARINA_2', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_INVENTORY_MGMT_2', 'INVENTORY Project', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_DE_BERLIN_2', 'DE');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_OMEGA_FORCE_2', 'OMEGA', 'PRJ_MOBILE_APP_2', 'MOBILE Project', 'DEPT_SALES_2', 'Sales', 'OFFICE_UK_LON_2', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_AURORA_NEXUS_2', 'AURORA', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_SG_MARINA_2', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_CUSTOMER_PORTAL_2', 'CUSTOMER Project', 'DEPT_TECHNICAL_OPERATIONS_2', 'TECHNICAL', 'OFFICE_SG_MARINA_2', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_MOBILE_APP_2', 'MOBILE Project', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_BR_SAOPAULO_2', 'BR');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_CRIMSON_WOLF_2', 'CRIMSON', 'PRJ_MOBILE_APP_2', 'MOBILE Project', 'DEPT_SALES_2', 'Sales', 'OFFICE_UK_LON_2', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_TITAN_GATE_2', 'TITAN', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_SG_MARINA_2', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_INVENTORY_MGMT_2', 'INVENTORY Project', 'DEPT_TECHNICAL_OPERATIONS_2', 'TECHNICAL', 'OFFICE_MY_KL_2', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_CUSTOMER_PORTAL_2', 'CUSTOMER Project', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_DE_BERLIN_2', 'DE');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_NEBULA_CORE_2', 'NEBULA', 'PRJ_MOBILE_APP_2', 'MOBILE Project', 'DEPT_SALES_2', 'Sales', 'OFFICE_UK_LON_2', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_AURORA_NEXUS_2', 'AURORA', 'DEPT_SALES_2', 'Sales', 'OFFICE_SG_MARINA_2', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_MOBILE_APP_2', 'MOBILE Project', 'DEPT_BUSINESS_INTELLIGENCE_2', 'BUSINESS', 'OFFICE_MY_KL_2', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_INVENTORY_MGMT_2', 'INVENTORY Project', 'DEPT_SALES_2', 'Sales', 'OFFICE_DE_BERLIN_2', 'DE');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_VELOCITY_LABS_2', 'VELOCITY', 'PRJ_INVENTORY_MGMT_2', 'INVENTORY Project', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_SG_MARINA_2', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_PHOENIX_RISE_2', 'PHOENIX', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_SG_MARINA_2', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_MOBILE_APP_2', 'MOBILE Project', 'DEPT_TECHNICAL_OPERATIONS_2', 'TECHNICAL', 'OFFICE_MY_KL_2', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_INVENTORY_MGMT_2', 'INVENTORY Project', 'DEPT_SALES_2', 'Sales', 'OFFICE_BR_SAOPAULO_2', 'BR');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_QUANTUM_EDGE_2', 'QUANTUM', 'PRJ_CUSTOMER_PORTAL_2', 'CUSTOMER Project', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_UK_LON_2', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_TITAN_GATE_2', 'TITAN', 'DEPT_SALES_2', 'Sales', 'OFFICE_SG_MARINA_2', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_CUSTOMER_PORTAL_2', 'CUSTOMER Project', 'DEPT_STRATEGIC_INITIATIVES_2', 'STRATEGIC', 'OFFICE_UK_LON_2', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_FRONTEND_2', 'Frontend Engineering', 'PRJ_CUSTOMER_PORTAL_2', 'CUSTOMER Project', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_CA_TORONTO_2', 'CA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_OMEGA_FORCE_2', 'OMEGA', 'PRJ_MOBILE_APP_2', 'MOBILE Project', 'DEPT_SALES_2', 'Sales', 'OFFICE_UK_LON_2', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_NOVA_ONE_2', 'NOVA', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_UK_LON_2', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_CUSTOMER_PORTAL_2', 'CUSTOMER Project', 'DEPT_DIGITAL_TRANSFORMATION_2', 'DIGITAL', 'OFFICE_SG_MARINA_2', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000002', 'Organization_0002', 'TEAM_ML_ENGINEERING_2', 'ML Team', 'PRJ_CUSTOMER_PORTAL_2', 'CUSTOMER Project', 'DEPT_LEGAL_2', 'Legal', 'OFFICE_JP_TOKYO_2', 'JP');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_DATA_WAREHOUSE_3', 'Data Warehouse', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_MY_KL_3', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_DATA_WAREHOUSE_3', 'Data Warehouse', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_SG_MARINA_3', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_DATA_WAREHOUSE_3', 'Data Warehouse', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_US_SF_3', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_DATA_WAREHOUSE_3', 'Data Warehouse', 'DEPT_AI_RESEARCH_3', 'AI Research', 'OFFICE_MY_KL_3', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_DATA_WAREHOUSE_3', 'Data Warehouse', 'DEPT_AI_RESEARCH_3', 'AI Research', 'OFFICE_SG_MARINA_3', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_DATA_WAREHOUSE_3', 'Data Warehouse', 'DEPT_AI_RESEARCH_3', 'AI Research', 'OFFICE_US_SF_3', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_DATA_WAREHOUSE_3', 'Data Warehouse', 'DEPT_HR_3', 'Human Resources', 'OFFICE_MY_KL_3', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_DATA_WAREHOUSE_3', 'Data Warehouse', 'DEPT_HR_3', 'Human Resources', 'OFFICE_SG_MARINA_3', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_DATA_WAREHOUSE_3', 'Data Warehouse', 'DEPT_HR_3', 'Human Resources', 'OFFICE_US_SF_3', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_CRM_SYSTEM_3', 'CRM System', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_MY_KL_3', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_CRM_SYSTEM_3', 'CRM System', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_SG_MARINA_3', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_CRM_SYSTEM_3', 'CRM System', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_US_SF_3', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_CRM_SYSTEM_3', 'CRM System', 'DEPT_AI_RESEARCH_3', 'AI Research', 'OFFICE_MY_KL_3', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_CRM_SYSTEM_3', 'CRM System', 'DEPT_AI_RESEARCH_3', 'AI Research', 'OFFICE_SG_MARINA_3', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_CRM_SYSTEM_3', 'CRM System', 'DEPT_AI_RESEARCH_3', 'AI Research', 'OFFICE_US_SF_3', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_CRM_SYSTEM_3', 'CRM System', 'DEPT_HR_3', 'Human Resources', 'OFFICE_MY_KL_3', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_CRM_SYSTEM_3', 'CRM System', 'DEPT_HR_3', 'Human Resources', 'OFFICE_SG_MARINA_3', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_CRM_SYSTEM_3', 'CRM System', 'DEPT_HR_3', 'Human Resources', 'OFFICE_US_SF_3', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_ERP_3', 'ERP System', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_MY_KL_3', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_ERP_3', 'ERP System', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_SG_MARINA_3', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_ERP_3', 'ERP System', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_US_SF_3', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_ERP_3', 'ERP System', 'DEPT_AI_RESEARCH_3', 'AI Research', 'OFFICE_MY_KL_3', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_ERP_3', 'ERP System', 'DEPT_AI_RESEARCH_3', 'AI Research', 'OFFICE_SG_MARINA_3', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_ERP_3', 'ERP System', 'DEPT_AI_RESEARCH_3', 'AI Research', 'OFFICE_US_SF_3', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_ERP_3', 'ERP System', 'DEPT_HR_3', 'Human Resources', 'OFFICE_MY_KL_3', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_ERP_3', 'ERP System', 'DEPT_HR_3', 'Human Resources', 'OFFICE_SG_MARINA_3', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_ERP_3', 'ERP System', 'DEPT_HR_3', 'Human Resources', 'OFFICE_US_SF_3', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_DATA_WAREHOUSE_3', 'Data Warehouse', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_MY_KL_3', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_DATA_WAREHOUSE_3', 'Data Warehouse', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_SG_MARINA_3', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_DATA_WAREHOUSE_3', 'Data Warehouse', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_US_SF_3', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_DATA_WAREHOUSE_3', 'Data Warehouse', 'DEPT_AI_RESEARCH_3', 'AI Research', 'OFFICE_MY_KL_3', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_DATA_WAREHOUSE_3', 'Data Warehouse', 'DEPT_AI_RESEARCH_3', 'AI Research', 'OFFICE_SG_MARINA_3', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_DATA_WAREHOUSE_3', 'Data Warehouse', 'DEPT_AI_RESEARCH_3', 'AI Research', 'OFFICE_US_SF_3', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_DATA_WAREHOUSE_3', 'Data Warehouse', 'DEPT_HR_3', 'Human Resources', 'OFFICE_MY_KL_3', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_DATA_WAREHOUSE_3', 'Data Warehouse', 'DEPT_HR_3', 'Human Resources', 'OFFICE_SG_MARINA_3', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_DATA_WAREHOUSE_3', 'Data Warehouse', 'DEPT_HR_3', 'Human Resources', 'OFFICE_US_SF_3', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_CRM_SYSTEM_3', 'CRM System', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_MY_KL_3', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_CRM_SYSTEM_3', 'CRM System', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_SG_MARINA_3', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_CRM_SYSTEM_3', 'CRM System', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_US_SF_3', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_CRM_SYSTEM_3', 'CRM System', 'DEPT_AI_RESEARCH_3', 'AI Research', 'OFFICE_MY_KL_3', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_CRM_SYSTEM_3', 'CRM System', 'DEPT_AI_RESEARCH_3', 'AI Research', 'OFFICE_SG_MARINA_3', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_CRM_SYSTEM_3', 'CRM System', 'DEPT_AI_RESEARCH_3', 'AI Research', 'OFFICE_US_SF_3', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_CRM_SYSTEM_3', 'CRM System', 'DEPT_HR_3', 'Human Resources', 'OFFICE_MY_KL_3', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_CRM_SYSTEM_3', 'CRM System', 'DEPT_HR_3', 'Human Resources', 'OFFICE_SG_MARINA_3', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_CRM_SYSTEM_3', 'CRM System', 'DEPT_HR_3', 'Human Resources', 'OFFICE_US_SF_3', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_ERP_3', 'ERP System', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_MY_KL_3', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_ERP_3', 'ERP System', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_SG_MARINA_3', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_ERP_3', 'ERP System', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_US_SF_3', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_ERP_3', 'ERP System', 'DEPT_AI_RESEARCH_3', 'AI Research', 'OFFICE_MY_KL_3', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_ERP_3', 'ERP System', 'DEPT_AI_RESEARCH_3', 'AI Research', 'OFFICE_SG_MARINA_3', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_ERP_3', 'ERP System', 'DEPT_AI_RESEARCH_3', 'AI Research', 'OFFICE_US_SF_3', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_ERP_3', 'ERP System', 'DEPT_HR_3', 'Human Resources', 'OFFICE_MY_KL_3', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_ERP_3', 'ERP System', 'DEPT_HR_3', 'Human Resources', 'OFFICE_SG_MARINA_3', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Research', 'PRJ_ERP_3', 'ERP System', 'DEPT_HR_3', 'Human Resources', 'OFFICE_US_SF_3', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_VELOCITY_LABS_3', 'VELOCITY', 'PRJ_CRM_SYSTEM_3', 'CRM Project', 'DEPT_HR_3', 'Human Resources', 'OFFICE_SG_MARINA_3', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Team', 'PRJ_NOVA_ONE_3', 'NOVA', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_MY_KL_3', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_ERP_3', 'ERP System', 'DEPT_STRATEGIC_INITIATIVES_3', 'STRATEGIC', 'OFFICE_SG_MARINA_3', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_DATA_WAREHOUSE_3', 'DATA Project', 'DEPT_HR_3', 'Human Resources', 'OFFICE_JP_TOKYO_3', 'JP');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_OMEGA_FORCE_3', 'OMEGA', 'PRJ_CRM_SYSTEM_3', 'CRM Project', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_US_SF_3', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Team', 'PRJ_ECHO_SYSTEM_3', 'ECHO', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_MY_KL_3', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_CRM_SYSTEM_3', 'CRM Project', 'DEPT_CUSTOMER_EXPERIENCE_3', 'CUSTOMER', 'OFFICE_SG_MARINA_3', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Team', 'PRJ_CRM_SYSTEM_3', 'CRM Project', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_DE_BERLIN_3', 'DE');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_QUANTUM_EDGE_3', 'QUANTUM', 'PRJ_ERP_3', 'ERP System', 'DEPT_HR_3', 'Human Resources', 'OFFICE_US_SF_3', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Team', 'PRJ_NOVA_ONE_3', 'NOVA', 'DEPT_AI_RESEARCH_3', 'AI Department', 'OFFICE_SG_MARINA_3', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_CRM_SYSTEM_3', 'CRM Project', 'DEPT_STRATEGIC_INITIATIVES_3', 'STRATEGIC', 'OFFICE_MY_KL_3', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_DATA_WAREHOUSE_3', 'DATA Project', 'DEPT_AI_RESEARCH_3', 'AI Department', 'OFFICE_BR_SAOPAULO_3', 'BR');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_OMEGA_FORCE_3', 'OMEGA', 'PRJ_ERP_3', 'ERP System', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_SG_MARINA_3', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_TITAN_GATE_3', 'TITAN', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_MY_KL_3', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Team', 'PRJ_ERP_3', 'ERP System', 'DEPT_TECHNICAL_OPERATIONS_3', 'TECHNICAL', 'OFFICE_SG_MARINA_3', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Team', 'PRJ_DATA_WAREHOUSE_3', 'DATA Project', 'DEPT_AI_RESEARCH_3', 'AI Department', 'OFFICE_BR_SAOPAULO_3', 'BR');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_NEBULA_CORE_3', 'NEBULA', 'PRJ_ERP_3', 'ERP System', 'DEPT_AI_RESEARCH_3', 'AI Department', 'OFFICE_SG_MARINA_3', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_TITAN_GATE_3', 'TITAN', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_SG_MARINA_3', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_DATA_WAREHOUSE_3', 'DATA Project', 'DEPT_STRATEGIC_INITIATIVES_3', 'STRATEGIC', 'OFFICE_SG_MARINA_3', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_ERP_3', 'ERP System', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_BR_SAOPAULO_3', 'BR');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_OMEGA_FORCE_3', 'OMEGA', 'PRJ_CRM_SYSTEM_3', 'CRM Project', 'DEPT_AI_RESEARCH_3', 'AI Department', 'OFFICE_SG_MARINA_3', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_PHOENIX_RISE_3', 'PHOENIX', 'DEPT_AI_RESEARCH_3', 'AI Department', 'OFFICE_US_SF_3', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_DATA_WAREHOUSE_3', 'DATA Project', 'DEPT_BUSINESS_INTELLIGENCE_3', 'BUSINESS', 'OFFICE_SG_MARINA_3', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_ERP_3', 'ERP System', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_JP_TOKYO_3', 'JP');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_NEBULA_CORE_3', 'NEBULA', 'PRJ_ERP_3', 'ERP System', 'DEPT_HR_3', 'Human Resources', 'OFFICE_MY_KL_3', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_TITAN_GATE_3', 'TITAN', 'DEPT_HR_3', 'Human Resources', 'OFFICE_MY_KL_3', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Team', 'PRJ_CRM_SYSTEM_3', 'CRM Project', 'DEPT_STRATEGIC_INITIATIVES_3', 'STRATEGIC', 'OFFICE_MY_KL_3', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_DATA_WAREHOUSE_3', 'DATA Project', 'DEPT_AI_RESEARCH_3', 'AI Department', 'OFFICE_AU_SYDNEY_3', 'AU');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_CRIMSON_WOLF_3', 'CRIMSON', 'PRJ_DATA_WAREHOUSE_3', 'DATA Project', 'DEPT_AI_RESEARCH_3', 'AI Department', 'OFFICE_US_SF_3', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_ECHO_SYSTEM_3', 'ECHO', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_MY_KL_3', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_ERP_3', 'ERP System', 'DEPT_BUSINESS_INTELLIGENCE_3', 'BUSINESS', 'OFFICE_MY_KL_3', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Team', 'PRJ_CRM_SYSTEM_3', 'CRM Project', 'DEPT_AI_RESEARCH_3', 'AI Department', 'OFFICE_AU_SYDNEY_3', 'AU');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_NEBULA_CORE_3', 'NEBULA', 'PRJ_CRM_SYSTEM_3', 'CRM Project', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_MY_KL_3', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Team', 'PRJ_NOVA_ONE_3', 'NOVA', 'DEPT_AI_RESEARCH_3', 'AI Department', 'OFFICE_MY_KL_3', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_CRM_SYSTEM_3', 'CRM Project', 'DEPT_CUSTOMER_EXPERIENCE_3', 'CUSTOMER', 'OFFICE_SG_MARINA_3', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Team', 'PRJ_CRM_SYSTEM_3', 'CRM Project', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_AU_SYDNEY_3', 'AU');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_QUANTUM_EDGE_3', 'QUANTUM', 'PRJ_CRM_SYSTEM_3', 'CRM Project', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_US_SF_3', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Team', 'PRJ_AURORA_NEXUS_3', 'AURORA', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_SG_MARINA_3', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Team', 'PRJ_CRM_SYSTEM_3', 'CRM Project', 'DEPT_CUSTOMER_EXPERIENCE_3', 'CUSTOMER', 'OFFICE_MY_KL_3', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_ERP_3', 'ERP System', 'DEPT_AI_RESEARCH_3', 'AI Department', 'OFFICE_BR_SAOPAULO_3', 'BR');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_VELOCITY_LABS_3', 'VELOCITY', 'PRJ_CRM_SYSTEM_3', 'CRM Project', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_SG_MARINA_3', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_TITAN_GATE_3', 'TITAN', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_SG_MARINA_3', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Team', 'PRJ_DATA_WAREHOUSE_3', 'DATA Project', 'DEPT_DIGITAL_TRANSFORMATION_3', 'DIGITAL', 'OFFICE_MY_KL_3', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_AI_RESEARCH_3', 'AI Team', 'PRJ_CRM_SYSTEM_3', 'CRM Project', 'DEPT_AI_RESEARCH_3', 'AI Department', 'OFFICE_BR_SAOPAULO_3', 'BR');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_NEBULA_CORE_3', 'NEBULA', 'PRJ_DATA_WAREHOUSE_3', 'DATA Project', 'DEPT_HR_3', 'Human Resources', 'OFFICE_US_SF_3', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_ECHO_SYSTEM_3', 'ECHO', 'DEPT_HR_3', 'Human Resources', 'OFFICE_SG_MARINA_3', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_DATA_WAREHOUSE_3', 'DATA Project', 'DEPT_TECHNICAL_OPERATIONS_3', 'TECHNICAL', 'OFFICE_US_SF_3', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_DATA_WAREHOUSE_3', 'DATA Project', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_BR_SAOPAULO_3', 'BR');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_VELOCITY_LABS_3', 'VELOCITY', 'PRJ_CRM_SYSTEM_3', 'CRM Project', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_MY_KL_3', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_AURORA_NEXUS_3', 'AURORA', 'DEPT_AI_RESEARCH_3', 'AI Department', 'OFFICE_US_SF_3', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_CRM_SYSTEM_3', 'CRM Project', 'DEPT_DIGITAL_TRANSFORMATION_3', 'DIGITAL', 'OFFICE_MY_KL_3', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_DATA_WAREHOUSE_3', 'DATA Project', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_JP_TOKYO_3', 'JP');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_CRIMSON_WOLF_3', 'CRIMSON', 'PRJ_ERP_3', 'ERP System', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_MY_KL_3', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000003', 'Organization_0003', 'TEAM_PLATFORM_3', 'Platform Engineering', 'PRJ_NOVA_ONE_3', 'NOVA', 'DEPT_PRODUCT_3', 'Product', 'OFFICE_US_SF_3', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_ERP_4', 'ERP System', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_MY_KL_4', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_ERP_4', 'ERP System', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_SG_MARINA_4', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_ERP_4', 'ERP System', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_US_SF_4', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_ERP_4', 'ERP System', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_MY_KL_4', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_ERP_4', 'ERP System', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_SG_MARINA_4', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_ERP_4', 'ERP System', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_US_SF_4', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_MOBILE_APP_4', 'Mobile App', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_MY_KL_4', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_MOBILE_APP_4', 'Mobile App', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_SG_MARINA_4', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_MOBILE_APP_4', 'Mobile App', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_US_SF_4', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_MOBILE_APP_4', 'Mobile App', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_MY_KL_4', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_MOBILE_APP_4', 'Mobile App', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_SG_MARINA_4', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_MOBILE_APP_4', 'Mobile App', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_US_SF_4', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Engineering', 'PRJ_ERP_4', 'ERP System', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_MY_KL_4', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Engineering', 'PRJ_ERP_4', 'ERP System', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_SG_MARINA_4', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Engineering', 'PRJ_ERP_4', 'ERP System', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_US_SF_4', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Engineering', 'PRJ_ERP_4', 'ERP System', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_MY_KL_4', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Engineering', 'PRJ_ERP_4', 'ERP System', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_SG_MARINA_4', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Engineering', 'PRJ_ERP_4', 'ERP System', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_US_SF_4', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Engineering', 'PRJ_MOBILE_APP_4', 'Mobile App', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_MY_KL_4', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Engineering', 'PRJ_MOBILE_APP_4', 'Mobile App', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_SG_MARINA_4', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Engineering', 'PRJ_MOBILE_APP_4', 'Mobile App', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_US_SF_4', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Engineering', 'PRJ_MOBILE_APP_4', 'Mobile App', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_MY_KL_4', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Engineering', 'PRJ_MOBILE_APP_4', 'Mobile App', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_SG_MARINA_4', 'Singapore - Marina Bay');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Engineering', 'PRJ_MOBILE_APP_4', 'Mobile App', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_US_SF_4', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_NEBULA_CORE_4', 'NEBULA', 'PRJ_ERP_4', 'ERP System', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_US_SF_4', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Team', 'PRJ_AURORA_NEXUS_4', 'AURORA', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_SG_MARINA_4', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Team', 'PRJ_ERP_4', 'ERP System', 'DEPT_CUSTOMER_EXPERIENCE_4', 'CUSTOMER', 'OFFICE_MY_KL_4', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Team', 'PRJ_ERP_4', 'ERP System', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_BR_SAOPAULO_4', 'BR');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_CRIMSON_WOLF_4', 'CRIMSON', 'PRJ_MOBILE_APP_4', 'MOBILE Project', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_US_SF_4', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_NOVA_ONE_4', 'NOVA', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_SG_MARINA_4', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Team', 'PRJ_ERP_4', 'ERP System', 'DEPT_TECHNICAL_OPERATIONS_4', 'TECHNICAL', 'OFFICE_MY_KL_4', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_MOBILE_APP_4', 'MOBILE Project', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_JP_TOKYO_4', 'JP');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_CRIMSON_WOLF_4', 'CRIMSON', 'PRJ_MOBILE_APP_4', 'MOBILE Project', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_US_SF_4', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_ECHO_SYSTEM_4', 'ECHO', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_SG_MARINA_4', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_MOBILE_APP_4', 'MOBILE Project', 'DEPT_DIGITAL_TRANSFORMATION_4', 'DIGITAL', 'OFFICE_SG_MARINA_4', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_ERP_4', 'ERP System', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_BR_SAOPAULO_4', 'BR');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_OMEGA_FORCE_4', 'OMEGA', 'PRJ_MOBILE_APP_4', 'MOBILE Project', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_US_SF_4', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_PHOENIX_RISE_4', 'PHOENIX', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_MY_KL_4', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Team', 'PRJ_ERP_4', 'ERP System', 'DEPT_DIGITAL_TRANSFORMATION_4', 'DIGITAL', 'OFFICE_SG_MARINA_4', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Team', 'PRJ_MOBILE_APP_4', 'MOBILE Project', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_CA_TORONTO_4', 'CA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_OMEGA_FORCE_4', 'OMEGA', 'PRJ_MOBILE_APP_4', 'MOBILE Project', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_MY_KL_4', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_TITAN_GATE_4', 'TITAN', 'DEPT_ENGINEERING_4', 'Engineering', 'OFFICE_US_SF_4', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_ML_ENGINEERING_4', 'ML Team', 'PRJ_MOBILE_APP_4', 'MOBILE Project', 'DEPT_DIGITAL_TRANSFORMATION_4', 'DIGITAL', 'OFFICE_US_SF_4', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_MOBILE_APP_4', 'MOBILE Project', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_CA_TORONTO_4', 'CA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_QUANTUM_EDGE_4', 'QUANTUM', 'PRJ_ERP_4', 'ERP System', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_SG_MARINA_4', 'SG Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_NOVA_ONE_4', 'NOVA', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_US_SF_4', 'US Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_ERP_4', 'ERP System', 'DEPT_DIGITAL_TRANSFORMATION_4', 'DIGITAL', 'OFFICE_MY_KL_4', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000004', 'Organization_0004', 'TEAM_DESIGN_4', 'Design Team', 'PRJ_ERP_4', 'ERP System', 'DEPT_PRODUCT_4', 'Product', 'OFFICE_DE_BERLIN_4', 'DE');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_AI_RESEARCH_5', 'AI Research', 'PRJ_CRM_SYSTEM_5', 'CRM System', 'DEPT_AI_RESEARCH_5', 'AI Research', 'OFFICE_UK_LON_5', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_AI_RESEARCH_5', 'AI Research', 'PRJ_CRM_SYSTEM_5', 'CRM System', 'DEPT_AI_RESEARCH_5', 'AI Research', 'OFFICE_MY_KL_5', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_AI_RESEARCH_5', 'AI Research', 'PRJ_CRM_SYSTEM_5', 'CRM System', 'DEPT_LEGAL_5', 'Legal', 'OFFICE_UK_LON_5', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_AI_RESEARCH_5', 'AI Research', 'PRJ_CRM_SYSTEM_5', 'CRM System', 'DEPT_LEGAL_5', 'Legal', 'OFFICE_MY_KL_5', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_AI_RESEARCH_5', 'AI Research', 'PRJ_INVENTORY_MGMT_5', 'Inventory Management', 'DEPT_AI_RESEARCH_5', 'AI Research', 'OFFICE_UK_LON_5', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_AI_RESEARCH_5', 'AI Research', 'PRJ_INVENTORY_MGMT_5', 'Inventory Management', 'DEPT_AI_RESEARCH_5', 'AI Research', 'OFFICE_MY_KL_5', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_AI_RESEARCH_5', 'AI Research', 'PRJ_INVENTORY_MGMT_5', 'Inventory Management', 'DEPT_LEGAL_5', 'Legal', 'OFFICE_UK_LON_5', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_AI_RESEARCH_5', 'AI Research', 'PRJ_INVENTORY_MGMT_5', 'Inventory Management', 'DEPT_LEGAL_5', 'Legal', 'OFFICE_MY_KL_5', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_FRONTEND_5', 'Frontend Engineering', 'PRJ_CRM_SYSTEM_5', 'CRM System', 'DEPT_AI_RESEARCH_5', 'AI Research', 'OFFICE_UK_LON_5', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_FRONTEND_5', 'Frontend Engineering', 'PRJ_CRM_SYSTEM_5', 'CRM System', 'DEPT_AI_RESEARCH_5', 'AI Research', 'OFFICE_MY_KL_5', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_FRONTEND_5', 'Frontend Engineering', 'PRJ_CRM_SYSTEM_5', 'CRM System', 'DEPT_LEGAL_5', 'Legal', 'OFFICE_UK_LON_5', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_FRONTEND_5', 'Frontend Engineering', 'PRJ_CRM_SYSTEM_5', 'CRM System', 'DEPT_LEGAL_5', 'Legal', 'OFFICE_MY_KL_5', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_FRONTEND_5', 'Frontend Engineering', 'PRJ_INVENTORY_MGMT_5', 'Inventory Management', 'DEPT_AI_RESEARCH_5', 'AI Research', 'OFFICE_UK_LON_5', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_FRONTEND_5', 'Frontend Engineering', 'PRJ_INVENTORY_MGMT_5', 'Inventory Management', 'DEPT_AI_RESEARCH_5', 'AI Research', 'OFFICE_MY_KL_5', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_FRONTEND_5', 'Frontend Engineering', 'PRJ_INVENTORY_MGMT_5', 'Inventory Management', 'DEPT_LEGAL_5', 'Legal', 'OFFICE_UK_LON_5', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_FRONTEND_5', 'Frontend Engineering', 'PRJ_INVENTORY_MGMT_5', 'Inventory Management', 'DEPT_LEGAL_5', 'Legal', 'OFFICE_MY_KL_5', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_NEBULA_CORE_5', 'NEBULA', 'PRJ_INVENTORY_MGMT_5', 'INVENTORY Project', 'DEPT_LEGAL_5', 'Legal', 'OFFICE_UK_LON_5', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_AI_RESEARCH_5', 'AI Team', 'PRJ_NOVA_ONE_5', 'NOVA', 'DEPT_LEGAL_5', 'Legal', 'OFFICE_MY_KL_5', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_FRONTEND_5', 'Frontend Engineering', 'PRJ_INVENTORY_MGMT_5', 'INVENTORY Project', 'DEPT_TECHNICAL_OPERATIONS_5', 'TECHNICAL', 'OFFICE_MY_KL_5', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_FRONTEND_5', 'Frontend Engineering', 'PRJ_INVENTORY_MGMT_5', 'INVENTORY Project', 'DEPT_AI_RESEARCH_5', 'AI Department', 'OFFICE_AU_SYDNEY_5', 'AU');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_CRIMSON_WOLF_5', 'CRIMSON', 'PRJ_INVENTORY_MGMT_5', 'INVENTORY Project', 'DEPT_AI_RESEARCH_5', 'AI Department', 'OFFICE_UK_LON_5', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_AI_RESEARCH_5', 'AI Team', 'PRJ_ECHO_SYSTEM_5', 'ECHO', 'DEPT_AI_RESEARCH_5', 'AI Department', 'OFFICE_MY_KL_5', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_FRONTEND_5', 'Frontend Engineering', 'PRJ_INVENTORY_MGMT_5', 'INVENTORY Project', 'DEPT_DIGITAL_TRANSFORMATION_5', 'DIGITAL', 'OFFICE_MY_KL_5', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_FRONTEND_5', 'Frontend Engineering', 'PRJ_INVENTORY_MGMT_5', 'INVENTORY Project', 'DEPT_LEGAL_5', 'Legal', 'OFFICE_JP_TOKYO_5', 'JP');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_QUANTUM_EDGE_5', 'QUANTUM', 'PRJ_INVENTORY_MGMT_5', 'INVENTORY Project', 'DEPT_LEGAL_5', 'Legal', 'OFFICE_UK_LON_5', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_FRONTEND_5', 'Frontend Engineering', 'PRJ_AURORA_NEXUS_5', 'AURORA', 'DEPT_LEGAL_5', 'Legal', 'OFFICE_MY_KL_5', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_AI_RESEARCH_5', 'AI Team', 'PRJ_INVENTORY_MGMT_5', 'INVENTORY Project', 'DEPT_DIGITAL_TRANSFORMATION_5', 'DIGITAL', 'OFFICE_MY_KL_5', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_AI_RESEARCH_5', 'AI Team', 'PRJ_INVENTORY_MGMT_5', 'INVENTORY Project', 'DEPT_LEGAL_5', 'Legal', 'OFFICE_CA_TORONTO_5', 'CA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_NEBULA_CORE_5', 'NEBULA', 'PRJ_INVENTORY_MGMT_5', 'INVENTORY Project', 'DEPT_LEGAL_5', 'Legal', 'OFFICE_UK_LON_5', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_FRONTEND_5', 'Frontend Engineering', 'PRJ_NOVA_ONE_5', 'NOVA', 'DEPT_AI_RESEARCH_5', 'AI Department', 'OFFICE_MY_KL_5', 'MY Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_FRONTEND_5', 'Frontend Engineering', 'PRJ_INVENTORY_MGMT_5', 'INVENTORY Project', 'DEPT_CUSTOMER_EXPERIENCE_5', 'CUSTOMER', 'OFFICE_UK_LON_5', 'UK Office');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000005', 'Organization_0005', 'TEAM_AI_RESEARCH_5', 'AI Team', 'PRJ_CRM_SYSTEM_5', 'CRM Project', 'DEPT_LEGAL_5', 'Legal', 'OFFICE_BR_SAOPAULO_5', 'BR');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_AI_RESEARCH_6', 'AI Research', 'PRJ_ERP_6', 'ERP System', 'DEPT_FINANCE_6', 'Finance', 'OFFICE_UK_LON_6', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_AI_RESEARCH_6', 'AI Research', 'PRJ_ERP_6', 'ERP System', 'DEPT_FINANCE_6', 'Finance', 'OFFICE_MY_KL_6', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_AI_RESEARCH_6', 'AI Research', 'PRJ_ERP_6', 'ERP System', 'DEPT_FINANCE_6', 'Finance', 'OFFICE_US_SF_6', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_AI_RESEARCH_6', 'AI Research', 'PRJ_ERP_6', 'ERP System', 'DEPT_SALES_6', 'Sales', 'OFFICE_UK_LON_6', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_AI_RESEARCH_6', 'AI Research', 'PRJ_ERP_6', 'ERP System', 'DEPT_SALES_6', 'Sales', 'OFFICE_MY_KL_6', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_AI_RESEARCH_6', 'AI Research', 'PRJ_ERP_6', 'ERP System', 'DEPT_SALES_6', 'Sales', 'OFFICE_US_SF_6', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_AI_RESEARCH_6', 'AI Research', 'PRJ_PAYMENT_GATEWAY_6', 'Payment Gateway', 'DEPT_FINANCE_6', 'Finance', 'OFFICE_UK_LON_6', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_AI_RESEARCH_6', 'AI Research', 'PRJ_PAYMENT_GATEWAY_6', 'Payment Gateway', 'DEPT_FINANCE_6', 'Finance', 'OFFICE_MY_KL_6', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_AI_RESEARCH_6', 'AI Research', 'PRJ_PAYMENT_GATEWAY_6', 'Payment Gateway', 'DEPT_FINANCE_6', 'Finance', 'OFFICE_US_SF_6', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_AI_RESEARCH_6', 'AI Research', 'PRJ_PAYMENT_GATEWAY_6', 'Payment Gateway', 'DEPT_SALES_6', 'Sales', 'OFFICE_UK_LON_6', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_AI_RESEARCH_6', 'AI Research', 'PRJ_PAYMENT_GATEWAY_6', 'Payment Gateway', 'DEPT_SALES_6', 'Sales', 'OFFICE_MY_KL_6', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_AI_RESEARCH_6', 'AI Research', 'PRJ_PAYMENT_GATEWAY_6', 'Payment Gateway', 'DEPT_SALES_6', 'Sales', 'OFFICE_US_SF_6', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_AI_RESEARCH_6', 'AI Research', 'PRJ_MOBILE_APP_6', 'Mobile App', 'DEPT_FINANCE_6', 'Finance', 'OFFICE_UK_LON_6', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_AI_RESEARCH_6', 'AI Research', 'PRJ_MOBILE_APP_6', 'Mobile App', 'DEPT_FINANCE_6', 'Finance', 'OFFICE_MY_KL_6', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_AI_RESEARCH_6', 'AI Research', 'PRJ_MOBILE_APP_6', 'Mobile App', 'DEPT_FINANCE_6', 'Finance', 'OFFICE_US_SF_6', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_AI_RESEARCH_6', 'AI Research', 'PRJ_MOBILE_APP_6', 'Mobile App', 'DEPT_SALES_6', 'Sales', 'OFFICE_UK_LON_6', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_AI_RESEARCH_6', 'AI Research', 'PRJ_MOBILE_APP_6', 'Mobile App', 'DEPT_SALES_6', 'Sales', 'OFFICE_MY_KL_6', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_AI_RESEARCH_6', 'AI Research', 'PRJ_MOBILE_APP_6', 'Mobile App', 'DEPT_SALES_6', 'Sales', 'OFFICE_US_SF_6', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_QA_6', 'Quality Assurance', 'PRJ_ERP_6', 'ERP System', 'DEPT_FINANCE_6', 'Finance', 'OFFICE_UK_LON_6', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_QA_6', 'Quality Assurance', 'PRJ_ERP_6', 'ERP System', 'DEPT_FINANCE_6', 'Finance', 'OFFICE_MY_KL_6', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_QA_6', 'Quality Assurance', 'PRJ_ERP_6', 'ERP System', 'DEPT_FINANCE_6', 'Finance', 'OFFICE_US_SF_6', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_QA_6', 'Quality Assurance', 'PRJ_ERP_6', 'ERP System', 'DEPT_SALES_6', 'Sales', 'OFFICE_UK_LON_6', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_QA_6', 'Quality Assurance', 'PRJ_ERP_6', 'ERP System', 'DEPT_SALES_6', 'Sales', 'OFFICE_MY_KL_6', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_QA_6', 'Quality Assurance', 'PRJ_ERP_6', 'ERP System', 'DEPT_SALES_6', 'Sales', 'OFFICE_US_SF_6', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_QA_6', 'Quality Assurance', 'PRJ_PAYMENT_GATEWAY_6', 'Payment Gateway', 'DEPT_FINANCE_6', 'Finance', 'OFFICE_UK_LON_6', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_QA_6', 'Quality Assurance', 'PRJ_PAYMENT_GATEWAY_6', 'Payment Gateway', 'DEPT_FINANCE_6', 'Finance', 'OFFICE_MY_KL_6', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_QA_6', 'Quality Assurance', 'PRJ_PAYMENT_GATEWAY_6', 'Payment Gateway', 'DEPT_FINANCE_6', 'Finance', 'OFFICE_US_SF_6', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_QA_6', 'Quality Assurance', 'PRJ_PAYMENT_GATEWAY_6', 'Payment Gateway', 'DEPT_SALES_6', 'Sales', 'OFFICE_UK_LON_6', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_QA_6', 'Quality Assurance', 'PRJ_PAYMENT_GATEWAY_6', 'Payment Gateway', 'DEPT_SALES_6', 'Sales', 'OFFICE_MY_KL_6', 'Kuala Lumpur, Malaysia');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_QA_6', 'Quality Assurance', 'PRJ_PAYMENT_GATEWAY_6', 'Payment Gateway', 'DEPT_SALES_6', 'Sales', 'OFFICE_US_SF_6', 'San Francisco, USA');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_QA_6', 'Quality Assurance', 'PRJ_MOBILE_APP_6', 'Mobile App', 'DEPT_FINANCE_6', 'Finance', 'OFFICE_UK_LON_6', 'London, United Kingdom');
INSERT INTO Teamsref_v3 (orgId, orgName, teamId, teamName, projectId, projectName, deptId, deptName, officeId, loc)
VALUES ('ORG_000006', 'Organization_0006', 'TEAM_QA_6', 'Quality Assurance', 'PRJ_MOBILE_APP_6', 'Mobile App', 'DEPT_FINANCE_6', 'Finance', 'OFFICE_MY_KL_6', 'Kuala Lumpur, Malaysia');

-- ============================================
-- Verification queries
-- ============================================

-- Count records in this file
SELECT COUNT(*) as record_count FROM Teamsref_v3;

-- Show sample (first 10 records)
SELECT * FROM Teamsref_v3 LIMIT 10;
