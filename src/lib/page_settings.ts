export const ITEM_PER_PAGE = 10;

type RouteAccessMap = {
  [key: string]: string[];
};

export const routeAccessMap: RouteAccessMap = {
  "/createuser": ["admin", "oc"],
  "/createwp": ["admin", "oc"],
  "/admin(.*)": ["admin"],
  "/oc(.*)": ["oc"],
  "/pengawasan(.*)": ["ar_2", "ar_1", "ar_3", "ar_4", "ar_5","oc", "ar_6", "kasipw2",
    "kasipw1",
    "kasipw3",
    "kasipw4",
    "kasipw5",
    "kasipw6",
    "kasipkd"],
  "/kasipengawasan(.*)": [
    "kasipw1",
    "kasipw2",
    "kasipw3",
    "kasipw4",
    "kasipw5",
    "kasipw6",
  ],
  "/sendingdatakanwil": ["oc", "admin"],
  "/bedahwp": ["admin", "ar_2", "ar_1", "ar_3", "ar_4", "ar_5", "ar_6"],
  "/pembenahanwp": ["ar_1", "ar_2", "ar_3", "ar_4", "ar_5", "admin", "ar_6"],
  "/empowering": [
    "admin",
    "kasipw1",
    "kasipw2",
    "kasipw3",
    "kasipw4",
    "kasipw5",
    "kasipw6",
  ],
  "/uploadpembenahanwp": ["oc"],
};

