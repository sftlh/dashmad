import { clerkMiddleware, createRouteMatcher } from "@clerk/nextjs/server";
import { routeAccessMap } from "./lib/page_settings";
import { NextResponse } from "next/server";

// const isProtectedRoute = createRouteMatcher(['/admin', '/teacher','/parent', '/student'])

const matchers = Object.keys(routeAccessMap).map((route) => ({
  matcher: createRouteMatcher([route]),
  allowedRoles: routeAccessMap[route],
}));

export default clerkMiddleware(async (auth, req) => {
  // if (isProtectedRoute(req)) {
  //   await auth.protect();
  // }

  const { sessionClaims } = await auth();

  const role = (sessionClaims?.metadata as { role?: string })?.role;

  for (const { matcher, allowedRoles } of matchers) {
    if (matcher(req) && !allowedRoles.includes(role!)) {
      switch (role) {
        case "ar_1":
        case "ar_2":
        case "ar_3":
        case "ar_4":
        case "ar_5":
        case "ar_6":
          return NextResponse.redirect(new URL(`/pengawasan`, req.url));
        case "admin":
          return NextResponse.redirect(new URL(`/admin`, req.url));
        case "oc":
          return NextResponse.redirect(new URL(`/oc`, req.url));
        case "kasipw1":
        case "kasipw2":
        case "kasipw3":
        case "kasipw4":
        case "kasipw5":
        case "kasipw6":
          return NextResponse.redirect(new URL("/kasipengawasan", req.url));
        default:
          break;
      }
    }
  }
});

export const config = {
  matcher: [
    // Skip Next.js internals and all static files, unless found in search params
    "/((?!_next|[^?]*\\.(?:html?|css|js(?!on)|jpe?g|webp|png|gif|svg|ttf|woff2?|ico|csv|docx?|xlsx?|zip|webmanifest)).*)",
    // Always run for API routes
    "/(api|trpc)(.*)",
  ],
};
