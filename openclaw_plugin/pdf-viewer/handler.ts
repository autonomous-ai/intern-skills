const handler = async (event: any) => {
  if (event.type !== "agent" || event.action !== "bootstrap") {
    return;
  }

  // Plugin "pdf-viewer" activated — skills loaded via openclaw.plugin.json
  // Skills: view-pdf
};

export default handler;
