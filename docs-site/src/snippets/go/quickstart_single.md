```go title="Go"
package main

import (
	"context"
	"fmt"
	"log"
	"os"

	xberg "github.com/xberg-io/sdks/packages/go"
)

func main() {
	client, err := xberg.New(xberg.WithAPIKey("kz_..."))
	if err != nil {
		log.Fatal(err)
	}

	file, err := os.Open("invoice.pdf")
	if err != nil {
		log.Fatal(err)
	}
	defer file.Close()

	job, err := client.ExtractAndWait(context.Background(),
		xberg.FileSource{Name: "invoice.pdf", Reader: file}, nil)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println(job.Status)
}
```
