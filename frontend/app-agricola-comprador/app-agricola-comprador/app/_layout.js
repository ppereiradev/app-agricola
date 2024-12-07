import "@/global.css";
import { Stack } from "expo-router";
import { GluestackUIProvider } from "@/components/ui/gluestack-ui-provider";

export default function RootLayout() {
    return (
        <GluestackUIProvider mode="system">
            <Stack>
                <Stack.Screen name="index" options={{ title: "Produtos" }} />
                <Stack.Screen name="product/[id]" options={{ title: "Detalhes" }} />
            </Stack>
        </GluestackUIProvider>
    );
}
