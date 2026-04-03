const handler = async (event: any) => {
  if (event.type !== "agent" || event.action !== "bootstrap") {
    return;
  }

  // Plugin "enterprise-search" activated — skills loaded via openclaw.plugin.json
  // Skills: digest, knowledge-synthesis, search, search-strategy, source-management
};

export default handler;
