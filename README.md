## Project Title
NUTN CSIE 60-second Promotional Video

## Team Members
- Name: Pei-Jia Chung
- Student ID: S11259008
- Course: Multimedia Systems

## Project Summary
This project uses an OpenClaw / Hermes Agent style multi-agent workflow to plan, review, and prepare a 60-second short video for the Department of Computer Science and Information Engineering, National University of Tainan.

The final video topic is a department promotional video. The target audience includes high school students, new students, parents, and general viewers who want to understand the learning atmosphere of NUTN CSIE.

## Platform
- Required platform: OpenClaw or Hermes Agent
- Execution mode: zero-paid-token mock/stub multi-agent workflow
- Paid API usage: none
- Commercial AI video generation: none required

## Repository Structure

```text
Final_Project_Repo/
├── README.md
├── report/
│   └── Final_Report.pdf
├── agents/
│   ├── planner_agent.md
│   ├── script_agent.md
│   ├── visual_agent.md
│   ├── reviewer_agent.md
│   └── finalizer_agent.md
├── handoff/
│   ├── 01_planner_output.json
│   ├── 02_script_output.json
│   ├── 03_visual_output.json
│   ├── 04_reviewer_feedback.json
│   └── 05_finalizer_output.json
├── traces/
│   └── execution_trace.md
├── baseline/
│   └── single_agent_baseline.md
└── outputs/
    ├── final_video.mp4
    ├── subtitles.srt
    └── asset_sources.md

## Repository Structure
- agents/: agent role definitions
- handoff/: structured JSON handoff files
- traces/: execution trace
- baseline/: single-agent baseline comparison
- outputs/: final video, subtitles, and asset sources
- report/: final report PDF

## Agent Roles
- Planner Agent: plans the project goal, target audience, core message, and scene structure.
- Script Agent: writes narration and subtitles.
- Visual Agent: creates storyboard, shot list, and asset requirements.
- Reviewer Agent: checks length, copyright, privacy, portrait rights, and truthfulness.
- Finalizer Agent: integrates all outputs into the final production checklist.

## Zero-Paid-Token Declaration
This project can be completed without paid LLM tokens, personal API keys, commercial AI video generation tools, or private account connections.

The workflow is demonstrated using agent definitions, structured JSON handoff files, mock/stub execution trace, and manual/offline video editing.

## Final Video
The final video should be exported as:

outputs/final_video.mp4

Required length: 55-65 seconds.

## Safety Notes
- No API keys or passwords are included.
- No private accounts are connected.
- No automatic public posting is used.
- Video materials should be self-made or openly licensed.
- Recognizable people should not appear unless consent is obtained.

## Submission Checklist
- [ ] Agent files are included.
- [ ] Handoff JSON files are included.
- [ ] Execution trace is included.
- [ ] Single-agent baseline is included.
- [ ] Asset sources are included.
- [ ] Final video is exported.
- [ ] Final report PDF is included.
- [ ] GitHub repository is public.
- [ ] GitHub repository URL is submitted to Ecourse.

## OpenClaw Environment Evidence
OpenClaw CLI was installed and tested inside an Ubuntu VirtualBox virtual machine.

Evidence files:
- `traces/openclaw_version.txt`
- `traces/openclaw_help.txt`
- `traces/openclaw_status.txt`

The project uses OpenClaw as the required agent workflow platform and demonstrates the workflow through zero-paid-token mock/stub execution.
