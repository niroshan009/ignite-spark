# ignite-spark

Start ignite with docker compose
Run below command to connect to the cluster
```bash
docker run --rm -it --network=host -e LANG=C.UTF-8 -e LC_ALL=C.UTF-8 -v ./sql/:/opt/ignite/downloads/ apacheignite/ignite:3.1.0 cli
```

connect to cluster from above container
```bash
connect http://localhost:10300
```

initialize the cluster
```bash
cluster init --name=ignite3
```

run below to switch to sql mode
```bash
sql
```

reference table
```sql
CREATE ZONE IF NOT EXISTS Chinook WITH replicas=2, storage_profiles='default';
CREATE ZONE IF NOT EXISTS ChinookReplicated WITH replicas=3, partitions=25, storage_profiles='default';

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
) zone ChinookReplicated;

CREATE INDEX IF NOT EXISTS idx_orgId ON Teamsref_v3 (orgId);
CREATE INDEX IF NOT EXISTS idx_teamId ON Teamsref_v3 (teamId);
CREATE INDEX IF NOT EXISTS idx_projectId ON Teamsref_v3 (projectId);
CREATE INDEX IF NOT EXISTS idx_deptId ON Teamsref_v3 (deptId);
CREATE INDEX IF NOT EXISTS idx_officeId ON Teamsref_v3 (officeId);
```