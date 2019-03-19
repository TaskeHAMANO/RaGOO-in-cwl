# RaGOO-in-docker
Wrapper tool of [RaGOO](https://github.com/malonge/RaGOO) by [CWL](https://github.com/common-workflow-language/common-workflow-language) and [Docker](https://www.docker.com)

## Requirements

* cwl-runner such as [cwltool](https://github.com/common-workflow-language/cwltool)
* Docker
    * If you cannot use docker, this tool runs with ```--no-container`` options.
    * However, you have to install dependent tools of RaGOO, such as python3, intervaltree, numpy, and minimap2


## How to use

```
cwl-runner --outdir ${PATH_TO_OUTPUT_DIR} \
           ragoo.cwl \
           --contigs_fasta ${PATH_TO_CONTIG_FILE} \
           --reference_fasta  ${PATH_TO_REFERENCE_FILE} \
```

## Note

As the original RaGOO implementation cannot handle with absolute file path, this tool uses [modified version](https://github.com/TaskeHAMANO/RaGOO) in the container.
