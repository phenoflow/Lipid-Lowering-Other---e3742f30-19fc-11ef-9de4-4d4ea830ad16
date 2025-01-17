cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  lipid-lowering-other-300mg---primary:
    run: lipid-lowering-other-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  lipid-lowering-other-750mg---primary:
    run: lipid-lowering-other-750mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-300mg---primary/output
  lipid-lowering-other-250mg---primary:
    run: lipid-lowering-other-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-750mg---primary/output
  lipid-lowering-other-1000mg---primary:
    run: lipid-lowering-other-1000mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-250mg---primary/output
  lipid-lowering-other-fenofibrate---primary:
    run: lipid-lowering-other-fenofibrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-1000mg---primary/output
  orange-lipid-lowering-other---primary:
    run: orange-lipid-lowering-other---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-fenofibrate---primary/output
  lipid-lowering-other-colestyramine---primary:
    run: lipid-lowering-other-colestyramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: orange-lipid-lowering-other---primary/output
  lipid-lowering-other-200mg---primary:
    run: lipid-lowering-other-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-colestyramine---primary/output
  lipid-lowering-other-267mg---primary:
    run: lipid-lowering-other-267mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-200mg---primary/output
  lipid-lowering-other-actavis---primary:
    run: lipid-lowering-other-actavis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-267mg---primary/output
  lipid-lowering-other-400mg---primary:
    run: lipid-lowering-other-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-actavis---primary/output
  lipid-lowering-other-bristol---primary:
    run: lipid-lowering-other-bristol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-400mg---primary/output
  lipid-lowering-other-625mg---primary:
    run: lipid-lowering-other-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-bristol---primary/output
  lipid-lowering-other-600mg---primary:
    run: lipid-lowering-other-600mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-625mg---primary/output
  lipid-lowering-other-seven---primary:
    run: lipid-lowering-other-seven---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-600mg---primary/output
  lipid-lowering-other-160mg---primary:
    run: lipid-lowering-other-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-seven---primary/output
  lipid-lowering-other-roche---primary:
    run: lipid-lowering-other-roche---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-160mg---primary/output
  lipid-lowering-other-100mg---primary:
    run: lipid-lowering-other-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-roche---primary/output
  lipid-lowering-other-500mg---primary:
    run: lipid-lowering-other-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-100mg---primary/output
  lipid-lowering-other-bezafibrate---primary:
    run: lipid-lowering-other-bezafibrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-500mg---primary/output
  lipid-lowering-other-sugarfree---primary:
    run: lipid-lowering-other-sugarfree---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-bezafibrate---primary/output
  lipid-lowering-other-hillcross---primary:
    run: lipid-lowering-other-hillcross---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-sugarfree---primary/output
  lipid-lowering-other-colestipol---primary:
    run: lipid-lowering-other-colestipol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-hillcross---primary/output
  lipid-lowering-other-micronised---primary:
    run: lipid-lowering-other-micronised---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-colestipol---primary/output
  lipid-lowering-other-375mg---primary:
    run: lipid-lowering-other-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-micronised---primary/output
  lipid-lowering-other-pharmacia---primary:
    run: lipid-lowering-other-pharmacia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-375mg---primary/output
  lipid-lowering-other-colestid---primary:
    run: lipid-lowering-other-colestid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-pharmacia---primary/output
  lipid-lowering-other-aspartame---primary:
    run: lipid-lowering-other-aspartame---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-colestid---primary/output
  lipid-lowering-other-abbott---primary:
    run: lipid-lowering-other-abbott---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-aspartame---primary/output
  lipid-lowering-other-fournier---primary:
    run: lipid-lowering-other-fournier---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-abbott---primary/output
  lipid-lowering-other-powder---primary:
    run: lipid-lowering-other-powder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-fournier---primary/output
  lipid-lowering-other-pfizer---primary:
    run: lipid-lowering-other-pfizer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-powder---primary/output
  lipid-lowering-other-niaspan---primary:
    run: lipid-lowering-other-niaspan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-pfizer---primary/output
  nicotinic-lipid-lowering-other---primary:
    run: nicotinic-lipid-lowering-other---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: lipid-lowering-other-niaspan---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: nicotinic-lipid-lowering-other---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
