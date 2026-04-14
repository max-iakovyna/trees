# CARES Assignment

## Prerequisites

- Python 3.13
- claude-sonnet-4-5 API key

## Getting Started

### 1. Create a Virtual Environment

```bash
python3.13 -m venv venv
```

### 2. Activate the Virtual Environment

**macOS / Linux:**

```bash
source venv/bin/activate
```

**Windows:**

```bash
venv\Scripts\activate
```

### 3. Install Requirements

```bash
pip install -r requirements.txt
```

### 4. Initialize the Database

Run the initialization script to start PostgreSQL:

```bash
bash init_pg.sh
```

### 5. Set the API Key

Set the `ANTHROPIC_API_KEY` environment variable before running the notebook:

**macOS / Linux:**

```bash
export ANTHROPIC_API_KEY="your-api-key-here"
```

**Windows:**

```bash
set ANTHROPIC_API_KEY=your-api-key-here
```

### 6. Run the Notebook

Launch Jupyter and open the assignment notebook:

```bash
jupyter notebook assignment.ipynb
```