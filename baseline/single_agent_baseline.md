# Single-Agent Baseline

## Purpose
This baseline shows what would happen if the whole 60-second video project were handled by only one agent or one prompt.

## Baseline Prompt
Create a 60-second promotional video plan for the Department of Computer Science and Information Engineering, National University of Tainan. Include the target audience, script, storyboard, materials, and final editing plan.

## Single-Agent Output Summary

### Target Audience
- High school students
- New students
- Parents

### Core Message
National University of Tainan CSIE helps students learn programming, computer science, teamwork, and practical project skills.

### Simple 60-Second Structure
| Time | Content |
|---|---|
| 0-5 sec | Opening hook about technology and future learning |
| 5-15 sec | Introduce NUTN CSIE |
| 15-30 sec | Show programming, AI, data, systems, and networks |
| 30-45 sec | Show teamwork, projects, discussion, and demos |
| 45-55 sec | Show campus learning atmosphere |
| 55-60 sec | Closing title and slogan |

### Draft Script
Technology is changing the world, and learning begins with one practical step. At National University of Tainan CSIE, students build foundations in programming, systems, and problem solving. Courses connect software, AI, data, networks, and hands-on practice. Through teamwork and projects, students learn to communicate and solve real problems. Study in Tainan, build your future. NUTN CSIE: learn steadily, create bravely.

### Visual Plan
Use campus footage, laptop keyboard shots, code editor screen recordings, classroom scenes, group discussion footage, and a closing title slide.

## Limitations of the Single-Agent Baseline
- It mixes planning, scripting, visual design, review, and finalization into one step.
- It does not clearly show responsibility boundaries.
- It does not provide structured handoff between roles.
- It has weaker traceability because decisions are not linked to specific agents.
- It may miss copyright, portrait-rights, privacy, or truthfulness checks.
- It does not clearly show revision flow.

## Multi-Agent Workflow Improvement

| Evaluation Item | Single-Agent Baseline | Multi-Agent Workflow |
|---|---|---|
| Role separation | Weak | Clear Planner, Script, Visual, Reviewer, and Finalizer roles |
| Handoff | Not structured | JSON handoff files are provided |
| Traceability | Low | Each major decision is linked to an agent output |
| Safety review | Easy to overlook | Reviewer Agent checks copyright, privacy, truthfulness, and length |
| Assignment compliance | Less explicit | Execution trace and checklist directly follow assignment requirements |
| Zero-paid-token feasibility | Possible but unclear | Explicitly documented as mock/stub workflow |
| Revision process | Not clear | Reviewer feedback is passed to Finalizer Agent |

## Conclusion
The single-agent baseline can quickly produce a simple video idea, but it is weaker for this assignment because it does not provide enough evidence of multi-agent collaboration. The multi-agent workflow is more suitable because it separates responsibilities, preserves structured handoff, improves review quality, and makes the process easier to evaluate and reproduce.
