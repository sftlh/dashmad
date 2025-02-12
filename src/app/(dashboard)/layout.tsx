/* eslint-disable react/no-children-prop */
import Menu from "@/components/Menu";

export default function DashboardLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <div>
      <Menu children={children} />
    </div>
  );
}
