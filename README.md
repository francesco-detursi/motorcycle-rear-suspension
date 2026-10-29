# Multibody Analysis and Optimisation of a Motorcycle Rear Suspension

Academic multibody modelling and design study completed at the University of Bologna using MSC Adams. Starting from supplied components and connection points, the project defines and verifies the mechanism constraints, evaluates transmitted forces and selects geometry and spring parameters that reduce joint loading while meeting a specified spring-force requirement.

**[Read the detailed technical report (PDF)](docs/RS_Detailed_Report.pdf)**

## Overview

The suspension comprises a wheel, swingarm, connecting rod and rocker arm, with a spring–damper connection to the chassis reference. The wheel receives a prescribed vertical sinusoidal displacement with 100 mm amplitude and 1 Hz frequency over two seconds.

The study combines:

- Joint definition and verification of constraint consistency.
- Kinematic and reaction-force analysis under a common prescribed input.
- Parameter optimisation followed by a three-level, five-factor full-factorial design of experiments (243 combinations).
- A separate investigation of a compliant rod–swingarm connection using a bushing.

## Reported results

The selected rigid-joint configuration reduces the peak rod–swingarm reaction from 3668.3 N to 2643.4 N, approximately 28%. Its peak absolute spring–damper force is 2562.8 N, within the required 2500–3000 N interval and approximately 14% below the initial value.

The bushing configuration further reduces transmitted reaction peaks, but its spring-force peak is approximately 2000 N, estimated from the plotted response. It does **not** satisfy the same spring-force requirement and is included as an exploratory compliance study, not as the accepted final design.

## Repository contents

```text
motorcycle-rear-suspension/
├── README.md
├── .gitignore
├── docs/
│   └── RS_Detailed_Report.pdf
└── models/
    ├── RearSuspension_Optimised_Rigid.cmd
    └── RearSuspension_Optimised_Bushing.cmd
```

| Model | Purpose | Active connection |
|---|---|---|
| `RearSuspension_Optimised_Rigid.cmd` | Selected rigid-joint design meeting the force requirement | Cylindrical joint; bushing inactive |
| `RearSuspension_Optimised_Bushing.cmd` | Compliance study using the selected geometry | Bushing; cylindrical joint inactive |

Both command files define the model `Rear_Susp`, including geometry, joints, force elements, measures and simulation-script definitions. The wheel colour is black. Importing a file creates the model but does not automatically run a simulation.

The repository contains the two final model configurations. Earlier configurations, historical simulation results and the complete optimisation campaign are documented in the report rather than supplied as separate executable studies. Script names retained in the exported model do not restore earlier parameter values.

## Requirements

- MSC Adams/View, with the project prepared for MSC Adams Student 2025.1.
- A working Adams installation and the relevant software entitlement.

The `.cmd` files are Adams/View command files, not Windows command scripts. Import them from Adams rather than double-clicking them in Windows. No separate CAD geometry files are referenced by these exports. Compatibility with other Adams releases has not been verified.

## Open a model

1. Select **Code → Download ZIP** on GitHub and extract the archive.
2. Open Adams/View in an empty session. Choose **Import a file** from the welcome dialogue, or use **File → Import**.
3. Set the file type to **Adams View Command File (*.cmd)**.
4. Browse to `models/RearSuspension_Optimised_Rigid.cmd` and confirm the import.
5. Inspect the model and use **Model Verify** before running it.

Open the bushing file in a separate empty session. Do not import both into the same database: they use the same model name.

The [Adams/View command-file documentation](https://nexus.hexagon.com/documentationcenter/en-US/bundle/adams_2023.4.1/page/adams_help/Adams_Basic_Package/view/view_appendix/TOC.Adams.View.command.file.xhtml) describes this model-exchange format.

## Run the final configurations

Use the following settings without changing the imported design variables:

| Setting | Rigid-joint model | Bushing model |
|---|---|---|
| Analysis mode | Kinematics | Dynamics |
| End time | 2 s | 2 s |
| Output steps | 200 | 500 |
| Initial static equilibrium | Disabled | Disabled |
| Existing simulation script | `second_opt_sim` | `cedevolezze_dynamic_sim` |

Model Verify should report no redundant constraint equations. With the prescribed motions active, the rigid configuration has zero remaining degrees of freedom; the bushing configuration has four, governed by its dynamic response.

In Adams/PostProcessor, inspect `forza_molla` for the signed spring–damper force. For the rod–swingarm connection, use `reazione_beam_swingarm` in the rigid model and `bushing_beam_swingarm` in the compliant model. Assess the spring requirement using the **maximum absolute force**, not only the positive peak.

Adams generates simulation outputs locally when the models are run. A local `results/` working folder may be used to keep them separate; it is excluded from version control. No historical solver outputs are included here.

## Scope and limitations

The results concern a simplified suspension under one prescribed excitation. Reduced connection forces do not establish lower stresses, improved fatigue life or whole-vehicle performance. The selected design is feasible for the stated requirement and load case; it is not a proven global optimum. Additional excitations, tolerance studies, stress analysis and bushing tuning would be needed for further design assessment.

## Author

Francesco De Tursi — MSc student in Mechanical Engineering, University of Bologna.

[LinkedIn](https://www.linkedin.com/in/francescodetursi/) · [GitHub](https://github.com/francesco-detursi) · [Email](mailto:ffrancesco.detursi@gmail.com)
