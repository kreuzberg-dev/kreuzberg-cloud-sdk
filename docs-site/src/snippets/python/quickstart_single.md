```python title="Python"
from pathlib import Path

from xberg_io_sdk import XbergClient

with XbergClient(api_key="kz_...") as client:
    job = client.extract_and_wait(file=Path("invoice.pdf"))
    if job.result is not None:
        print(job.result.content)
```
