import "@/global.css";
import { Stack } from "expo-router";
import { GluestackUIProvider } from "@/components/ui/gluestack-ui-provider";

export default function RootLayout() {
    return (
        <GluestackUIProvider mode="system">
            <Stack />
        </GluestackUIProvider>
    );
}
