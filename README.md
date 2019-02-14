### Mysql backup s3

Variables used:
| Variable                |  Description                        |
--------------------------|-------------------------------------|
| `MYSQL_HOST`            | Mysql host                          | 
| `MYSQL_PORT`            | Mysql port                          |
| `MYSQL_DATABASE`        | Mysql target database               |
| `MYSQL_USER`            | Mysql user                          |
| `MYSQL_PASSWORD`        | Mysql password                      |
| `AWS_ACCESS_KEY_ID`     | AWS S3 accessKeyId                  |
| `AWS_SECRET_ACCESS_KEY` | AWS S3 secretAccessKey              |
| `AWS_S3_FILE_PREFIX`    | Prefix to generate AWS s3 file name |
| `AWS_S3_BUCKET`         | Target S3 bucket                    |

```bash
docker run -e MYSQL_HOST=mysql -e MYSQL_PORT=3306 -e MYSQL_USER=user -e MYSQL_PASSWORD=pwd -e MYSQL_DATABASE=mydb -e AWS_S3_FILE_PREFIX=s3prefix -e AWS_S3_BUCKET=mybucket --rm softonic./mysql-backup-s3
```
