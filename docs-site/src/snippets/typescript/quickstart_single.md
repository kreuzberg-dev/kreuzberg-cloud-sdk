```ts title="TypeScript"
import { readFile } from "node:fs/promises";

import { XbergClient } from "@xberg-io/sdk";

const client = new XbergClient({ apiKey: process.env.XBERG_API_KEY! });

const data = await readFile("invoice.pdf");
const job = await client.extractAndWait({
  file: { name: "invoice.pdf", data, mimeType: "application/pdf" },
});

console.log(job.result?.content);
```
