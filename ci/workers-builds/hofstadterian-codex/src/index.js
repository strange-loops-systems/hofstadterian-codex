// CI-only Worker: nothing to serve. Its builds are the product (see ../wrangler.jsonc).
export default {
  async fetch() {
    return new Response("loop-ci-hofstadterian-codex: CI-only Worker, no content", { status: 404 });
  },
};
