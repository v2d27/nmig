# NMIG - the database migration from MySQL to PostgreSQL tool.

NMIG is an app, intended to make a process of migration from MySQL to PostgreSQL as easy and smooth as possible.

## VERSION
Current version is 6.3.0, built on July 13, 2025.

## KEY FEATURES
- Precise migration of the database structure - NMIG converts MySQL data types to corresponding PostgreSQL data types, creates constraints, indexes, primary and foreign keys exactly as they were before migration.
- Ability to rename tables and columns during migration.
- Ability to recover migration process if disaster took place without restarting from the beginning.
- Ability to migrate big databases fast - in order to migrate data NMIG utilizes PostgreSQL COPY protocol.
- Ease of monitoring - NMIG will provide detailed output about every step, it takes during the execution.
- Ease of configuration - all the parameters required for migration should be put in one single JSON document.
- Support MySQL v8.0+

## SYSTEM REQUIREMENTS
- Node.js 18.16.1 (the LTS version, upon Nmig's last major update) or higher
- Docker image for linux AMD and ARM version

## USAGE
- For manually running through source code. Please visit [https://github.com/AnatolyUss/nmig](https://github.com/AnatolyUss/nmig) for more information
- For docker image. Run this command:

```sh
docker run --rm \
  -v $(pwd)/config:/usr/src/app/config:ro \
  hercules9/nmig:latest
```

- The `config` folder contains all configuration files for nmig. You can download it here [github.com/npmig/config](https://github.com/AnatolyUss/nmig/tree/master/config).  



## LICENSE
NMIG is available under ["GNU GENERAL PUBLIC LICENSE" (v.3)](http://www.gnu.org/licenses/gpl.txt).