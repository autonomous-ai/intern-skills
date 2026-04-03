const handler = async (event: any) => {
  if (event.type !== "agent" || event.action !== "bootstrap") {
    return;
  }

  // Plugin "design" activated — skills loaded via openclaw.plugin.json
  // Skills: accessibility-review, design-critique, design-handoff, design-system, research-synthesis, user-research, ux-copy
};

export default handler;
