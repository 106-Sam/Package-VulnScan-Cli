# Package Vulnerability Scanner

A CLI tool that compares package versions between Chainguard and GitHub repositories, and checks for CVE vulnerabilities.

## Features

- 🔍 **Chainguard Version Checking**: Gets latest version from Chainguard container registry
- 🐙 **GitHub Integration**: Finds GitHub repositories and latest releases/tags
- 🛡️ **Vulnerability Scanning**: Checks NVD database for CVEs with severity scores
- 📊 **Detailed Reporting**: Shows comprehensive results with emojis and formatting
- 💾 **JSON Export**: Save results to JSON file for further processing

## Installation

1. Clone or download the script
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

## Usage

### Basic Usage
```bash
python package_vulnerability_scanner.py -f packages.txt
```

### With Output File
```bash
python package_vulnerability_scanner.py -f packages.txt -o results.json
```

### With GitHub Token (Recommended)
```bash
python package_vulnerability_scanner.py -f packages.txt --github-token YOUR_GITHUB_TOKEN
```

### With NVD API Key (Faster Scanning)
```bash
python package_vulnerability_scanner.py -f packages.txt --nvd-api-key YOUR_NVD_KEY
```

### Using Environment Variables
```bash
export GITHUB_TOKEN=your_github_token
export NVD_API_KEY=your_nvd_api_key
python package_vulnerability_scanner.py -f packages.txt
```

## Package File Format

Create a text file with one package name per line:

```
python
node
nginx
redis
# Comments start with #
postgres
```

## API Keys Setup

### GitHub Token (Optional but Recommended)
1. Go to GitHub Settings > Developer settings > Personal access tokens
2. Generate a new token with `public_repo` scope
3. Use with `--github-token` or set `GITHUB_TOKEN` environment variable

### NVD API Key (Optional)
1. Visit [NVD API](https://nvd.nist.gov/developers/request-an-api-key)
2. Request a free API key
3. Use with `--nvd-api-key` or set `NVD_API_KEY` environment variable

## Output Format

The tool provides detailed console output and optional JSON export:

```
📦 Package: python
----------------------------------------
🏷️  Chainguard Version: latest
🐙 GitHub Repository: python/cpython
🏷️  GitHub Version: v3.11.4
⚠️  Vulnerabilities (2 found):
   🟡 CVE-2023-1234 - MEDIUM (Score: 5.5)
      Description: Sample vulnerability description...
```

## Error Handling

The tool handles various error scenarios:
- Missing package files
- Network connectivity issues
- API rate limiting
- Invalid package names
- Missing repositories

## Requirements

- Python 3.7+
- requests library
- Internet connection
- Optional: GitHub token for higher API limits
- Optional: NVD API key for faster vulnerability scanning

## License

MIT License - feel free to modify and distribute.
