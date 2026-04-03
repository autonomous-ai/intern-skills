const handler = async (event: any) => {
  if (event.type !== "agent" || event.action !== "bootstrap") {
    return;
  }

  // Plugin "customer-support" activated — skills loaded via openclaw.plugin.json
  // Skills: customer-escalation, customer-research, draft-response, kb-article, ticket-triage
};

export default handler;
