# Autonomous Intern Device - One-Page Architecture and Data Flow

## Purpose

This note documents the current deployment model for an Autonomous Intern device running OpenClaw, with focus on data residency, LLM boundaries, and operational controls.

## Architecture Scope

- **Execution node:** Single Autonomous Intern device (OpenClaw runtime).
- **Primary storage and processing:** On-device only.
- **External model access:** Device sends outbound requests to an LLM endpoint through a controlled proxy.
- **Default trust boundary:** Local device is the data boundary; external model receives message payloads only.

## High-Level Components

1. **OpenClaw Runtime (Device)**
   - Orchestrates skills and task execution.
   - Manages local context, state, and workflow policy.

2. **Skill Execution Layer (Device)**
   - Runs skills with scoped permissions.
   - Uses deny-by-default controls and explicit allowlists per workflow/tool.

3. **Local Data Layer (Device)**
   - Stores operational artifacts, state, and logs.
   - Protected by OS-level permissions and service-level access controls.

4. **Outbound Proxy Path**
   - Handles controlled outbound traffic from device to model service.
   - Supports endpoint restrictions and auditability.

5. **LLM Service (External)**
   - Receives prompt/response message payloads.
   - Does not receive raw device files by default.

## Data Flow (Default)

1. Task is initiated on the device.
2. OpenClaw composes model request from message context.
3. Device sends outbound request via proxy to LLM service.
4. LLM returns response message.
5. Response is applied by on-device runtime and persisted locally as needed.

## Data Residency and Transmission Rules

- **On-device by default:** operational data remains on the device.
- **Message-only model calls:** outbound LLM traffic contains message payloads (prompt/response text).
- **No raw file transfer by default:** local files are not forwarded automatically.
- **Exception model:** any workflow that sends extracted content must be explicitly configured and approved.

## Security and Access Controls

- **Skill isolation:** scoped permissions per skill/workflow.
- **Least privilege:** minimum required capability grants only.
- **Network restriction:** no broad inbound exposure required for normal operation; outbound can be allowlisted.
- **Secrets handling:** secrets are managed separately from application code.

## Reliability and Operations

- **Failure handling:** health checks, process supervision, restart policies, and operational logs.
- **Observability:** logs and alert hooks support incident triage.
- **Update model:** controlled, versioned updates with rollback to last known stable release.

## Practical Notes for Sensitive Workflows

- Enforce strict boundary profiles (restricted tools, restricted network, scoped credentials).
- Keep high-sensitivity workflows deny-by-default and auditable.
- Review and approve any non-default data egress behavior before enabling in production.
