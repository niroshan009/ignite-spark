# ignite-spark

Start ignite with docker compose
Run below command to connect to the Ignite3 CLI where you can communicate with Ignite3 Cluster
```bash
docker run --rm -it --network=host -e LANG=C.UTF-8 -e LC_ALL=C.UTF-8 -v ./sql/:/opt/ignite/downloads/ apacheignite/ignite:3.1.0 cli
```

Once inside the container it will automatically connect to the Ignite cluster. If it does not run bellow command to connect to Ignite 3 clustter
```bash
connect http://localhost:10300
```

initialize the cluster with below command
```bash
cluster init --name=ignite3
```

run below to enter to sql mode where you can execute sql queries
```bash
sql
```

Create a reference table
```sql
-- create zones to control how data is distributed and replicated
CREATE ZONE IF NOT EXISTS TeamsRefReplicated WITH replicas=3, partitions=25, storage_profiles='default';

CREATE TABLE Teamsref_v3(
    id UUID  DEFAULT rand_uuid(),
    orgId VARCHAR(200),
    orgName VARCHAR(200),
    teamId VARCHAR(200),
    teamName VARCHAR(200),
    projectId VARCHAR(200),
    projectName VARCHAR(200),
    deptId VARCHAR(200),
    deptName VARCHAR(200),
    officeId VARCHAR(200),
    loc VARCHAR(200),
    PRIMARY KEY(id)
) zone TeamsRefReplicated;

CREATE INDEX IF NOT EXISTS idx_orgId ON Teamsref_v3 (orgId);
CREATE INDEX IF NOT EXISTS idx_teamId ON Teamsref_v3 (teamId);
CREATE INDEX IF NOT EXISTS idx_projectId ON Teamsref_v3 (projectId);
CREATE INDEX IF NOT EXISTS idx_deptId ON Teamsref_v3 (deptId);
CREATE INDEX IF NOT EXISTS idx_officeId ON Teamsref_v3 (officeId);
```