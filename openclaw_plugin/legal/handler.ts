const handler = async (event: any) => {
  if (event.type !== "agent" || event.action !== "bootstrap") {
    return;
  }

  // Plugin "legal" activated — skills loaded via openclaw.plugin.json
  // Skills: brief, compliance-check, legal-response, legal-risk-assessment, meeting-briefing, review-contract, signature-request, triage-nda, vendor-check
};

export default handler;
