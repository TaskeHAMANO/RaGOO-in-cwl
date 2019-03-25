#!/user/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
requirements:
    - class: InitialWorkDirRequirement
      listing:
      - entry: $(inputs.contigs_fasta)
        entryname: $(inputs.contigs_fasta.basename)
        writable: true
      - entry: $(inputs.reference_fasta)
        entryname: $(inputs.reference_fasta.basename)
        writable: true
baseCommand: ["python", "/opt/RaGOO/ragoo.py"]
hints:
    DockerRequirement:
        dockerImageId: suzuki/ragoo
        dockerFile:
            $include: ../containers/RaGOO/Dockerfile
inputs:
    "contigs_fasta":
        type: File
        inputBinding:
            position: 1
    "reference_fasta":
        type: File
        inputBinding:
            position: 2
    "exclude":
        type: File?
        inputBinding:
            position: 3
            prefix: "-e"
    "gff":
        type: File?
        inputBinding:
            position: 4
            prefix: "-gff"
    "break_chimera":
        type: boolean?
        inputBinding:
            position: 5
            prefix: "-b"
    "threads":
        type: int?
        inputBinding:
            position: 6
            prefix: "-t"
    "gap_size":
        type: int?
        inputBinding:
            position: 7
            prefix: "-g"
    "call_sv":
        type: boolean?
        inputBinding:
            position: 8
            prefix: "-s"
    "confidence_score":
        type: float?
        inputBinding:
            position: 9
            prefix: "-i"
    "list_contigs":
        type: File?
        inputBinding:
            position: 10
            prefix: "-j"

outputs:
    "out":
        type: Directory
        outputBinding:
            glob: ragoo_output
