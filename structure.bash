patient-review-agents/
├── .env                          # ← NEVER commit this
├── .env.example                  # ← Template for developers
├── .gitignore
├── docker-compose.yml
├── Dockerfile
├── pyproject.toml               # or requirements.txt
├── README.md
├── config/
│   ├── __init__.py
│   ├── settings.py               # Loads .env + config logic
│   ├── logging_config.yaml
│   └── agents.yaml               # Agent roles, goals, backstories
├── prompts/
│   ├── content_generator/
│   │   ├── sms_template.txt
│   │   ├── call_script.txt
│   │   └── system_prompt.txt
│   ├── response_analyzer/
│   │   ├── classify_prompt.txt
│   │   └── escalation_prompt.txt
│   └── orchestrator/
│       └── planning_prompt.txt
├── agents/
│   ├── __init__.py
│   ├── base_agent.py             # Base class with tools, memory, reflection
│   ├── orchestrator.py
│   ├── data_retrieval.py
│   ├── eligibility_checker.py
│   ├── content_generator.py
│   ├── communication.py
│   ├── response_analyzer.py
│   ├── escalation.py
│   └── logger.py
├── tools/
│   ├── __init__.py
│   ├── ehr_tool.py               # FHIR/EHR API wrapper
│   ├── twilio_tool.py            # SMS & Voice calls
│   ├── google_review_tool.py     # Generate review link
│   ├── crm_tool.py               # Update patient status
│   └── compliance_tool.py        # Opt-out, consent checks
├── workflows/
│   ├── __init__.py
│   ├── review_outreach_crew.py   # CrewAI crew definition
│   └── graph_workflow.py         # Optional: LangGraph state machine
├── memory/
│   ├── vector_store/             # Pinecone/Weaviate index
│   └── conversation_logs/        # JSON logs per patient
├── tests/
│   ├── unit/
│   │   ├── test_eligibility.py
│   │   └── test_content_gen.py
│   ├── integration/
│   │   └── test_full_flow.py
│   └── fixtures/
│       └── sample_patient.json
├── scripts/
│   ├── run_outreach.py           # CLI entry: python -m scripts.run_outreach --patient-id 123
│   ├── schedule_daily.py         # Airflow/Cron trigger
│   └── debug_agent.py
├── utils/
│   ├── __init__.py
│   ├── security.py               # PII hashing, encryption
│   ├── validators.py
│   └── monitoring.py             # AgentOps, Prometheus export
├── main.py                       # FastAPI or CLI entrypoint
└── logs/
    └── app.log                   # Auto-created