# RaGOO-in-docker
Wrapper tool of [RaGOO](https://github.com/malonge/RaGOO) by CWL and Docker

## Requirements

* cwl-runner such as [cwltool](https://github.com/common-workflow-language/cwltool)

Optional(Recommend)

* Docker


## How to use

```
cwl-runner --outdir ${PATH_TO_OUTPUT_DIR} \
           ragoo.cwl \
           --contigs_fasta ${PATH_TO_CONTIG_FILE} \
           --reference_fasta  ${PATH_TO_REFERENCE_FILE} \
```

## Note

As the original RaGOO implementation cannot handle with absolute file path, this tool uses [modified version](https://github.com/TaskeHAMANO/RaGOO) in the container.
