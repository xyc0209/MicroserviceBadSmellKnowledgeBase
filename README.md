# Microservice Bad Smells Catalog

This repository contains the deployable implementation and seed database for an online **Microservice Bad Smells Catalog**. The catalog is associated with the paper:

> Yongchao Xing, Zhiying Tu, Dianhui Chu, Weipan Yang, and Yiming Lv. **Catalog, Impact, and Evaluation of Microservice Bad Smells: A Systematic Literature Review**. *Software: Practice and Experience*, 56(4):372–423, 2026. DOI: `10.1002/spe.70053`.

The system provides a web-based knowledge base for browsing, searching, and sharing microservice bad smell knowledge. Each smell entry records its aliases, description, detection method, consequences, causes, examples, classification, evidence score, literature sources, and related smells.

## Features

- Browse the complete microservice bad smell catalog.
- Filter smells by high-level categories, including internal design, communication and interaction, structure and infrastructure, decomposition, security, lifecycle management, and team/technology.
- Search smells by name in the web interface.
- View detailed smell knowledge, including description, detection, consequence, cause, example, source references, and related smells.
- Copy smell information from the interface for reuse in research, documentation, or tool integration.
- Browse smell type information in table and tree-map views.
- Use the backend REST APIs to retrieve smell entries, smell types, and smell relations.

## Repository Structure

```text
.
├── catalog/
│   ├── dist/                         # Built frontend assets
│   │   ├── index.html
│   │   ├── css/
│   │   └── js/
│   ├── msbs-backend-8088.jar          # Spring Boot backend executable JAR
│   └── nohup.out                      # Example runtime log; can be ignored
├── sql/
│   ├── msbs_en.sql                    # Main microservice bad smell catalog database
│   ├── ts_auth_mysql.sql              # Auxiliary/example SQL files
│   ├── ts_config_mysql.sql
│   ├── ts_consign_mysql.sql
│   ├── ts_consign_price_mysql.sql
│   ├── ts_contacts_mysql.sql
│   ├── ts_food_mysql.sql
│   ├── ts_station_mysql.sql
│   ├── ts_train_mysql.sql
│   ├── ts_travel_mysql.sql
│   └── ts_user_mysql.sql
└── README.md
```

> Note: If the archive contains a nested `catalog/catalog/` directory, it is a duplicated deployment copy. The root-level `catalog/dist/`, `catalog/msbs-backend-8088.jar`, and `sql/msbs_en.sql` are sufficient for a normal deployment.

## Technology Stack

### Frontend

- Vue 3
- Vue Router
- Element Plus
- AntV G6
- umi-request
- citation-js

The provided frontend is a built deployment artifact under `catalog/dist/`.

### Backend

- Java 8
- Spring Boot 2.7.14
- MyBatis Plus 3.5.2
- MySQL Connector/J
- Knife4j / Swagger support

The backend is provided as a runnable Spring Boot JAR: `catalog/msbs-backend-8088.jar`.

### Database

- Recommended: MySQL 8.0+
- Main database script: `sql/msbs_en.sql`

The main catalog database contains:

- `antipattern_info`: smell entries
- `antipattern_type`: smell category/type hierarchy
- `antipattern_relation`: relations among smells
- `user`: basic user table used by the backend

The current seed data contains 69 smell entries, 23 type records, and 12 smell-relation records.

## Quick Start

### 1. Prepare MySQL

Create a database:

```sql
CREATE DATABASE msbs_en DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
```

Import the main catalog data:

```bash
mysql -u root -p msbs_en < sql/msbs_en.sql
```

If you use MySQL 5.7 or another database version that does not support `utf8mb4_0900_ai_ci`, replace it with `utf8mb4_general_ci` or another compatible collation before importing the SQL file.

### 2. Start the Backend

Run the backend JAR and override the database configuration with your local database information:

```bash
java -jar catalog/msbs-backend-8088.jar \
  --server.port=8088 \
  --spring.datasource.url="jdbc:mysql://127.0.0.1:3306/msbs_en?useUnicode=true&characterEncoding=utf8&serverTimezone=Asia/Shanghai" \
  --spring.datasource.username="YOUR_USERNAME" \
  --spring.datasource.password="YOUR_PASSWORD"
```

After startup, the backend listens on:

```text
http://127.0.0.1:8088
```

### 3. Start the Frontend

Serve the built frontend files:

```bash
cd catalog/dist
python3 -m http.server 8000
```

Then open:

```text
http://127.0.0.1:8000
```

### 4. Configure Backend Address for the Frontend

The built frontend may contain a hard-coded backend address. If the frontend cannot access the backend, replace the backend URL in the built JavaScript files:

```bash
grep -R "47.92.224.21:8088" -n catalog/dist/js
```

For local deployment on Linux, you can replace it with:

```bash
sed -i 's#http://47.92.224.21:8088#http://127.0.0.1:8088#g' catalog/dist/js/*.js
```

On macOS, use:

```bash
sed -i '' 's#http://47.92.224.21:8088#http://127.0.0.1:8088#g' catalog/dist/js/*.js
```

For production deployment, replace it with the public backend API address or rebuild the frontend from source using the desired API base URL.

## Main API Endpoints

The frontend mainly uses the following backend APIs.

### List all smell entries

```http
GET /antipatternInfo/list
```

Example:

```bash
curl "http://127.0.0.1:8088/antipatternInfo/list"
```

### List smells by category

```http
GET /antipatternInfo/list/getByCategoryName?catagoryName={categoryName}
```

Example:

```bash
curl "http://127.0.0.1:8088/antipatternInfo/list/getByCategoryName?catagoryName=Internal%20Design"
```

The parameter name is intentionally written as `catagoryName` because this is the name used by the current frontend and backend implementation.

### List related smells

```http
GET /antipatternRelation/list/getRelatedAntipatterns?name={smellName}
```

Example:

```bash
curl "http://127.0.0.1:8088/antipatternRelation/list/getRelatedAntipatterns?name=Bloated%20Service"
```

### List smell types

```http
GET /antipatternType/list
```

Example:

```bash
curl "http://127.0.0.1:8088/antipatternType/list"
```

## Data Model

### `antipattern_info`

Stores the main smell knowledge entries.

| Field | Description |
| --- | --- |
| `id` | Primary key |
| `name` | Smell name |
| `aliases` | Alternative names |
| `description` | Smell description |
| `detection` | Detection method or detection clue |
| `consequences` | Potential quality impacts |
| `cause` | Possible causes |
| `example` | Example scenario |
| `sources` | Literature sources, stored as JSON text |
| `categoryName` | High-level category |
| `typeName` | Fine-grained type |
| `evidence` | Evidence or impact score |
| `isDelete` | Logical deletion flag |

### `antipattern_type`

Stores category/type information.

| Field | Description |
| --- | --- |
| `id` | Primary key |
| `name` | Type name |
| `description` | Type description |
| `parentName` | Parent type name; `NULL` for top-level categories |
| `orderIndex` | Display order |
| `isDelete` | Logical deletion flag |

### `antipattern_relation`

Stores relations between smells.

| Field | Description |
| --- | --- |
| `id` | Primary key |
| `AntiPatternName` | Source smell name |
| `relatedAntiPatternName` | Related smell name |
| `relation` | Relation type, such as `precedes` or `relates` |
| `isDelete` | Logical deletion flag |

## Deployment Notes

### Backend configuration

The backend JAR contains default database settings. For security and reproducibility, do not rely on embedded production credentials. Always override database configuration through command-line parameters, environment variables, or an external Spring Boot configuration file.

Example using an external configuration file:

```bash
java -jar catalog/msbs-backend-8088.jar --spring.config.location=file:./application-prod.yml
```

Example `application-prod.yml`:

```yaml
server:
  port: 8088

spring:
  datasource:
    driver-class-name: com.mysql.cj.jdbc.Driver
    url: jdbc:mysql://127.0.0.1:3306/msbs_en?useUnicode=true&characterEncoding=utf8&serverTimezone=Asia/Shanghai
    username: YOUR_USERNAME
    password: YOUR_PASSWORD
  mvc:
    pathmatch:
      matching-strategy: ANT_PATH_MATCHER

mybatis-plus:
  configuration:
    map-underscore-to-camel-case: false
  global-config:
    db-config:
      logic-delete-field: isDelete
      logic-delete-value: 1
      logic-not-delete-value: 0
```

### Frontend deployment with Nginx

Example Nginx configuration:

```nginx
server {
    listen 80;
    server_name your-domain.example;

    root /path/to/catalog/dist;
    index index.html;

    location / {
        try_files $uri $uri/ /index.html;
    }
}
```

If the backend and frontend are deployed on different domains or ports, make sure CORS is enabled on the backend and the frontend API base URL points to the correct backend address.

## Troubleshooting

### Frontend shows `ERR_FAILED`, `502`, or cannot load smell data

Check whether the frontend is still pointing to an old backend address:

```bash
grep -R "http://" -n catalog/dist/js | head
```

Then replace the backend URL with your deployed backend address.

### Backend cannot connect to MySQL

Check:

- Whether MySQL is running.
- Whether the database `msbs_en` exists.
- Whether `sql/msbs_en.sql` has been imported.
- Whether the username and password are correct.
- Whether the JDBC URL uses the correct host, port, database name, and timezone.

### SQL import fails because of collation

If your MySQL version does not support `utf8mb4_0900_ai_ci`, replace it:

```bash
sed -i 's/utf8mb4_0900_ai_ci/utf8mb4_general_ci/g' sql/msbs_en.sql
```

Then import the SQL file again.

## Citation

If you use this knowledge base or system in academic work, please cite:

```bibtex
@article{xing2026catalog,
  title   = {Catalog, Impact, and Evaluation of Microservice Bad Smells: A Systematic Literature Review},
  author  = {Xing, Yongchao and Tu, Zhiying and Chu, Dianhui and Yang, Weipan and Lv, Yiming},
  journal = {Software: Practice and Experience},
  volume  = {56},
  number  = {4},
  pages   = {372--423},
  year    = {2026},
  doi     = {10.1002/spe.70053}
}
```
