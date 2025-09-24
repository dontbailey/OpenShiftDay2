# OpenShift Day 2 Operations

This site contains documentation for Williams Company OpenShift Day 2 Operations, covering essential tasks for maintaining and managing OpenShift clusters post-installation.

## Topics Covered

### OpenShift Administration

- Identity Provider Configuration
- Internal Image Registry Setup
- Global Pull Secret Management

### Best Practices

- Node Management
- Monitoring and Alerting
- Authentication and Authorization
- Cluster Scaling

### Reference Materials

- Markdown Documentation
- OpenShift Architecture
- Day 2 Operations Tasks

## Running Locally

1. Clone this repository

```bash
git clone https://github.com/dontbailey/OpenShiftDay2
```

1. Install dependencies

```bash
pip install -r requirements.txt
```

1. Build the site

    ```bash
    mkdocs build
    ```

4. Serve the site locally

    ```bash
    mkdocs serve
    ```

Or use the provided script:

```bash
./dev/mkdocs.sh 8000
```

Then open your browser and navigate to `http://localhost:8000`.
