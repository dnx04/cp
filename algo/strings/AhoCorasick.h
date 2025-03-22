struct aho_corasick {
  struct node {
    int suffix_link = -1, exit_link = -1, cnt = 0, nxt[26];
    node() { fill(nxt, nxt + 26, -1); }
  };
  vector<node> g = {node()};
  void insert_string(const string &s) {
    int p = 0;
    for (char c : s) {
      if (g[p].nxt[c - 'a'] == -1) {
        g[p].nxt[c - 'a'] = g.size();
        g.emplace_back();
      }
      p = g[p].nxt[c - 'a'];
    }
    g[p].cnt++;
  }
  void build_automaton() {
    for (deque<int> q = {0}; q.size(); q.pop_front()) {
      int v = q.front(), suffix_link = g[v].suffix_link;
      if (v)
        g[v].exit_link =
            g[suffix_link].cnt ? suffix_link : g[suffix_link].exit_link;
      for (int i = 0; i < 26; i++) {
        int &nxt = g[v].nxt[i], nxt_sf = v ? g[suffix_link].nxt[i] : 0;
        if (nxt == -1)
          nxt = nxt_sf;
        else {
          g[nxt].suffix_link = nxt_sf;
          q.push_back(nxt);
        }
      }
    }
  }
};