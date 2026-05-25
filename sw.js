const CACHE_NAME = 'gestao-sp-v' + Date.now();

self.addEventListener('install', e => {
  self.skipWaiting();
});

self.addEventListener('activate', e => {
  e.waitUntil(
    caches.keys().then(keys =>
      Promise.all(keys.map(key => caches.delete(key)))
    )
  );
  self.clients.claim();
});

// Network first — sempre busca versão mais recente, sem cache
self.addEventListener('fetch', e => {
  e.respondWith(
    fetch(e.request, { cache: 'no-store' })
      .catch(() => caches.match(e.request))
  );
});
