import 'package:flutter/foundation.dart';

import '../models/user.dart';

class UserProvider with ChangeNotifier {
  final List<User> _users = [
    User(
        id: 0,
        name: 'John Doe',
        followers: '28k',
        posts: '365',
        following: '234',
        image: 'https://pbs.twimg.com/media/FCbz80GUYAgzKE3.jpg',
        country: 'France, Paris',
        bio:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
        images: [
          'https://imgs.search.brave.com/OHpiEzvfbdeHcU-tXBV1JoWmTCF9RO719qtx71bEzgI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9idXJz/dC5zaG9waWZ5Y2Ru/LmNvbS9waG90b3Mv/Y2F0LXBob3RvLWhk/LmpwZz93aWR0aD0x/MDAwJmZvcm1hdD1w/anBnJmV4aWY9MCZp/cHRjPTA',
          'https://imgs.search.brave.com/l4uG2PHI3zHZ1Ow5dvh3o7cdnxtr1BykIN-WJpcAkwk/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/NTQzMTAyMTItZTFk/OWYwZDRkOWJlP3E9/ODAmdz0xMDAwJmF1/dG89Zm9ybWF0JmZp/dD1jcm9wJml4bGli/PXJiLTQuMC4zJml4/aWQ9TTN3eE1qQTNm/REI4TUh4bGVIQnNi/M0psTFdabFpXUjhN/VGg4Zkh4bGJud3dm/SHg4Zkh3PQ.jpeg',
          'https://imgs.search.brave.com/_dG-XdDgxNw3YPK1iMr8TUVcv0q6IQk7wBEs9GuAelY/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9idXJz/dC5zaG9waWZ5Y2Ru/LmNvbS9waG90b3Mv/Y3V0ZS1jYXQtcGhv/dG8uanBnP3dpZHRo/PTEwMDAmZm9ybWF0/PXBqcGcmZXhpZj0w/JmlwdGM9MA'
        ],
        isFollowed: false),
    User(
        id: 1,
        name: 'Doe John',
        followers: '2k',
        posts: '3k',
        following: '4',
        image:
            'https://sun6-21.userapi.com/impg/RnvEflNmKO6qo4Xj9hYx0wTB0eM3GPZHtIfWXQ/bsgKoNPusCE.jpg?size=720x1080&quality=96&sign=ce5858601d96c486eb7d4bd7500aad7d&c_uniq_tag=VJjTt3BTxzMoedydjhJpgsIYwBMXj9pA90-c-BRXQZ4&type=album',
        country: 'USA, New York',
        bio:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
        images: [
          'https://imgs.search.brave.com/4sBPJXdqNQxlWIyJchOAfHh59z8E3ZrF7200sexooBc/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9j/dXRlLWtpdHRlbi1z/aXR0aW5nLWdyYXNz/LWxvb2tpbmctY2Ft/ZXJhLXdpdGgtY3Vy/aW9zaXR5LWdlbmVy/YXRlZC1ieS1hcnRp/ZmljaWFsLWludGVs/bGlnZW5jZV8yNTAz/MC02MzIxOS5qcGc_/c2l6ZT02MjYmZXh0/PWpwZw',
          'https://imgs.search.brave.com/aunqssaidbhqbpGftBpcHp8J5M2kR081XJvuN-u5sr0/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9zdDUu/ZGVwb3NpdHBob3Rv/cy5jb20vMzcxNDk0/NzAvNjQwODIvaS80/NTAvZGVwb3NpdHBo/b3Rvc182NDA4MjM2/MjQtc3RvY2stcGhv/dG8tZG9tZXN0aWMt/Y2F0LWxvb2tzLWNh/bWVyYS12aWV3Lmpw/Zw',
          'https://imgs.search.brave.com/m99S1-vhDEMkwV8o-Uxx5mXjZ-HY1I6m_XIrmIEfrws/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9idXJz/dC5zaG9waWZ5Y2Ru/LmNvbS9waG90b3Mv/Y2F0LWV5ZXMtcGhv/dG8uanBnP3dpZHRo/PTEwMDAmZm9ybWF0/PXBqcGcmZXhpZj0w/JmlwdGM9MA'
        ],
        isFollowed: false),
    User(
        id: 2,
        name: 'Donatello John',
        followers: '245k',
        posts: '32',
        following: '2343',
        image:
            'https://pp.userapi.com/c639118/v639118384/2f87f/Osk2yQLx7-o.jpg',
        country: 'Russia, Moscow',
        bio:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
        images: [
          'https://imgs.search.brave.com/5iCBtjrc2tiTJ-_K-ue8AfJIWV_MCOFRFWfOt4vG8WM/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9oaXBz/LmhlYXJzdGFwcHMu/Y29tL2htZy1wcm9k/L2ltYWdlcy9jdXRl/LWNhdC1waG90b3Mt/MTU5MzQ0MTAyMi5q/cGc_Y3JvcD0wLjY3/MHh3OjEuMDB4aDsw/LjE2N3h3LDAmcmVz/aXplPTY0MDoq',
          'https://imgs.search.brave.com/OUTOlllSZTkYpyOg9tIAq_mcDtH1op6cG-WpzJHBbnI/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNTk5/OTM3NTE3L3Bob3Rv/L3BvcnRyYWl0LW9m/LWNhdC5qcGc_cz02/MTJ4NjEyJnc9MCZr/PTIwJmM9U1NvY3dt/OVB1MlBJT1Y4dldJ/bktOczNLUVlLUWhH/aUtCdmI4QnBRZXRC/MD0'
        ],
        isFollowed: false),
  ];

  void toggleFollow(int id) {
    _users.where((element) => element.id == id).first.isFollowed =
        !_users.where((element) => element.id == id).first.isFollowed;
    notifyListeners();
  }

  bool userIsFollowed(int id) {
    return _users[id].isFollowed;
  }

  List<User> get users => [..._users];
}
