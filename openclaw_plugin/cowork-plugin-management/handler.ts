const handler = async (event: any) => {
  if (event.type !== "agent" || event.action !== "bootstrap") {
    return;
  }

  // Plugin "cowork-plugin-management" activated — skills loaded via openclaw.plugin.json
  // Skills: cowork-plugin-customizer, create-cowork-plugin
};

export default handler;
