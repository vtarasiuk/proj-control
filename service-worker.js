/**
 * Welcome to your Workbox-powered service worker!
 *
 * You'll need to register this file in your web app and you should
 * disable HTTP caching for this file too.
 * See https://goo.gl/nhQhGp
 *
 * The rest of the code is auto-generated. Please don't update this file
 * directly; instead, make changes to your Workbox build configuration
 * and re-run your build process.
 * See https://goo.gl/2aRDsh
 */

importScripts("https://storage.googleapis.com/workbox-cdn/releases/4.3.1/workbox-sw.js");

self.addEventListener('message', (event) => {
  if (event.data && event.data.type === 'SKIP_WAITING') {
    self.skipWaiting();
  }
});

/**
 * The workboxSW.precacheAndRoute() method efficiently caches and responds to
 * requests for URLs in the manifest.
 * See https://goo.gl/S9QRab
 */
self.__precacheManifest = [
  {
    "url": "03-01.jpg",
    "revision": "61ccd31b9a99e4dc0b2115d7a181dc71"
  },
  {
    "url": "03-02.jpg",
    "revision": "0e42c83dcc174ebfdbb611ab0956fcd9"
  },
  {
    "url": "03-03.jpg",
    "revision": "dd23072447e0798b536bd162235d14c3"
  },
  {
    "url": "03-04.jpg",
    "revision": "661a64ee2776ef94b23ba82f7ee50969"
  },
  {
    "url": "03-05.jpg",
    "revision": "6f52dcb2ccb40af28a65a4b796eb918d"
  },
  {
    "url": "03-06.jpg",
    "revision": "2643698d9412e41a449c1edee719fb29"
  },
  {
    "url": "03-07.jpg",
    "revision": "c4a788f41d803f8b9bddb5adc0513be6"
  },
  {
    "url": "03-08.jpg",
    "revision": "4c810503ec4bc1adfd29904056fc2886"
  },
  {
    "url": "03-09.jpg",
    "revision": "9c798bc91f80f84b6b0e7f7fba26d65b"
  },
  {
    "url": "03-10.jpg",
    "revision": "bb5b18b65591e9d058edbc14b02c6ba5"
  },
  {
    "url": "03-11.jpg",
    "revision": "6a88d8f48c63e79c72ec45ae84a8d9ff"
  },
  {
    "url": "04-01.jpg",
    "revision": "4bbafd5dd4000461cef55f669139b17b"
  },
  {
    "url": "05-01.jpg",
    "revision": "8d54b111a4b6b5fb4cd39e4c7261b927"
  },
  {
    "url": "06-01.jpg",
    "revision": "cf2dab320c48c5ead6fe105863629e4e"
  },
  {
    "url": "06-02.jpg",
    "revision": "aa286f8fd6540b7a7b6d36392a63f505"
  },
  {
    "url": "06-03.jpg",
    "revision": "239fa5fb2a9063f1e261ae2db81fceef"
  },
  {
    "url": "06-04.jpg",
    "revision": "a2dbf924afd6a8580ce4a2d2bcd6e049"
  },
  {
    "url": "06-05.jpg",
    "revision": "22f4f542b283cdc3d027eb664424d3c8"
  },
  {
    "url": "06-06.jpg",
    "revision": "12017ddd5b9179e8f53e93044acee998"
  },
  {
    "url": "06-07.jpg",
    "revision": "1ded65fc56da9f0008ae4ef2eacc8175"
  },
  {
    "url": "1.jpg",
    "revision": "f1ea37a492254cc85dd6fd1e89b1a6b4"
  },
  {
    "url": "1.png",
    "revision": "d41d8cd98f00b204e9800998ecf8427e"
  },
  {
    "url": "12-01.jpg",
    "revision": "cc85570b3c89f73291af87791115986a"
  },
  {
    "url": "12-02.jpg",
    "revision": "f2b24c5c4beb21d5302c64b59445927a"
  },
  {
    "url": "12-03.jpg",
    "revision": "61fe98dff39d0887978deb0af605571b"
  },
  {
    "url": "12-04.jpg",
    "revision": "ff2468e7fbb03e034be0ffd7312dc7d9"
  },
  {
    "url": "12-05.jpg",
    "revision": "a126fe17514d81279c677666fd459d9d"
  },
  {
    "url": "12-06.jpg",
    "revision": "c25686b2f77ac7c5a2d4706f43e40132"
  },
  {
    "url": "12-07.jpg",
    "revision": "de17f3eb1df503250bcf1a5a4b533eec"
  },
  {
    "url": "12-08.jpg",
    "revision": "f3b58c768c18919a6fa2ab59ea6627db"
  },
  {
    "url": "13-01.jpg",
    "revision": "b22f06060909d43d796a8ffd4b0743a0"
  },
  {
    "url": "13-02.jpg",
    "revision": "2d2bca0518716a8dfaf37ef5c15e54ee"
  },
  {
    "url": "13-03.jpg",
    "revision": "fec1a3db903dc05c462fb6f384a400d6"
  },
  {
    "url": "2.jpg",
    "revision": "572bc2e4ef3efb7c81bbbcac5f09147b"
  },
  {
    "url": "3.jpg",
    "revision": "248757985bb49f73624c6923057530ac"
  },
  {
    "url": "4.jpg",
    "revision": "407c52446e2e463c4f8e494d52dbe485"
  },
  {
    "url": "404.html",
    "revision": "6aeadbc9e1c6b6e66d569ca8940abd52"
  },
  {
    "url": "5.jpg",
    "revision": "7e861769b640afa00fcc0ac4b72d9c52"
  },
  {
    "url": "assets/css/0.styles.53cf339a.css",
    "revision": "75e076e9081f5d1513f04279d7e34733"
  },
  {
    "url": "assets/img/eerd.15e90ae6.svg",
    "revision": "15e90ae6cfee069594b2e9488ead692e"
  },
  {
    "url": "assets/img/phase_dev.6361ae0f.png",
    "revision": "6361ae0f1d761577ef26ee2ac4de7341"
  },
  {
    "url": "assets/img/search.83621669.svg",
    "revision": "83621669651b9a3d4bf64d1a670ad856"
  },
  {
    "url": "assets/js/10.8fa35d7c.js",
    "revision": "7ab3a40f2a6a3ef790f326891c7fd164"
  },
  {
    "url": "assets/js/11.00b6eec7.js",
    "revision": "cd6fce83d58f50592245b8edb4991be6"
  },
  {
    "url": "assets/js/12.38e6cadf.js",
    "revision": "c35eaf9b2bfc0a6650fb350ee9c51619"
  },
  {
    "url": "assets/js/13.88ba9c30.js",
    "revision": "888a2c909c82c5ac1eb7a6d95d8c6be0"
  },
  {
    "url": "assets/js/14.9ed1f2fb.js",
    "revision": "5d99c140bf4ae3e7bfc970f25a63cede"
  },
  {
    "url": "assets/js/15.c5de118e.js",
    "revision": "b4e2693af3be42229f3888282ecdf7e3"
  },
  {
    "url": "assets/js/16.41994031.js",
    "revision": "3a9c7911b1dbfc3981c575baf07d2433"
  },
  {
    "url": "assets/js/17.775979ba.js",
    "revision": "df6c0b0dddb5f7f570dc06fd1f72e490"
  },
  {
    "url": "assets/js/18.6093b22e.js",
    "revision": "b08df6e8401b9ccaf9335cdbf8ea5ca7"
  },
  {
    "url": "assets/js/19.e3b5cb60.js",
    "revision": "e3fa4a82e1498b3a8d0a086ab728f7ed"
  },
  {
    "url": "assets/js/2.221f63fe.js",
    "revision": "71eff50c7dd6caec9f14ec1dc4af89d4"
  },
  {
    "url": "assets/js/20.649ffdfb.js",
    "revision": "1fe014dff70b4e991fb8ccc2436eb583"
  },
  {
    "url": "assets/js/21.83e44229.js",
    "revision": "c2b721fa825fd211740d4dfed808ee72"
  },
  {
    "url": "assets/js/22.e258c857.js",
    "revision": "46918592e653ac17e6e808f26741626a"
  },
  {
    "url": "assets/js/23.b7db0213.js",
    "revision": "a692be04c0201957205d76bd736b536b"
  },
  {
    "url": "assets/js/24.6b27255d.js",
    "revision": "3ff59752da999c86972cede5ccba6080"
  },
  {
    "url": "assets/js/26.b45d7eae.js",
    "revision": "66fe5783254d3e503f8ab31090cb0d9d"
  },
  {
    "url": "assets/js/3.08a5731f.js",
    "revision": "4ad32519736694a0f7ab90dd5e73cd1c"
  },
  {
    "url": "assets/js/4.7bbd6887.js",
    "revision": "a431de2146272f88397c03042033a0db"
  },
  {
    "url": "assets/js/5.96d88f57.js",
    "revision": "1d5b1033b5599b8c75996e3ca1f57260"
  },
  {
    "url": "assets/js/6.917264cd.js",
    "revision": "9c97c1f6a0c8f2d6e99c999551de6647"
  },
  {
    "url": "assets/js/7.b8411d08.js",
    "revision": "9d7161dc6b265813d3d10e8f612d359f"
  },
  {
    "url": "assets/js/8.323e13f3.js",
    "revision": "c7d28410acbd7554764dac10ea861a74"
  },
  {
    "url": "assets/js/9.6d73ecd3.js",
    "revision": "e5c2ac5dcd8c3022a731095ecd85a5b1"
  },
  {
    "url": "assets/js/app.5bc3a5fb.js",
    "revision": "0c9dd44c2c7e9ae8427140353d98bb19"
  },
  {
    "url": "conclusion/index.html",
    "revision": "5ba06f9e67a10bf7496fe584e75eafe0"
  },
  {
    "url": "design/index.html",
    "revision": "87ac33acb1bbf64d11ca72223e22ef52"
  },
  {
    "url": "index.html",
    "revision": "16f5b4c47eb67c2583af8cc33448250e"
  },
  {
    "url": "intro/index.html",
    "revision": "637d7d3792d009076d09afe2023f0852"
  },
  {
    "url": "license.html",
    "revision": "c6ae94487788630ac26fdec72cecb7f2"
  },
  {
    "url": "myAvatar.png",
    "revision": "b76db1e62eb8e7fca02a487eb3eac10c"
  },
  {
    "url": "requirements/index.html",
    "revision": "95f1289b33a231600077efde2bf4702b"
  },
  {
    "url": "requirements/stakeholders-needs.html",
    "revision": "5da445b9033bf6d5081ed10c0d078997"
  },
  {
    "url": "requirements/state-of-the-art.html",
    "revision": "49f22e96918fc87c4bd959070ee34369"
  },
  {
    "url": "software/index.html",
    "revision": "c11a95ce1a9f4e35f593495ca35564a0"
  },
  {
    "url": "test/index.html",
    "revision": "ec12ded7e50625237d116fb329a70fe0"
  },
  {
    "url": "use cases/index.html",
    "revision": "6268774a30459e2e68ad093c69fa1e12"
  }
].concat(self.__precacheManifest || []);
workbox.precaching.precacheAndRoute(self.__precacheManifest, {});
addEventListener('message', event => {
  const replyPort = event.ports[0]
  const message = event.data
  if (replyPort && message && message.type === 'skip-waiting') {
    event.waitUntil(
      self.skipWaiting().then(
        () => replyPort.postMessage({ error: null }),
        error => replyPort.postMessage({ error })
      )
    )
  }
})
