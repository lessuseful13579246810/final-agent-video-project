# Execution Trace

## Project
NUTN CSIE 60-second Promotional Video

## Platform
OpenClaw / Hermes Agent style multi-agent workflow with zero-paid-token mock execution.

This project uses a controlled mock/stub workflow because the assignment allows zero-paid-token completion. No paid API key, commercial LLM token, private account, or automatic external operation is required.

## Execution Mode
- Mode: Mock/stub agent execution
- Reason: To demonstrate a safe, reproducible, zero-paid-token multi-agent workflow
- External actions: None
- Paid API usage: None
- Private account access: None
- Automatic posting: None

## Agent Run Log

### Step 1: User Requirement
Input:
- Create a 60-second short video.
- Topic: National University of Tainan Department of Computer Science and Information Engineering promotional video.
- Target audience: high school students, new students, and parents.
- Must follow assignment requirements: at least 3 agents, structured handoff, execution trace, final MP4, baseline comparison, and zero-paid-token feasibility.

Output:
- User requirement passed to Planner Agent.

### Step 2: Planner Agent
Input:
- User requirement
- Assignment rules
- Zero-paid-token constraint
- Safety and copyright constraints

Action:
- Created the project brief.
- Defined target audience.
- Defined core message.
- Divided the 60-second video into 6 scenes.
- Assigned tasks to Script Agent, Visual Agent, Reviewer Agent, and Finalizer Agent.

Output:
- `handoff/01_planner_output.json`

Handoff:
- Planner Agent output was passed to Script Agent and Visual Agent.

### Step 3: Script Agent
Input:
- `handoff/01_planner_output.json`

Action:
- Wrote narration for each scene.
- Wrote subtitle draft.
- Checked that the script avoids unverified claims about ranking, employment rate, admission data, or facilities.

Output:
- `handoff/02_script_output.json`

Handoff:
- Script Agent output was passed to Visual Agent and Reviewer Agent.

### Step 4: Visual Agent
Input:
- `handoff/01_planner_output.json`
- `handoff/02_script_output.json`

Action:
- Created shot list.
- Planned visual materials for each scene.
- Added safety rules for copyright, privacy, and portrait rights.

Output:
- `handoff/03_visual_output.json`

Handoff:
- Visual Agent output was passed to Reviewer Agent.

### Step 5: Reviewer Agent
Input:
- `handoff/01_planner_output.json`
- `handoff/02_script_output.json`
- `handoff/03_visual_output.json`

Action:
- Checked assignment compliance.
- Checked 55-65 second video requirement.
- Checked minimum agent count.
- Checked structured handoff.
- Checked zero-paid-token feasibility.
- Listed risks related to portrait rights, copyrighted music, and unverified claims.

Output:
- `handoff/04_reviewer_feedback.json`

Handoff:
- Reviewer feedback was passed to Finalizer Agent.

### Step 6: Finalizer Agent
Input:
- `handoff/01_planner_output.json`
- `handoff/02_script_output.json`
- `handoff/03_visual_output.json`
- `handoff/04_reviewer_feedback.json`

Action:
- Integrated all agent outputs.
- Prepared final video production checklist.
- Confirmed remaining deliverables.

Output:
- `handoff/05_finalizer_output.json`

## Traceability Summary

| Video Decision | Source Agent | Evidence File |
|---|---|---|
| 60-second six-scene structure | Planner Agent | `handoff/01_planner_output.json` |
| Narration and subtitles | Script Agent | `handoff/02_script_output.json` |
| Shot list and visual plan | Visual Agent | `handoff/03_visual_output.json` |
| Safety and copyright review | Reviewer Agent | `handoff/04_reviewer_feedback.json` |
| Final checklist | Finalizer Agent | `handoff/05_finalizer_output.json` |

## Safety Notes
- No paid tokens were used.
- No private API keys were used.
- No private accounts were connected.
- No agent was allowed to post online, delete files, or access personal data.
- All video materials should be self-made or openly licensed.
- Recognizable people should not appear unless consent is obtained.

## Remaining Work
- Export final video as `outputs/final_video.mp4`.
- Add subtitle file as `outputs/subtitles.srt` if available.
- Complete `baseline/single_agent_baseline.md`.
- Complete `README.md`.
- Write final report PDF.
