# Final Report: OpenClaw / Hermes Agent Multi-Agent Short Video Workflow

## 1. Project Title and Team Members

Project title: NUTN CSIE 60-second Promotional Video

Team members:
- Name: to be added
- Student ID: to be added

## 2. Problem Definition

This project aims to create a 60-second promotional video for the Department of Computer Science and Information Engineering, National University of Tainan.

The target audience includes high school students, new students, parents, and general viewers. The core message is that students can study computer science in Tainan and build practical abilities through programming, systems, AI, data, teamwork, and project-based learning.

The video is designed to be 60 seconds long, with an accepted range of 55 to 65 seconds.

## 3. System Overview

This project uses an OpenClaw / Hermes Agent style multi-agent workflow. The workflow is designed as a controlled zero-paid-token mock execution, which is allowed by the assignment.

The workflow contains five agents:

| Agent | Main Responsibility |
|---|---|
| Planner Agent | Defines project goal, target audience, core message, scene structure, and task assignment. |
| Script Agent | Writes narration, subtitles, and scene-by-scene text. |
| Visual Agent | Creates storyboard, shot list, and asset requirements. |
| Reviewer Agent | Checks length, truthfulness, copyright, portrait rights, privacy, and assignment compliance. |
| Finalizer Agent | Integrates all outputs and prepares the final production checklist. |

## 4. Agent Design

Each agent has a clear role, input, output, and tool permission boundary. Agent definitions are stored in the `agents/` folder.

The agents are not allowed to access private accounts, use paid APIs, automatically post online, delete files, or use copyrighted assets without permission.

The project uses structured JSON handoff files in the `handoff/` folder to make the workflow traceable.

## 5. Workflow Execution

The workflow follows this order:

1. User requirement is given to the Planner Agent.
2. Planner Agent creates project brief and scene outline.
3. Script Agent writes narration and subtitles.
4. Visual Agent creates shot list and visual plan.
5. Reviewer Agent checks risks and assignment compliance.
6. Finalizer Agent integrates all outputs and creates the final checklist.

The execution trace is documented in:

`traces/execution_trace.md`

The structured handoff files are:

- `handoff/01_planner_output.json`
- `handoff/02_script_output.json`
- `handoff/03_visual_output.json`
- `handoff/04_reviewer_feedback.json`
- `handoff/05_finalizer_output.json`

## 6. Video Output

The final video will be exported as:

`outputs/final_video.mp4`

The video should be 55 to 65 seconds long and include subtitles or narration. The planned structure is:

| Time | Content |
|---|---|
| 0-5 sec | Opening hook about technology and future learning |
| 5-15 sec | Introduction to NUTN CSIE |
| 15-30 sec | Learning features: programming, AI, data, systems, networks, and practice |
| 30-45 sec | Student development: teamwork, projects, demos, and problem solving |
| 45-55 sec | Campus and learning atmosphere |
| 55-60 sec | Closing title and slogan |

A subtitle file is prepared in:

`outputs/subtitles.srt`

## 7. Evaluation and Baseline Comparison

A single-agent baseline is provided in:

`baseline/single_agent_baseline.md`

The baseline shows that a single prompt can generate a simple video plan, but it has weaker role separation, traceability, safety review, and revision flow.

Compared with the single-agent baseline, the multi-agent workflow provides:

| Item | Single-Agent Baseline | Multi-Agent Workflow |
|---|---|---|
| Role separation | Weak | Clear roles for planning, script, visual design, review, and finalization |
| Handoff | Not structured | JSON handoff files |
| Traceability | Low | Each major decision is linked to an agent output |
| Safety review | Easy to miss | Reviewer Agent checks risks |
| Assignment compliance | Less explicit | Execution trace and checklist are provided |

## 8. Cost and Safety

This project follows the zero-paid-token policy. It does not require paid LLM tokens, commercial AI video generation, personal API keys, or private account connections.

Safety rules:
- No API keys, tokens, or passwords are included.
- No private accounts are connected.
- No automatic public posting is used.
- All video materials should be self-made or openly licensed.
- Recognizable people should not appear unless consent is obtained.
- Unverified claims about ranking, employment rate, admission data, facilities, or official statistics are avoided.

## 9. Repository

The repository contains:

- `README.md`: project overview
- `agents/`: agent role definitions
- `handoff/`: structured JSON handoff files
- `traces/`: execution trace
- `baseline/`: single-agent baseline comparison
- `outputs/`: final video, subtitles, and asset sources
- `report/`: final report

The GitHub repository should be set to Public and the full repository URL should be submitted to Ecourse.

## 10. Reflection

This project shows that a multi-agent workflow is useful not only for generating content, but also for controlling the production process. By separating planning, scriptwriting, visual design, review, and finalization, the workflow becomes easier to check, revise, and reproduce.

The main limitation is that the current workflow uses mock/stub execution instead of fully autonomous agents. However, this approach is safer, requires no paid token, avoids private account risks, and still demonstrates the key ideas of controlled multi-agent collaboration.

## 11. OpenClaw Environment Evidence

OpenClaw CLI was installed and tested inside an Ubuntu VirtualBox virtual machine. The installation evidence is stored in the `traces/` folder:

- `traces/openclaw_version.txt`
- `traces/openclaw_help.txt`
- `traces/openclaw_status.txt`

This project uses OpenClaw as the required agent workflow platform. Because the assignment allows zero-paid-token completion, the multi-agent workflow is demonstrated through controlled mock/stub execution, structured JSON handoff files, and an execution trace.
