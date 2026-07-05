CREATE NAMESPACE demo;

CREATE DATABASE IF NOT EXISTS demo.db;

CREATE TABLE demo.db.teams (
  orgId STRING,
  orgName STRING,
  teams ARRAY<STRUCT<teamId: STRING, teamName: STRING, members: ARRAY<STRUCT<memberId: STRING, memberName: STRING, position: STRING>>>>,
  projects ARRAY<STRUCT<projectId: STRING, projectName: STRING, status: STRING, tasks: ARRAY<STRUCT<taskId: STRING, taskName: STRING, assignee: STRING, dueDate: STRING>>>>,
  departments ARRAY<STRUCT<deptId: STRING, deptName: STRING, budget: DOUBLE, employees: ARRAY<STRUCT<empId: STRING, empName: STRING, role: STRING, salary: DOUBLE>>>>,
  offices ARRAY<STRUCT<officeId: STRING, location: STRING, capacity: BIGINT, facilities: ARRAY<STRUCT<facilityId: STRING, facilityName: STRING, quantity: BIGINT, available: BOOLEAN>>>>)
USING iceberg
TBLPROPERTIES (
  'write.format.default' = 'parquet',
  'write.parquet.compression-codec' = 'zstd');